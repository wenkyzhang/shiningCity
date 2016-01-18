package com.shiningcity.action;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.shiningcity.dao.AreaDao;
import com.shiningcity.dao.MatchAreaDao;
import com.shiningcity.dao.MatchDao;
import com.shiningcity.dao.ModelDao;
import com.shiningcity.dao.VoteDao;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Model;
import com.shiningcity.entity.Pager;
import com.shiningcity.entity.UserInfo;
import com.shiningcity.entity.match.MatchArea;
import com.shiningcity.util.ConstantUtil;
import com.shiningcity.util.web.OutputUtil;
import com.shiningcity.weixin.constans.WeiXinConstans;
import com.shiningcity.weixin.utils.PushUtil;

@Controller
@RequestMapping("/model")
public class ModelAction {
	
	private static Logger logger = Logger.getLogger(ModelAction.class);
	
	@Autowired
	private ModelDao dao;
	
	@Autowired
	private MatchDao matchDao;
	
	@Autowired
	private VoteDao voteDao;
	
	@Autowired
	private AreaDao areaDao;
	
	@Autowired
	private MatchAreaDao maDao;
	
	/**
	 * 后台添加模特
	 * @param model
	 * @param curPage
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addModel.do")
	public String add(Model model, Long curPage,  Map<String,Object> map) throws Exception
	{

		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		Long id = null;
		if(model.getId() != null && model.getId() > 0)
		{
			model = dao.update(model);
			id = model.getId();
		}
		else
		{
			UserInfo user = (UserInfo) request.getSession().getAttribute("l_user");
			
			if(user == null)
			{
				return "/admin/login";
			}
			
			model.setCreateUser(user.getLogin());
			model.setCreateDate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
			model.setPopularity(0l);
			
			
			//提交时将temp下的临时文件拷贝到/upload/model下
			String photoRealPathDir = request.getSession().getServletContext().getRealPath(model.getPhoto());  
			File logoSaveFile = new File(photoRealPathDir);
			if(!logoSaveFile.exists())
			{
				photoRealPathDir = photoRealPathDir.replaceFirst("/temp/", "/model/");
				if(logoSaveFile.renameTo(new File(photoRealPathDir)))
				{
					model.setPhoto(model.getPhoto().replaceFirst("/temp/", "/model/"));
				}
			}
			
			dao.add(model);
			id = model.getId();
		}
		MatchArea ma = model.getArea();
		if(id > 0)
		{
			
			
			//pager.setCondition(model);
			Pager<Model> pager = new Pager<Model>(30);
			
			if(curPage == null || curPage < 1)
			{
				curPage = 1l;
			}
			
			pager.setCurPage(curPage.intValue());
			Match match = matchDao.find(model.getMatch().getId());
			
			model = new Model();
			model.setMatch(match);
			model.setArea(ma);
			pager.setCondition(model);
			
			pager = dao.findByPager(pager);
			
			
			String ageGroups = ConstantUtil.getAgeGroups();
			map.put("ageGroups", ageGroups);
			map.put("match", match);
			map.put("matchArea", ma);
			map.put("models", pager.getData());
			map.put("pager", pager);
			
			return "/admin/Model";
		}
		
		return "error";
	}
	/**
	 * 后台管理模特
	 * @param id
	 * @param curPage
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/editModel.do")
	public String edit(Long id, Long curPage,  Map<String,Object> map) throws Exception
	{
		logger.info(String.format("Match id is %d, curPage number is %d", id, curPage));
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		
		
		// 处理错误参数 
		if(curPage == null || curPage <= 1)
		{
			curPage = 1l;
		}
		
		Pager<Model> pager = new Pager<Model>(30);
		pager.setCurPage(curPage.intValue());
		
		Model model = new Model();
		Match match = matchDao.find(id);
		MatchArea ma = null;
		if(match != null)
		{
			model.setMatch(match);
			String areaId = request.getParameter("areaId");
			if(areaId == null)
			{
				if(match.getMatchArea()!= null && match.getMatchArea().size() != 0)
				{
					ma = match.getMatchArea().get(0);
					model.setArea(ma);
				}
			}
			else
			{
				try {
					Long aId = Long.parseLong(areaId);
					ma = maDao.find(aId);
					model.setArea(ma);
				} catch (Exception e) {
					if(match.getMatchArea()!= null && match.getMatchArea().size() != 0)
					{
						ma = match.getMatchArea().get(0);
						model.setArea(ma);
					}
				}
			}
			
			pager.setCondition(model);
			pager = dao.findByPager(pager);
			
			String ageGroups = ConstantUtil.getAgeGroups();
			map.put("ageGroups", ageGroups);
			map.put("match", match);
			map.put("matchArea", ma);
			map.put("models", pager.getData());
			map.put("pager", pager);
			
			return "/admin/Model";
		}

		return "error";
	}
	
	/**
	 * 手机端显示赛区列表 
	 * @param id
	 * @param curPage
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showModel.do")
	public String show(Long id,  Map<String,Object> map) throws Exception
	{
		logger.info(String.format("Match id is %d", id));
		
		Match match = matchDao.find(id);
		if(match != null)
		{
			map.put("match", match);
			map.put("appId", PushUtil.getValueByKey("serviceInfo.appId"));
			
			return "/arealist";
		}
		else
		{
			logger.error("No find match.");
		}

		return "error";
	}
	
	/**
	 * 手机端显示赛区下的模特列表（投票页面）
	 * @param id 赛事ID
	 * @param curPage 当前页
	 * @param area  赛区编号（赛事下的赛区，非赛区表）
	 * @param map 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showModelByArea.do")
	public String show(Long id, Long curPage, Long area, Map<String,Object> map) throws Exception
	{
		logger.info(String.format("Match id is %d, curPage number is %d, Area number is %d", id, curPage, area));
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		String openId = (String) request.getSession().getAttribute("openId");
		
		if(id == null || id < 1 || area == null || area < 1)
		{
			return "error";
		}
		
		logger.info("OpenId is " + openId);
		if(openId == null)
		{
			String attend = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=http%3A%2F%2FDOMAIN%2Fwx%2Foauth2.do%3Fid%3DMATCHID%26area%3DAREAID&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect";
			String appId = PushUtil.getValueByKey("serviceInfo.appId").toString();
			String domain = request.getServerName();
			int port = request.getServerPort();
			if(port != 80)
			{
				domain += ":" + port;
			}
			
			String attendURI = attend.replace("APPID", appId).replace("DOMAIN", domain).replace("MATCHID", id.toString()).replace("AREAID", area.toString());
			
			logger.info("OpenId is null. redirect to get OpenId page. url is " + attendURI);
			return "redirect:" + attendURI;
		}
		
		// 处理错误参数 
		if(curPage == null || curPage <= 1)
		{
			curPage = 1l;
		}
		
		if(area == null || area <= 1)
		{
			area = 1l;
		}
		
		logger.info("Start process get data of model.");
		Pager<Model> pager = new Pager<Model>(12);
		pager.setCurPage(curPage.intValue());
		
		Model model = new Model();
		Match match = matchDao.find(id);
		String type = "weixin";
		if(match != null)
		{
			model.setMatch(match);
			
			MatchArea areabean = maDao.find(area);
			model.setArea(areabean);
			
			pager.setCondition(model);
			pager = dao.findByPager(pager);
			
//			voteDao.hasVote(userId);
			
			map.put("userType", type);
			map.put("userType", type);
			map.put("match", match);
			map.put("models", pager.getData());
			map.put("pager", pager);
			map.put("matchArea", areabean);
			String ageGroups = ConstantUtil.getAgeGroups();
			map.put("ageGroups", ageGroups);
			
			return "/votelist";
		}
		else
		{
			logger.error("No find match.");
		}
		
		return "error";
	}
	
	/**
	 * 手机端 搜索模特
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/queryModel.do")
	public String show(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String matchId = request.getParameter("id");
		String modelName = request.getParameter("modelname");
		String maId = request.getParameter("maId");
		
		String openId = (String) request.getSession().getAttribute("openId");
		if(openId == null)
		{
			return "redirect:/model/checkModelByArea.do?" + request.getQueryString();
		}
		
		Model model = new Model();
		Match match = null;
		if(matchId != null && !StringUtils.isEmpty(matchId))
		{
			match = matchDao.find(Long.parseLong(matchId));
		}
		model.setMatch(match);
		
		MatchArea ma = null;
		if(maId != null && !StringUtils.isEmpty(maId))
		{
			ma = maDao.find(Long.parseLong(maId));
		}
		model.setArea(ma);
		
		if(modelName != null && !StringUtils.isEmpty(modelName))
		{
			model.setName("%" + modelName + "%");
		}
		
		Pager<Model> pager = new Pager<Model>(12);
		pager.setCurPage(1);
		
		pager.setCondition(model);
		pager = dao.findModel(pager, modelName);
		
		
		request.setAttribute("userType", request.getParameter("userType"));
		request.setAttribute("match", match);
		request.setAttribute("matchArea", ma);
		request.setAttribute("models", pager.getData());
		request.setAttribute("pager", pager);
		String ageGroups = ConstantUtil.getAgeGroups();
		request.setAttribute("ageGroups", ageGroups);
		
		return "/votelist";
		
		
	}
	/**
	 * 模特详情
	 * @param id
	 * @param map
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modelDetail.do")
	public String modelDetail(@RequestParam Long id, Map<String,Object> map,
			HttpServletRequest request) throws Exception
	{
		
		String userId = (String) request.getSession().getAttribute(WeiXinConstans.OPEN_ID);
		
		map.put(WeiXinConstans.OPEN_ID, userId);
		map.put("openID", request.getParameter("openID"));
		map.put("userType", request.getParameter("userType"));
		String ageGroups = ConstantUtil.getAgeGroups();
		map.put("ageGroups", ageGroups);
		
		Model model = dao.find(id);
		map.put("model", model);
		return "/modelDetail";
	}
	/**
	 * 上传模特照片
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/uploadImg.do")
	public void uploadImg(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		System.out.println("dsfsdfsdf");
		
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
        String name = System.currentTimeMillis()+suffix;  
        String fileName = photoRealPathDir + File.separator+name;      
        File file = new File(fileName);   
        
        try {  
            multipartFile.transferTo(file);
            OutputUtil.outPut(response, "success", "upload/temp/" + name);
        } catch (Exception e) {  
	        OutputUtil.errorOutPut(response, "系统异常");  
        }
	}
	/**
	 * 后台删除模特
	 * @param id
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/delete.do")
	public void delete(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception{  
	    try{  
	    	
	    	Model model = dao.delete(id);
	    	
	        OutputUtil.outPut(response, "success",  String.format("删除%s成功", model.getName()));
	    }catch (Exception e) {  
	        OutputUtil.errorOutPut(response, "系统异常");  
	    }  
	}
//	
//	/**
//	 * 导入模特
//	 * @param request
//	 * @param response
//	 * @throws Exception
//	 */
//	@RequestMapping("/admin/importxls.do")
//	public void importXls(HttpServletRequest request, HttpServletResponse response) throws Exception
//	{
//		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
//		
//		 /**页面控件的文件流**/      
//        MultipartFile multipartFile = multipartRequest.getFile("otherFile"); 
//        
//        multipartFile.getInputStream();
//        
//        String suffix = multipartFile.getOriginalFilename().substring    
//                (multipartFile.getOriginalFilename().lastIndexOf(".")); 
//        
//        multipartFile.transferTo(file);
//	}
	
	public static void main(String[] args) {
		try {
			System.out.println(URLEncoder.encode("http://abc/oauth2.do?id=1&area=1", "utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
