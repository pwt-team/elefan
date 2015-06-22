package com.lefan.util;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class HtmlSource {

	private static String encoding;

	/**
	 * 
	 * 通过url返回网页源代码<BR>
	 * 方法名：getHtmlSoursceByUrl<BR>
	 * 创建人：laotou <BR>
	 * 时间：2014年10月31日-下午9:00:59 <BR>
	 * 
	 * @param url
	 * @param encoding
	 * @return String<BR>
	 * @exception <BR>
	 * @since 1.0.0
	 */
	public static String getHtmlSoursceByUrl(String url) {
		StringBuffer buffer = new StringBuffer();
		URLConnection uc = null;
		InputStreamReader isr = null;
		BufferedReader reader = null;
		try {
			/* 导import java.net.URL; */
			URL urlObj = new URL(url); // 建立网络连接
			uc = urlObj.openConnection();// 打开网络连接

			String charset = uc.getContentType();
			if (charset.indexOf("charset=") > -1) {
				encoding = charset.split("charset=")[1];
				System.out.println("charset:" + charset);
			} else {
				encoding = "gb2312";
			}
			// 获取网页是否被压缩
			String gzip = uc.getContentEncoding();
			System.out.println("gzip:" + gzip);

			/* import java.io.InputStreamReader */
			// 建立文件的写入流
			isr = new InputStreamReader(uc.getInputStream(), encoding);
			// 建立写入文件缓冲流
			reader = new BufferedReader(isr);

			// 按每一行的形式进行循环读取
			String temp = null;
			while ((temp = reader.readLine()) != null) {
				buffer.append(temp + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (reader != null)
					reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return buffer.toString(); // 强转为string
	}

	/**
	 * 
	 * 解析网页源代码，并采集指定元素内容<BR>
	 * 方法名：getWebElement<BR>
	 * 创建人：laotou <BR>
	 * 时间：2014年10月31日-下午9:01:37 <BR>
	 * 
	 * @param url
	 * @param encoding
	 * @return List<HashMap<String,Object>><BR>
	 * @exception <BR>
	 * @since 1.0.0
	 */
	public static List<Map<String, String>> getWebElement(String url) {
		List<Map<String, String>> list = null;
		String type = null;

		// 获取网页源代码
		String htmlSource = getHtmlSoursceByUrl(url);
		if(url.contains("internet")){
			type="互联网";
		}else if(url.contains("shehui")){
			type="社会";
		}else if(url.contains("yule")){
			type="娱乐";
		}else if(url.contains("auto")){
			type="汽车";
		}

		/* 导入import org.jsoup.Jsoup; */
		// 解析网页源代码
		Document document = Jsoup.parse(htmlSource);

		/* 导 import org.jsoup.nodes.Element; */
		// 获取网页指定元素的外层div元素
		Element element = document.getElementById("body"); // 赛事列表
		if (element == null) {
			return list;
		}
		// 获取list外层DIV元素
		/* 导import org.jsoup.select.Elements; */
		Elements elemens = document.getElementsByClass("item");
		list = new ArrayList<Map<String, String>>();
		// 创建集合来接收数据
		HashMap<String, String> map = null;
		if (elemens.size() == 0) {
			return list;
		}
		for (Element el : elemens) {
			Elements neles = el.getElementsByClass("title");	
			for (Element nele : neles) {
				map = new HashMap<String,String>();
				String title = nele.getElementsByTag("a").text();
				String href = nele.getElementsByTag("a").attr("href");
				map.put("href", href);
				map.put("title", title);
				map.put("type", type);
				list.add(map);
			}
			 System.out.println("=================================================================");
		}
		return list;
	}

	public static void getHtml2(String url2) {
		String html = getHtmlSoursceByUrl(url2);

		// 解析网页源代码
		Document document = null;
		try {
			document = Jsoup.parse(new String(html.getBytes("ISO-8859-1"), "gb2312"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		/* 导 import org.jsoup.nodes.Element; */
		// 获取网页指定元素的外层div元素

		Element elm = document.getElementById("table_cont"); // 赛事列表
		if (elm == null) {
			return;
		}
		Elements els = elm.getElementsByTag("tr");

		for (Element el : els) {
			
			System.out.println(el);

		}

	}

	public static void main(String[] args) {
		String url = "http://internet.baidu.com/";
		// List<HashMap<String, Object>> list = getPicElement(url, "utf-8");
		List<Map<String, String>> list = getWebElement(url);
		System.out.println(list);
		// if(list != null && list.size() >0){
		// for(HashMap<String, Object> map : list){
		// System.out.println(map.get("pdate"));
		// System.out.println(map.get("zid"));
		// System.out.println(map.get("game_num"));
		// System.out.println(map.get("end_time"));
		// System.out.println(map.get("match_time"));
		// System.out.println(map.get("left_team"));
		// // }
		// }

	}

	/**
	 * 
	 * 获取网页图片<BR>
	 * 方法名：getPicElement<BR>
	 * 创建人：laotou <BR>
	 * 时间：2014年11月1日-下午11:25:24 <BR>
	 * 
	 * @param url
	 * @param encoding
	 * @return List<HashMap<String,Object>><BR>
	 * @exception <BR>
	 * @since 1.0.0
	 */

	@SuppressWarnings("unused")
	public static List<HashMap<String, Object>> getPicElement(String url,
			String encoding) {
		List<HashMap<String, Object>> picList = new ArrayList<HashMap<String, Object>>();

		// 获取网页源代码
		String htmlSource = getHtmlSoursceByUrl(url);

		/* 导入import org.jsoup.Jsoup; */
		// 解析网页源代码
		Document document = Jsoup.parse(htmlSource);

		/* 导 import org.jsoup.nodes.Element; */
		Elements elemens1 = document.getElementsByClass("list_pic");

		// 获取list外层DIV元素
		/* 导import org.jsoup.select.Elements; */
		Elements elemens2 = document.getElementsByClass("img");
		System.out.println(elemens2);
		// 创建集合来接收数据
		HashMap<String, Object> map = null;
		for (Element el : elemens2) {
			map = new HashMap<String, Object>();
			// 获取图片地址
			String imgSrc = el.getElementsByTag("img").attr("src");
			String imgWid = el.getElementsByTag("img").attr("width");
			String imgHei = el.getElementsByTag("img").attr("height");
			// 获取链接地址
			String hrefAdd = el.getElementsByTag("a").attr("href");
			// 获取标题
			String title = el.getElementsByTag("img").attr("alt");
			map.put("hrefAdd", hrefAdd);
			map.put("imgSrc", imgSrc);
			map.put("title", title);
			map.put("imgWid", imgWid);
			map.put("imgHei", imgHei);
			picList.add(map);
		}
		return picList;
	}

	/**
	 * 解GZIP
	 * 
	 * @param data
	 * @return
	 */
	public static byte[] unGZip(byte[] data) {
		byte[] b = null;
		try {
			ByteArrayInputStream bis = new ByteArrayInputStream(data);
			GZIPInputStream gzip = new GZIPInputStream(bis);
			byte[] buf = new byte[1024];
			int num = -1;
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			while ((num = gzip.read(buf, 0, buf.length)) != -1) {
				baos.write(buf, 0, num);
			}
			b = baos.toByteArray();
			baos.flush();
			baos.close();
			gzip.close();
			bis.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}

}
