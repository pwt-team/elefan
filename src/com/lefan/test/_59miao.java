package com.lefan.test;

import com._59miao.api.ApiException;
import com._59miao.api.Constants;
import com._59miao.api.Default59miaoClient;
import com._59miao.api.request._59miaoShopcatsGetRequest;
import com._59miao.api.response._59miaoShopcatsGetResponse;

public class _59miao {
	
	public static void main(String[] args) {
		yztest();
	}
	
	public static void yztest(){
		
		String strShowApiDataSource = "";
		Default59miaoClient client = new Default59miaoClient(
				Constants.PRODUCT_CONTAINER_URL, "1018833",
				"c4d1bc6ec90acec1b7fb1688bda6e735", "json");
		//String strRequestType = request.getParameter("sltType");
		//if (strRequestType == null)
		//String	strRequestType = "json";
		_59miaoShopcatsGetRequest req = new _59miaoShopcatsGetRequest();
		req.setFields("cid,name,count,sort_order,status");

		try {
			_59miaoShopcatsGetResponse rsp = client.execute(req);
			strShowApiDataSource = rsp.getBody();
			System.out.println(strShowApiDataSource);
		} catch (ApiException e) {
			e.printStackTrace();
		}
		
	}
	

	
}
