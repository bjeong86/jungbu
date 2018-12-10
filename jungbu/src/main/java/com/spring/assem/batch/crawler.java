package com.spring.assem.batch;

import java.io.IOException;
import java.io.Serializable;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@Component()
public class crawler {

	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
//	 private static String dburl = "jdbc:mysql://108.160.134.123:3306/swjch?useSSL=false&characterEncoding=euckr"; // dev
//	 private static String id = "swj";
//	 private static String pw = "1q2w3e4r";
	private static String dburl = "jdbc:mysql://localhost:3306/swjch?characterEncoding=euckr"; // 운영
	private static String id = "swjch";
	private static String pw = "sjch0191!!";

	@Scheduled(cron = "0 0 0/1 * * *")
	public static void main() throws IOException, ParseException {
		// public static void main(String[] args) throws IOException, ParseException {
		System.out.println("::::::::: http://moimnews.or.kr crawler Start :::::::::");
		int crawlerSeq = 0;
		List<MoimNewsVO> list = getInfoFromMoimNews(6);

		for (MoimNewsVO movo : list) {
			if (crawlerSeq++ < 2)
				continue;

			if (!isExist(movo))
				insert(movo);
		}
		System.out.println("::::::::: http://moimnews.or.kr crawler End :::::::::");
	}

	static List<MoimNewsVO> getInfoFromMoimNews(int maxCount) throws IOException, ParseException {
		String sUrl = "http://moimnews.or.kr/wp/sermon/?mod=list&pageid=1";
		Document doc = Jsoup.connect(sUrl).get();

		List<MoimNewsVO> list = new ArrayList<MoimNewsVO>();
		for (int i = 0; i < maxCount; i++)
			list.add(new MoimNewsVO("", "", "", "", 0));

		int count = 0;
		for (Element e : doc.select("div.kboard-default-cut-strings")) {
			// System.out.println(e.text().toString());
			list.get(count).setTitle(e.text());

			if (++count > (maxCount - 1))
				break;
		}

		count = 0;
		for (Element e : doc.select("div.kboard-mobile-contents span.kboard-date")) {
			if ("|".equals(e.text()))
				continue;
			list.get(count).setRegdate(e.text());

			if (++count > (maxCount - 1))
				break;
		}

		count = 0;
		for (Element e : doc.select("td.kboard-list-title a")) {
			String sTargetUrl = null;
			sTargetUrl = "http://moimnews.or.kr" + e.attr("href");

			Document targetDoc = Jsoup.connect(sTargetUrl).get();
			String sContents = targetDoc.select("div.content-view").toString().replaceAll("'", "");
			list.get(count).setContents(sContents);
			list.get(count).setContentsHashCode(sContents.hashCode());
			list.get(count).setUrl(sTargetUrl);

			if (++count > (maxCount - 1))
				break;
		}
		return list;
	}

	static void insert(MoimNewsVO mnvo) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(dburl, id, pw);
			stmt = (Statement) con.createStatement();

			String sql = "INSERT INTO " + "MOIM_NEWS(TITLE, CONTENTS, REGDATE, URL, CONTENTS_HASHCODE, CREATE_DATE)" + "VALUES('" + mnvo.getTitle()
					+ "','" + mnvo.getContents() + "','" + mnvo.getRegdate() + "','" + mnvo.getUrl() + "','" + mnvo.getContentsHashCode() + "',"
					+ "now());";

			stmt.executeUpdate(sql);

			stmt.close();
			con.close();
		} catch (

		ClassNotFoundException cnfe) {
			System.out.println("com.mysql.jdbc.Driver를 찾을 수 없습니다.");
		} catch (SQLException sql) {
			System.out.println(sql.toString());
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

	static boolean isExist(MoimNewsVO mnvo) {
		boolean flag = false;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(dburl, id, pw);
			stmt = (Statement) con.createStatement();

			String sql = "select * from MOIM_NEWS where contents_hashcode = \"" + mnvo.getContentsHashCode() + "\"";
			rs = stmt.executeQuery(sql);
			if (rs.next())
				return true;
			rs.close();
		} catch (

		ClassNotFoundException cnfe) {
			System.out.println("com.mysql.jdbc.Driver를 찾을 수 없습니다.");
		} catch (SQLException sql) {
			System.out.println(sql.toString());
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return flag;
	}
}

class MoimNewsVO {
	String title;
	String contents;
	String regdate;
	String url;
	int contentsHashCode;

	MoimNewsVO(String title, String contents, String regdate, String url, int contentsHashCode) {
		this.title = title;
		this.contents = contents;
		this.regdate = regdate;
		this.url = url;
		this.contentsHashCode = contentsHashCode;
	}

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

	public int getContentsHashCode() {
		return contentsHashCode;
	}

	public void setContentsHashCode(int contentsHashCode) {
		this.contentsHashCode = contentsHashCode;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
