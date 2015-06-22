<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	application.setAttribute("basePath", basePath);
%>
<link rel="stylesheet" type="text/css" href="${basePath}css/default.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/animate.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/iconfont.css">
<script type="text/javascript" src="${basePath}js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="${basePath}js/util.js"></script>
<link rel="shortcut icon" href="${basePath}images/favicon.ico"/>
<script type="text/javascript">var basePath = "${basePath}";</script>


