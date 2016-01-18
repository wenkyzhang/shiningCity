package com.shiningcity.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shiningcity.dao.MentorGroupDao;
import com.shiningcity.dao.UserInfoDao;
import com.shiningcity.entity.MentorGroup;
import com.shiningcity.entity.UserInfo;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("")
public class MentorGroupAction {
	Logger logger = Logger.getLogger(MentorGroupAction.class);
	
	@Autowired
	private MentorGroupDao dao;
	
	@Autowired
	private UserInfoDao userDao;

	@RequestMapping("/queryTeachers.do")
	public String findAll(Map<String,Object> map) throws Exception
	{
		List<MentorGroup> all = dao.findAll();
		
		map.put("mentors", all);
		return "/admin/MentorGroup";
	}
	
	@RequestMapping("/queryTeacher.do")
	public String show(Long id, Map<String,Object> map) throws Exception
	{
		MentorGroup mentor = dao.find(id);
		
		UserInfo user = userDao.find(1l);
		map.put("l_user", user);
		
		map.put("mentor", mentor);
		return "/teacher";
	}
	
	@RequestMapping("/addTeacher.do")
	public String add(MentorGroup mentor, Map<String,Object> map) throws Exception
	{
		
		dao.add(mentor);
		
		map.put("mentor", mentor);
		return "redirect:/queryTeachers.do";
	}
	
	/**
	 * ===================================Ajax=====================================
	 */
	
	/**
	 * 获取所有导师
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryTeacherForAjax.do")
	public void showTeacherForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<MentorGroup> all = dao.findAll();
		
		OutputUtil.jsonOutPut(response, null, all);
	}
	
	/**
	 * 显示导师详情
	 * @param id
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryTeacherInfoForAjax.do")
	public void showForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		MentorGroup mentor = dao.find(id);
		
		if(mentor == null)
		{
			OutputUtil.errorOutPut(response, "未找到用户:" + id);
		}
		else
		{
			OutputUtil.jsonOutPut(response, JSONObject.fromObject(mentor));  
		}
	}
	
	@RequestMapping("/uploadImg.do")
	public void uploadImg(@RequestParam MultipartFile[] btnFile, @RequestParam int id, 
			HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(btnFile[0].getSize()>Integer.MAX_VALUE){//文件长度   
            OutputUtil.jsonArrOutPut(response, JSONArray.fromObject("上传文件过大！"));  
        }  
		try{
	        InputStream is = btnFile[0].getInputStream();//多文件也适用,我这里就一个文件  
	        //String fileName = request.getParameter("fileName");  
	        String guid = request.getParameter("guid");  
	        byte[] b = new byte[(int)btnFile[0].getSize()];  
	        int read = 0;  
	        int i = 0;  
	        while((read=is.read())!=-1){  
	            b[i] = (byte) read;  
	            i++;  
	        }  
	        is.close();  
	        OutputStream os = new FileOutputStream(new File("D://"+guid+"."+btnFile[0].getOriginalFilename()));//文件原名,如a.txt  
	        os.write(b);  
	        os.flush();  
	        os.close();  
	        OutputUtil.jsonOutPut(response, null);  
	    }catch (Exception e) {  
	        OutputUtil.errorOutPut(response, "系统异常");  
	    }  
	}
	
	@RequestMapping("/deleteImg.do")
	public void filedelete(HttpServletRequest request, HttpServletResponse response) throws Exception{  
	    try{  
	        String guid = request.getParameter("guid");  
	        String fileName = request.getParameter("fileName");  
	        File file = new File("D://"+guid+"."+fileName);  
	        boolean isDeleted = file.delete();  
	        if(!isDeleted){  
	            OutputUtil.errorOutPut(response, "文件删除失败");  
	        }  
	        OutputUtil.jsonArrOutPut(response, null);  
	    }catch (Exception e) {  
	        OutputUtil.errorOutPut(response, "系统异常");  
	    }  
	} 
}
