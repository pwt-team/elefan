package com.lefan.web;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lefan.bean.WebNew;
import com.lefan.dao.WebNewDao;
import com.lefan.util.JsonResult;
import com.lefan.util.QQHtmlSource;

@Controller
public class WebNewController {
	
	@Autowired
	public WebNewDao newsDao;
	
	public static final String INTERNET_URL = "http://internet.baidu.com/";
	public static final String YULE_URL = "http://yule.baidu.com/";
	public static final String SHEHUI_URL = "http://shehui.news.baidu.com/";
	public static final String AUTO_URL = "http://auto.baidu.com/";
	
	
	
	/**
	 * @Description: 采集网站新闻信息
	 * @param @return   
	 * @return JsonResult  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年5月22日 上午1:39:09
	 */
	@RequestMapping("/news.jxp")
	@ResponseBody
	public JsonResult news(){
		JsonResult json = new JsonResult(true);
		String url = "http://tech.qq.com/";
		List<WebNew> list = QQHtmlSource.getWebElement(url);
		if(list != null && list.size() > 0){
			for (WebNew web : list) {
				WebNew wn = newsDao.findByNid(web.getNid());
				if(wn != null){
					continue;
				}
				WebNew webNew = new WebNew();
				webNew.setTitle(web.getTitle());
				webNew.setHref(web.getHref());
				webNew.setNid(web.getNid());
				webNew.setStatus(0);
				webNew.setType(web.getType());
				web = newsDao.create(web);
			}
			json.msg("保存成功!");
		}
		return json;
	}

	
	@RequestMapping("/list.jxp")
	@ResponseBody
	public JsonResult list(@RequestParam (required = false) Integer count){
		JsonResult json = new JsonResult(true);
		List<Map<String, String>> list = null;
		if(count == null || count ==0){
			count = 10;
		}
		List<WebNew> newList = newsDao.findNew(count);
		if(newList != null && newList.size() > 0){
			list = new ArrayList<Map<String, String>>();
			for (WebNew web : newList) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("title", web.getTitle());
				map.put("href", web.getHref());
				list.add(map);
			}
		}
		return json.put("newss", list);
	}
	
	@RequestMapping(name="/newtimer.jxp")
	public void timerManager(){
		TimerTask task = new TimerTask() {
			@Override
			public void run() {
				news();
			}
		};
		
        //设置执行时间
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH);
        int day = calendar.get(Calendar.DAY_OF_MONTH);//每天
        //定制每天的21:09:00执行，
        calendar.set(year, month, day, 1, 25, 00);
        Date date = calendar.getTime();
        Timer timer = new Timer();
        System.out.println(date);
        
        int period = 60 * 60 * 1000;
        //每天的date时刻执行task，每隔2秒重复执行
        timer.schedule(task, date, period);
        //每天的date时刻执行task, 仅执行一次
        //timer.schedule(task, date);
	}
	
	
}
