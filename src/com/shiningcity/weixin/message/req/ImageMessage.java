package com.shiningcity.weixin.message.req;

/**
 * 图片消息
 * 
 * @author klcheng
 * @date 2015-06-03
 */
public class ImageMessage extends BaseMessage
{
	// 图片链接
	private String PicUrl;

	public String getPicUrl()
	{
		return PicUrl;
	}

	public void setPicUrl(String picUrl)
	{
		PicUrl = picUrl;
	}
}
