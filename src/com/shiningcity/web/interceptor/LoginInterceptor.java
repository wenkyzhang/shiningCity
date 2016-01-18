package com.shiningcity.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.shiningcity.util.ConstantUtil;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		// 不过滤的uri
		String[] notFilter = new String[] { "/images", "/js", "/css", "/fonts", "/upload", "/admin/assets", "/admin/login.jsp"};

		// 请求的uri
		String uri = request.getRequestURI();
		// 是否过滤
		boolean doFilter = true;
		for (String s : notFilter) {
			if (uri.indexOf(s) != -1) {
				// 如果uri中包含不过滤的uri，则不进行过滤
				doFilter = false;
				break;
			}
		}
		
		if (doFilter) {
			
			String viewName = modelAndView == null?"":modelAndView.getViewName();
			if(viewName.indexOf("/admin") > -1)
			{
				// 执行过滤
				// 从session中获取登录者实体
				Object obj = request.getSession().getAttribute(ConstantUtil.KEY_LOGIN_USER);
				if (null == obj) {
					boolean isAjaxRequest = isAjaxRequest(request);
					if (isAjaxRequest) {
						response.setCharacterEncoding("UTF-8");
						response.sendError(HttpStatus.UNAUTHORIZED.value(),
								"您已经太长时间没有操作,请刷新页面");
						return;
					}
					modelAndView.setViewName("/admin/login");
//					response.sendRedirect("/admin/login.jsp");
					return;
				} else {
					// 如果session中存在登录者实体，则继续
					super.postHandle(request, response, handler, modelAndView);
				}
			}
			else
			{
				super.postHandle(request, response, handler, modelAndView);
			}
			
		} else {
			// 如果不执行过滤，则继续
			super.postHandle(request, response, handler, modelAndView);
		}
	}

	/**
	 * 判断是否为Ajax请求 <功能详细描述>
	 * 
	 * @param request
	 * @return 是true, 否false
	 * @see [类、类#方法、类#成员]
	 */
	public static boolean isAjaxRequest(HttpServletRequest request) {
		String header = request.getHeader("X-Requested-With");
		if (header != null && "XMLHttpRequest".equals(header))
			return true;
		else
			return false;
	}
}
