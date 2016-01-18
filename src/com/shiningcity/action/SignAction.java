package com.shiningcity.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.shiningcity.dao.ChildModelDao;
import com.shiningcity.entity.ChildModel;
import com.shiningcity.entity.Match;

@Controller
@RequestMapping("/childModel")
public class SignAction {
	
	Logger logger = Logger.getLogger(SignAction.class);
	
	@Autowired
	private ChildModelDao dao;
	
	@RequestMapping("sign.do")
	public String sign(ChildModel child,Map<String,Object> map, HttpServletRequest request) throws Exception {
		
		String view = "/childModel/index";
		logger.debug("process sign. child is " + child);
		List<String> suffixs = new ArrayList<String>();
		suffixs.add(".png");
		suffixs.add(".jpg");
		suffixs.add(".bmp");
		
		MultipartFile file = child.getPhoto();
		
		
		//TODO ��̬��ȡ 
		if(child.getMatch() == null)
		{
			Match match = new Match();
			match.setId(1L);
			
			child.setMatch(match);
		}
		
		if(file == null)
		{
			view = "/childModel/sign";
			logger.error("sign failed.");
			map.put("message", "����ʧ��,�����ԣ�");
		}
		String fileName = file.getOriginalFilename();
		if(fileName == null || "".equals(fileName))
		{
			view = "/childModel/sign";
			logger.error("sign failed.");
			map.put("message", "����ʧ��,�����ԣ�");
		}
		else
		{
			
			int id = -1;
			boolean ret = false;
			String suffix = fileName.substring(fileName.lastIndexOf("."));
			if(suffixs.contains(suffix.toLowerCase()))
			{
				dao.add(child);
				id = child.getId();
				ret = id != -1;
				
				String path = request.getSession().getServletContext().getRealPath("upload/images");
				path = String.format("%s/%d%s",
						path, id, suffix);
				File f = new File(path);
				
				if(!f.getParentFile().exists())
				{
					f.getParentFile().mkdirs();
				}
				
				try {
					file.transferTo(f);
				} catch (IOException e) {
					//ERROR
					ret = false;
				}
				if(ret)
				{
					logger.debug("sign success.");
					map.put("message", "����ɹ�");
				}
				else
				{
					view = "/childModel/sign";
					logger.error("sign failed.");
					map.put("message", "����ʧ��,�����ԣ�");
				}
			}
			else
			{
				//ERROR
				logger.error(String.format("sign failed. Picture file extensions(%s) are not supported.", suffix));
				map.put("message", "ֻ֧��.jpg,.png,.bmp����ͼƬ��");
				view = "/childModel/sign";
				
			}
		}
		return view;
	}
	
	@RequestMapping("/signlist.do")
	public String findSign(Map<String,Object> map) throws Exception
	{
		List<ChildModel> all = dao.findAll();
		
		map.put("allData", all);
		return "/childModel/index";
	}
}
