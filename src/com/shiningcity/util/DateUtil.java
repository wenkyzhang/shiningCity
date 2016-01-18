package com.shiningcity.util;

import java.util.Calendar;

public class DateUtil {
	
	/**
	 * 获得据下一天0点的Date对象
	 * @return
	 */
	public static int toNextDay()
	{
		Calendar cur = Calendar.getInstance();
		
		int hour = cur.get(Calendar.HOUR_OF_DAY) * 60 * 60;
		int minute = cur.get(Calendar.MINUTE) * 60;
		int second = cur.get(Calendar.SECOND);
		
		return 24 * 60 * 60 - hour - minute - second;
	}
}
