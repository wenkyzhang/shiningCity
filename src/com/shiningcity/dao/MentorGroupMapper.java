package com.shiningcity.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.shiningcity.entity.MentorGroup;
import com.shiningcity.util.CharUtil;

public class MentorGroupMapper implements ResultSetExtractor<MentorGroup> {

	@Override
	public MentorGroup extractData(ResultSet arg0) throws SQLException,
			DataAccessException {
		
		MentorGroup mentor = setMentorGroup(arg0);
		return mentor;
	}

	public MentorGroup setMentorGroup(ResultSet arg0) throws SQLException {
		if(arg0 == null)
		{
			return null;
		}
		
		MentorGroup mentor = new MentorGroup();
		
		mentor.setId(arg0.getLong("id"));
		mentor.setName(arg0.getString("name"));
		mentor.setPhoto(arg0.getString("photo"));
		mentor.setTitle(arg0.getString("title"));
		mentor.setTags(arg0.getString("tags"));
		mentor.setIntroduction(arg0.getString("introduction"));
		
		String temp = arg0.getString("images");
		mentor.setImages(temp);
		if(temp == null)
		{
			mentor.setImageList(new ArrayList<String>());
		}
		else
		{
			mentor.setImageList(Arrays.asList(temp.split(";")));
		}
		
		mentor.setPinyin(CharUtil.hanyuToPinyin(mentor.getName()));
		mentor.setSort(arg0.getLong("sort"));
		mentor.setSummary(arg0.getString("summary"));
		return mentor;
	}

}
