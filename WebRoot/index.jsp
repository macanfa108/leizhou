<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.page import="com.wy.bean.DiscussBean" />
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="com.wy.bean.AnnounceBean"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>欢迎来到雷州网</title>

	</head>

	<body>

		<jsp:forward page='<%=path%>/jsps/index.jsp' />

	</body>

</html>