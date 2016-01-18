package com.shiningcity.weixin.message.req;

/**
 * 文本消息
 * 
 * @author klcheng
 * @date 2015-06-03
 */
public class TextMessage extends BaseMessage
{
	// 消息内容
	private String Content;

	public String getContent()
	{
		return Content;
	}

	public void setContent(String content)
	{
		Content = content;
	}
}