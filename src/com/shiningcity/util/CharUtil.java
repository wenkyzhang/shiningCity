package com.shiningcity.util;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;

public class CharUtil {

	public static void main(String[] args) {
		System.out.println(hanyuToPinyin("À®Âï"));
	}

	public static String hanyuToPinyin(String name){
		
		String pinyinName = "";
		
        char[] nameChar = name.toCharArray();
        HanyuPinyinOutputFormat defaultFormat = 
                                           new HanyuPinyinOutputFormat();
        defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        for (int i = 0; i < nameChar.length; i++) {
            if (nameChar[i] > 128) {
                try {
                    pinyinName += PinyinHelper.toHanyuPinyinStringArray
                                           (nameChar[i], defaultFormat)[0];
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } 
        }
        return pinyinName;
    }
}
