package com.shiningcity.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.shiningcity.dao.InformationDao;
import com.shiningcity.dao.MatchDao;
import com.shiningcity.entity.Information;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Pager;
import com.shiningcity.entity.UserInfo;
import com.shiningcity.util.web.OutputUtil;

@Controller
public class InformationAction {
	
	private Logger logger = Logger.getLogger(InformationAction.class);
	
	@Autowired
	private InformationDao dao;
	
	@Autowired
	private MatchDao mDao;
	
	@RequestMapping("/admin/queryInfor.do")
	public String query(Long id, int type, int curPage, Map<String, Object> map) throws Exception
	{
		logger.info("Query information for match id is " + id);
		
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		UserInfo user = (UserInfo) request.getSession().getAttribute("l_user");
		if(user ==null)
		{
			logger.error("No login, to login.jsp");
			return "/admin/login";
		}
		
		if(id == null)
		{
			return "error";
		}
		
		return queryData(id, type, curPage, map);
	}
	
	/**
	 * 查询数据 
	 * @param id
	 * @param type
	 * @param curPage
	 * @param map
	 * @return
	 * @throws Exception
	 */
	private String queryData(Long id, int type, int curPage,
			Map<String, Object> map) throws Exception {
		Match match = mDao.find(id);
		
		if(match == null)
		{
			return "error";
		}
		
		Pager<Information> pager = new Pager<Information>(10);
		pager.setCurPage(curPage);
		Information info = new Information();
		info.setMatch(match);
		info.setType(type);
		
		pager.setCondition(info);
		pager = dao.findByPager(pager);
		
		map.put("infoes", pager.getData());
		map.put("match", match);
		map.put("pager", pager);
		map.put("type", type);
		
		return "/admin/Informations";
	}
	
	@RequestMapping("/admin/addInfor.do")
	public String addInfo(Information infor, int curPage, Map<String, Object> map) throws Exception
	{
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		UserInfo user = (UserInfo) request.getSession().getAttribute("l_user");
		if(user ==null)
		{
			logger.error("No login, to login.jsp");
			return "/admin/login";
		}
		
		if(infor.getId() != null)
		{
			dao.update(infor);
		}
		else
		{
			
			infor.setAddUser(user.getLogin());
			infor.setAddDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			dao.add(infor);
		}
		
		return queryData(infor.getMatch().getId(), infor.getType(), curPage, map);
	}
	
	@RequestMapping("/admin/deleteInfor.do")
	public String deleteInfo(Long id, Long matchId, int type, int curPage, Map<String, Object> map) throws Exception
	{
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		UserInfo user = (UserInfo) request.getSession().getAttribute("l_user");
		if(user ==null)
		{
			logger.error("No login, to login.jsp");
			return "/admin/login";
		}
		
		logger.info("Query information for match id is " + id);
		
		if(id != null && id.intValue() > 0)
		{
			dao.delete(id);
		}
		else
		{
			return "error";
		}
		
		return queryData(matchId, type, curPage, map);
	}
	
	@RequestMapping("/queryInfors.do")
	public String queryInfors(Long id, int type, int curPage, Map<String, Object> map) throws Exception
	{
		logger.info("Query information for match id is " + id);
		
		if(id == null)
		{
			return "error";
		}
		
		Match match = mDao.find(id);
		
		if(match == null)
		{
			return "error";
		}
		
		Pager<Information> pager = new Pager<Information>(10);
		pager.setCurPage(curPage);
		Information info = new Information();
		info.setMatch(match);
		info.setType(type);
		
		pager.setCondition(info);
		pager = dao.findByPager(pager);
		
		map.put("infoes", pager.getData());
		map.put("match", match);
		map.put("pager", pager);
		map.put("type", type);
		
		return "/weixin/information";
	}
	
	
	
	@RequestMapping("/queryInforPage.do")
	public void queryAjax(Long id, int type, int curPage, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		logger.info("Query information for match id is " + id);
		logger.info("Query information for type is " + type);
		if(id == null)
		{
			OutputUtil.errorOutPut(response, "参数错误！");
			return;
		}
		
		Match match = mDao.find(id);
		
		if(match == null)
		{
			OutputUtil.errorOutPut(response, "赛事参数错误");
			return;
		}
		
		if(curPage <= 1)
		{
			curPage = 1;
		}
		
		Pager<Information> pager = new Pager<Information>(10);
		pager.setCurPage(curPage);
		Information info = new Information();
		info.setMatch(match);
		info.setType(type);
		
		pager.setCondition(info);
		pager = dao.findByPager(pager);
		
		OutputUtil.jsonOutPut(response, null, pager.getData());
	}
	
	@RequestMapping("/query/queryInfor.do")
	public void queryAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		logger.info("Query information for id is " + id);
		if(id == null)
		{
			OutputUtil.errorOutPut(response, "参数错误！");
			return;
		}
		Information infor = dao.find(id);
		
		OutputUtil.jsonOutPut(response, null, infor);
	}
	
	/**
	 * 上传模特照片
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/uploadImg.do")
	public void uploadImg(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		System.out.println("start upload image.");
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		String photoRealPathDir = request.getSession().getServletContext().getRealPath("upload/temp/");  
		File logoSaveFile = new File(photoRealPathDir);       
        if(!logoSaveFile.exists()){
        	logoSaveFile.mkdirs();             
        }
         /**页面控件的文件流**/      
        MultipartFile multipartFile = multipartRequest.getFile("otherFile"); 
        
        if(multipartFile.getSize() >Integer.MAX_VALUE){//文件长度   
            OutputUtil.jsonArrOutPut(response, JSONArray.fromObject("上传文件过大！"));  
        }
        
        String suffix = multipartFile.getOriginalFilename().substring    
                (multipartFile.getOriginalFilename().lastIndexOf("."));
        
        /**拼成完整的文件保存路径加文件**/      
        String name = "news_" +System.currentTimeMillis()+suffix;  
        String fileName = photoRealPathDir + File.separator + name;
        File file = new File(fileName);   
        
        try {  
            multipartFile.transferTo(file);
            OutputUtil.outPut(response, "success", "upload/temp/" + name);
        } catch (Exception e) {  
	        OutputUtil.errorOutPut(response, "系统异常");  
        }
	}
}
