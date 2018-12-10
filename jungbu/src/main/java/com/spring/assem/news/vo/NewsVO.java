package com.spring.assem.news.vo;

import java.io.Serializable;

public class NewsVO implements Serializable {
	private static final long serialVersionUID = 1L;

	String title;
	String contents;
	String regdate;
	String url;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
