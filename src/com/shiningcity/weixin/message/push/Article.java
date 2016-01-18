package com.shiningcity.weixin.message.push;


/**
 * 图文消息素材数据类
 * 用于上传图文素材，用于微信自动推送
 * @author klcheng
 *
 */
public class Article {
	/**
	 * 图文消息缩略图的media_id，可以在基础支持-上传多媒体文件接口中获得
	 */
	private String thumb_media_id;
	
	/**
	 * 图文消息的作者
	 */
	private String author;
	
	/**
	 * 图文消息的标题
	 */
	private String title;
	
	/**
	 * 在图文消息页面点击“阅读原文”后的页面	
	 */
	private String content_source_url;
	
	/**
	 * 图文消息页面的内容，支持HTML标签
	 */
	private String content;
	
	/**
	 * 图文消息的描述
	 */
	private String digest;
	
	/**
	 * 是否显示封面，1为显示，0为不显示
	 */
	private int show_cover_pic;

	
	
	

	public String getThumb_media_id() {
		return thumb_media_id;
	}

	public void setThumb_media_id(String thumb_media_id) {
		this.thumb_media_id = thumb_media_id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent_source_url() {
		return content_source_url;
	}

	public void setContent_source_url(String content_source_url) {
		this.content_source_url = content_source_url;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDigest() {
		return digest;
	}

	public void setDigest(String digest) {
		this.digest = digest;
	}

	public int getShow_cover_pic() {
		return show_cover_pic;
	}

	public void setShow_cover_pic(int show_cover_pic) {
		this.show_cover_pic = show_cover_pic;
	}
	

	
}
