<%@page import="com._59miao.api.Constants"%>
<%@page import="com._59miao.api.Default59miaoClient"%>
<%@page import="com._59miao.api.ApiException"%>
<%@page import="com._59miao.api.response._59miaoShopcatsGetResponse"%>
<%@page import="com._59miao.api.request._59miaoShopcatsGetRequest"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>My JSP 'test.jsp' starting page</title>

<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name="expires" content="0">
<meta name="keywords" content="keyword1,keyword2,keyword3">
<meta name="description" content="This is my page">
<script type="text/javascript" src="${basePath }js/jquery-1.11.2.min.js"></script>
</head>

<body>
	<%
		String strShowApiDataSource = "";
		Default59miaoClient client = new Default59miaoClient(
				Constants.PRODUCT_CONTAINER_URL, "1018833",
				"c4d1bc6ec90acec1b7fb1688bda6e735", "json");
		String strRequestType = request.getParameter("sltType");
		if (strRequestType == null)
			strRequestType = "";
		_59miaoShopcatsGetRequest req = new _59miaoShopcatsGetRequest();
		req.setFields("cid,name,count,sort_order,status");

		try {
			_59miaoShopcatsGetResponse rsp = client.execute(req);
			strShowApiDataSource = rsp.getBody();
			pageContext.setAttribute("data", strShowApiDataSource);
		} catch (ApiException e) {
			e.printStackTrace();
		}
	%>

	${data}

	<button onclick="test()">提交</button>
	<script type="text/javascript">
   </script>
</body>
</html>
