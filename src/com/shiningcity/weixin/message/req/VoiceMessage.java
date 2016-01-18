package com.shiningcity.weixin.message.req;

/**
 * 音频消息
 * 
 * @author klcheng
 * @date 2015-06-03
 */
public class VoiceMessage extends BaseMessage
{
	// 媒体ID
	private String MediaId;
	// 语音格式
	private String Format;

	public String getMediaId()
	{
		return MediaId;
	}

	public void setMediaId(String mediaId)
	{
		MediaId = mediaId;
	}

	public String getFormat()
	{
		return Format;
	}

	public void setFormat(String format)
	{
		Format = format;
	}
}
