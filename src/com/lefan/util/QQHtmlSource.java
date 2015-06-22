package com.lefan.util;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.lefan.bean.WebNew;

public class QQHtmlSource {

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

			String headers = uc.getHeaderField(3);
			String charset = headers.split("charset=")[1];
			System.out.println(charset);
			if (!charset.equals("")) {
				encoding = charset;
				System.out.println("charset:" + charset);
			} else {
				encoding = "utf-8";
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
	public static List<WebNew> getWebElement(String url) {
		List<WebNew> list = null;
		// 获取网页源代码
		String htmlSource = getHtmlSoursceByUrl(url);
		/* 导入import org.jsoup.Jsoup; */
		// 解析网页源代码
		Document document = Jsoup.parse(htmlSource);

		/* 导 import org.jsoup.nodes.Element; */
		// 获取网页指定元素的外层div元素
		Element element = document.getElementById("listZone"); // 
		if (element == null) {
			return list;
		}
		// 获取list外层DIV元素
		/* 导import org.jsoup.select.Elements; */
		Elements elemens = document.getElementsByClass("Q-tpList");
		list = new ArrayList<WebNew>();
		// 创建集合来接收数据
		if (elemens.size() == 0) {
			return list;
		}
		for (Element el : elemens) {
			Elements h3s = el.getElementsByTag("h3");
			for (Element h3 : h3s) {
				WebNew webNew = new WebNew();
				String href = h3.getElementsByTag("a").attr("href");
				String title = h3.getElementsByTag("a").attr("title");
				String fixed = "http://tech.qq.com/a/";
				String nid = href.replace(fixed, "").replace(".htm","").replace("/", ""); 
				webNew.setHref(href);
				webNew.setTitle(title);
				webNew.setStatus(0);
				webNew.setNid(Long.valueOf(nid));
				webNew.setType(1);
				list.add(webNew);
			}
			System.out.println(list);
			 System.out.println("=================================================================");
		}
		return list;
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
