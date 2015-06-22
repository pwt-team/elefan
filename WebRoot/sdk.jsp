<%@page import="com._59miao.api.response._59miaoCouponItemGetResponse"%>
<%@page import="com._59miao.api.request._59miaoCouponItemGetRequest"%>
<%@page import="com._59miao.api.response._59miaoCouponGetResponse"%>
<%@page import="com._59miao.api.request._59miaoCouponGetRequest"%>
<%@page import="com._59miao.api.response._59miaoOrdersReportGetResponse"%>
<%@page import="com._59miao.api.request._59miaoOrdersReportGetRequest"%>
<%@page import="com._59miao.api.response._59miaoCouponListGetResponse"%>
<%@page import="com._59miao.api.request._59miaoCouponListGetRequest"%>
<%@page import="com._59miao.api.response._59miaoPictorialsGetResponse"%>
<%@page import="com._59miao.api.request._59miaoPictorialsGetRequest"%>
<%@page import="com._59miao.api.response._59miaoPictorialsListGetResponse"%>
<%@page import="com._59miao.api.request._59miaoPictorialsListGetRequest"%>
<%@page import="com._59miao.api.response._59miaoPromosGetResponse"%>
<%@page import="com._59miao.api.request._59miaoPromosGetRequest"%>
<%@page import="com._59miao.api.response._59miaoPromosListGetResponse"%>
<%@page import="com._59miao.api.request._59miaoPromosListGetRequest"%>
<%@page import="com._59miao.api.response._59miaoPromocatsGetResponse"%>
<%@page import="com._59miao.api.request._59miaoPromocatsGetRequest"%>
<%@page import="com._59miao.api.response._59miaoADSGetResponse"%>
<%@page import="com._59miao.api.request._59miaoADSGetRequest"%>
<%@page import="com._59miao.api.response._59miaoShopsGetResponse"%>
<%@page import="com._59miao.api.request._59miaoShopsGetRequest"%>
<%@page import="com._59miao.api.response._59miaoShopsListGetResponse"%>
<%@page import="com._59miao.api.request._59miaoShopsListGetRequest"%>
<%@page import="com._59miao.api.response._59miaoShopcatsGetResponse"%>
<%@page import="com._59miao.api.request._59miaoShopcatsGetRequest"%>
<%@page import="com._59miao.api.response._59miaoItemcatsGetResponse"%>
<%@page import="com._59miao.api.request._59miaoItemcatsGetRequest"%>
<%@page import="com._59miao.api.response._59miaoItemsGetResponse"%>
<%@page import="com._59miao.api.request._59miaoItemsGetRequest"%>
<%@page import="com._59miao.api.response._59miaoItemsSearchResponse"%>
<%@page import="com._59miao.api.request._59miaoItemsSearchRequest"%>
<%@page import="com._59miao.api.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>

		<title>My JSP 'index.jsp' starting page</title>
		<meta name="pragma" content="no-cache">
		<meta name="cache-control" content="no-cache">
		<meta name="expires" content="0">
		<meta name="keywords" content="keyword1,keyword2,keyword3">
		<meta name="description" content="This is my page">
	</head>

	<%
	
		String strShowApiDataSource = "";
		Default59miaoClient client = new Default59miaoClient(
				Constants.PRODUCT_CONTAINER_URL, "1018833",
				"c4d1bc6ec90acec1b7fb1688bda6e735", "xml");
		String strRequestType = request.getParameter("sltType");
		if (strRequestType == null)
			strRequestType = "";

		if (strRequestType != null) {
			//商品类
			if (strRequestType.equals("59miao.items.search")) {
				_59miaoItemsSearchRequest req = new _59miaoItemsSearchRequest();
				req.setFields("iid,click_url,seller_url,title,sid,seller_name,cid,desc,pic_url,price,cash_ondelivery,freeshipment,installment,has_invoice,modified,price_reduction,price_decreases,original_price");
				req.setKeyword("女装");

				try {
					_59miaoItemsSearchResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}

			} else if (strRequestType.equals("59miao.items.get")) {
				_59miaoItemsGetRequest req = new _59miaoItemsGetRequest();
				req.setFields("iid,click_url,seller_url,title,sid,seller_name,cid,desc,pic_url,price,cash_ondelivery,freeshipment,installment,has_invoice,modified,price_reduction,price_decreases,original_price");
				req.setIids("31710424");
				try {
					_59miaoItemsGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.itemcats.get")) {
				_59miaoItemcatsGetRequest req = new _59miaoItemcatsGetRequest();
				req.setFields("cid,sid,parent_cid,name,is_parent,status");
				req.setParentCid((long) 0);
				try {
					_59miaoItemcatsGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			}
			//商家类
			else if (strRequestType.equals("59miao.shopcats.get")) {

				_59miaoShopcatsGetRequest req = new _59miaoShopcatsGetRequest();
				req.setFields("cid,name,count,status");
				req.setCid((long) 19);
				try {
					_59miaoShopcatsGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.shops.list.get")) {

				_59miaoShopsListGetRequest req = new _59miaoShopsListGetRequest();
				req.setFields("sid,name,desc,shop_cat,logo,created,modified,click_url,cashback,payment,shipment,shipment_fee,cash_ondelivery,freeshipment,installment,has_invoice,status,istaobao,popular");

				try {
					_59miaoShopsListGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.shops.get")) {

				_59miaoShopsGetRequest req = new _59miaoShopsGetRequest();
				req.setFields("sid,name,desc,shop_cat,logo,created,modified,click_url,cashback,payment,shipment,shipment_fee,cash_ondelivery,freeshipment,installment,has_invoice,status,istaobao,popular");
				req.setSids("1001");
				try {
					_59miaoShopsGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.ads.get")) {
				_59miaoADSGetRequest req = new _59miaoADSGetRequest();
				req.setFields("click_url,pic_size,pic_url,ad_id,sid,title");
				req.setPicSize("300x250");
				req.setSids("1001,1002,1006,1052,1087,1078");
				try {
					_59miaoADSGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			}
			//促销类
			else if (strRequestType.equals("59miao.promocats.get")) {
				_59miaoPromocatsGetRequest req = new _59miaoPromocatsGetRequest();
				req.setFields("cid,parent_cid,name");
				req.setParentCid((long) 0);
				try {
					_59miaoPromocatsGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.promos.list.get")) {
				_59miaoPromosListGetRequest req = new _59miaoPromosListGetRequest();
				req.setFields("pid,title,click_url,start_time,end_time,content,sid,seller_name,seller_url");
				req.setCids("9,32");
				try {
					_59miaoPromosListGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.promos.get")) {
				_59miaoPromosGetRequest req = new _59miaoPromosGetRequest();
				req.setFields("pid,title,click_url,start_time,end_time,content,sid,seller_name,seller_url");
				req.setPids("4882");
				try {
					_59miaoPromosGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			}
			//画报类
			else if (strRequestType.equals("59miao.pictorials.list.get")) {
				_59miaoPictorialsListGetRequest req = new _59miaoPictorialsListGetRequest();
				req.setFields("pictorial_id,title,content,desc,pic_url");
				try {
					_59miaoPictorialsListGetResponse rsp = client
							.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.pictorials.get")) {
				_59miaoPictorialsGetRequest req = new _59miaoPictorialsGetRequest();
				req.setFields("title,content,desc,pic_url,pictorial_id");
				req.setPictorialIds("25,24,23");
				try {
					_59miaoPictorialsGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			}
			//优惠卷
			else if (strRequestType.equals("59miao.coupon.list.get")) {
				_59miaoCouponListGetRequest req = new _59miaoCouponListGetRequest();
				req.setFields("sid,title,pid,click_url,seller_url,seller_name,start_time,end_time,seller_logo,pic_url_1,pic_url_2,pic_url_3");
				req.setSids("1001,1052,1087");
				try {
					_59miaoCouponListGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.coupon.get")) {
				_59miaoCouponGetRequest req = new _59miaoCouponGetRequest();
				req.setFields("coupon_id,title,sid,seller_name,seller_logo ,seller_url,click_url,start_time,end_time,desc,item_count,limit,reduce");
				req.setCouponId((long) 30);
				try {
					_59miaoCouponGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			} else if (strRequestType.equals("59miao.coupon.item.get")) {
				_59miaoCouponItemGetRequest req = new _59miaoCouponItemGetRequest();
				req.setFields("coupon_key,coupon_value");
				req.setCouponId((long) 11);
				try {
					_59miaoCouponItemGetResponse rsp = client.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			}

			//功能类
			else if (strRequestType.equals("59miao.orders.report.get")) {
				_59miaoOrdersReportGetRequest req = new _59miaoOrdersReportGetRequest();
				req.setFields("user_id,seller_id,seller_name,order_id,app_key,order_amount,commission,created,ip,order_code,status,outer_code");
				req.setTimestamp((long) 20120922);
				try {
					_59miaoOrdersReportGetResponse rsp = client
							.execute(req);
					strShowApiDataSource = rsp.getBody();
				} catch (ApiException e) {
					e.printStackTrace();
				}
			}
		}
	%>

	<body>
		<form action="index.jsp" method="get">
			<label></label>
			<p>
				<textarea cols="100%" rows="20"><%=strShowApiDataSource%></textarea>
			</p>
			<p>
				<select id="sltType" name="sltType">
					<optgroup label="商家类">
						<option value="59miao.shopcats.get"
							<%if (strRequestType.equals("59miao.shopcats.get")) {%>
							selected='selected' <%}%>>
							59miao.shopcats.get
						</option>
						<option value="59miao.shops.list.get"
							<%if (strRequestType.equals("59miao.shops.list.get")) {%>
							selected='selected' <%}%>>
							59miao.shops.list.get
						</option>
						<option value="59miao.shops.get"
							<%if (strRequestType.equals("59miao.shops.get")) {%>
							selected='selected' <%}%>>
							59miao.shops.get
						</option>
						<option value="59miao.ads.get"
							<%if (strRequestType.equals("59miao.ads.get")) {%>
							selected='selected' <%}%>>
							59miao.ads.get
						</option>
					</optgroup>
					<optgroup label="商品类">
						<option value="59miao.itemcats.get"
							<%if (strRequestType.equals("59miao.itemcats.get")) {%>
							selected='selected' <%}%>>
							59miao.itemcats.get
						</option>
						<option value="59miao.items.search"
							<%if (strRequestType.equals("59miao.items.search")) {%>
							selected='selected' <%}%>>
							59miao.items.search
						</option>
						<option value="59miao.items.get"
							<%if (strRequestType.equals("59miao.items.get")) {%>
							selected='selected' <%}%>>
							59miao.items.get
						</option>
					</optgroup>
					<optgroup label="促销类">
						<option value="59miao.promocats.get"
							<%if (strRequestType.equals("59miao.promocats.get")) {%>
							selected='selected' <%}%>>
							59miao.promocats.get
						</option>
						<option value="59miao.promos.list.get"
							<%if (strRequestType.equals("59miao.promos.list.get")) {%>
							selected='selected' <%}%>>
							59miao.promos.list.get
						</option>
						<option value="59miao.promos.get"
							<%if (strRequestType.equals("59miao.promos.get")) {%>
							selected='selected' <%}%>>
							59miao.promos.get
						</option>
					</optgroup>
					<optgroup label="画报类">
						<option value="59miao.pictorials.list.get"
							<%if (strRequestType.equals("59miao.pictorials.list.get")) {%>
							selected='selected' <%}%>>
							59miao.pictorials.list.get
						</option>
						<option value="59miao.pictorials.get"
							<%if (strRequestType.equals("59miao.pictorials.get")) {%>
							selected='selected' <%}%>>
							59miao.pictorials.get
						</option>
					</optgroup>
					<optgroup label="优惠卷">
						<option value="59miao.coupon.list.get"
							<%if (strRequestType.equals("59miao.coupon.list.get")) {%>
							selected='selected' <%}%>>
							59miao.coupon.list.get
						</option>
						<option value="59miao.coupon.get"
							<%if (strRequestType.equals("59miao.coupon.get")) {%>
							selected='selected' <%}%>>
							59miao.coupon.get
						</option>
						<option value="59miao.coupon.item.get"
							<%if (strRequestType.equals("59miao.coupon.item.get")) {%>
							selected='selected' <%}%>>
							59miao.coupon.item.get
						</option>
					</optgroup>
					<optgroup label="功能类">
						<option value="59miao.orders.report.get"
							<%if (strRequestType.equals("59miao.orders.report.get")) {%>
							selected='selected' <%}%>>
							59miao.orders.report.get
						</option>
					</optgroup>
				</select>
				<input type="submit" value="获取" />
			</p>
		</form>
	</body>
</html>
