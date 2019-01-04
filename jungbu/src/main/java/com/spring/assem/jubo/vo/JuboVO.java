package com.spring.assem.jubo.vo;

import java.io.Serializable;

public class JuboVO implements Serializable {
	private static final long serialVersionUID = 1L;

	String id;
	String realFileName;
	String genSaveFileName;
	String year;
	String month;
	String day;
	String page;
	String url;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRealFileName() {
		return realFileName;
	}

	public void setRealFileName(String realFileName) {
		this.realFileName = realFileName;
	}

	public String getGenSaveFileName() {
		return genSaveFileName;
	}

	public void setGenSaveFileName(String genSaveFileName) {
		this.genSaveFileName = genSaveFileName;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
