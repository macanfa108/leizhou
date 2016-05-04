<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
<jsp:directive.page import="com.wy.bean.NewsBean" />
<jsp:directive.page import="java.util.List" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>雷州文化后台管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<link href="style/bootstrap.css" rel="stylesheet">
<!-- Font awesome icon -->
<link rel="stylesheet" href="style/font-awesome.css">
<!-- Flex slider -->
<link rel="stylesheet" href="style/flexslider.css">
<!-- prettyPhoto -->
<link rel="stylesheet" href="style/prettyPhoto.css">
<!-- Main stylesheet -->
<link href="style/style.css" rel="stylesheet">

<!-- Bootstrap responsive -->
<link href="style/bootstrap-responsive.css" rel="stylesheet">


<link rel="shortcut icon" href="img/favicon/favicon.png">




<jsp:useBean id="pagination" class="com.wy.tool.MyPagination"
	scope="session"></jsp:useBean>
<jsp:useBean id="newsDao" class="com.wy.dao.NewsDao" scope="session"></jsp:useBean>

<jsp:useBean id="chinese" class="com.wy.tool.Chinese" scope="session"></jsp:useBean>

<%
	String str = (String) request.getParameter("Page");
	String s = (String) request.getParameter("newsName");
	s = chinese.toChinese(s);
	//String s=null;
	int Page = 1;
	List list = null;
	if (str == null) {
		list = newsDao.queryNews(s);
		int pagesize = 10; //指定每页显示的记录数
		list = pagination.getInitPage(list, Page, pagesize); //初始化分页信息
	} else {
		Page = pagination.getPage(str);
		list = pagination.getAppointPage(Page); //获取指定页的数据
	}
%>

<script type="text/javascript">
	function deleteForm(id) {
		if (confirm("确定要删除此新闻吗？")) {
			window.location.href = "NewsServlet?method=3&id=" + id;
		}
	}
</script>


<script type="text/javascript">
function topForm(id){
if(confirm("确定要置顶此公告信息吗？")){
	window.location.href="DiscussServlet?method=8&id="+id;
	window.location.href = "backstage_NewsSelect.jsp?id=" + id;
}
}
</script>


</head>

<body>
<% session.setAttribute("nId",(String) request.getParameter("id")); 
           String a=(String)session.getAttribute("nId");
          //Integer a=(Integer)session.getAttribute("aId");
          // System.out.println(a);
 %>

	<!--红色区域部分-->
	<!-- Navbar starts -->

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<li><a href="backstage_login.jsp">您好！&nbsp;&nbsp;admin</a></li>
						<%
						session.setAttribute("u","admin");
						%>
						<li><a href="index.jsp?u="+session.getAttribute("u") >首页</a>
					</ul>

				</div>
			</div>
		</div>
	</div>


	<!-- Sliding box ends -->

	<!-- Main content starts -->

	<div class="content">

		<!-- Sidebar starts -->
		<div class="sidebar">

			<!-- Logo -->
			<div class="logo">
				<a href="#"><img src="img/b-logo.png" alt="" /></a>
			</div>



			<div class="sidebar-dropdown">
				<a href="#">Navigation</a>
			</div>

			<div class="s-content">

				<ul id="nav">
					<!-- Main menu with font awesome icon -->
					<li class="has_sub"><a href="#" class="open br-red"><i
							class="icon-camera"></i> 新闻管理<span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>

						<ul>
							<li><a href="backstage_NewsAdd.jsp">新闻发布</a></li>
							<li><a href="backstage_NewsSelect.jsp">新闻列表</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-blue"><i
							class="icon-list-alt"></i> 精品管理 <span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_ThingAdd.jsp">精品发布</a></li>
							<li><a href="backstage_ThingSelect.jsp">精品列表</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-green"><i
							class="icon-envelope-alt"></i>公告管理 <span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_DiscussAdd.jsp">添加公告</a></li>
							<li><a href="backstage_DiscussSelect.jsp">公告列表</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-orange"><i
							class="icon-comments"></i> 话题管理<span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_AnnounceSelect.jsp">话题列表</a></li>
							<li><a href="backstage_AnnounceSelectWeishh.jsp">话题审核列表</a></li>
							<li><a href="backstage_RestoreSelect.jsp">评论列表</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-yellow"><i
							class="icon-user"></i> 安全管理 <span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_userSelect.jsp">用户列表</a></li>
							<li><a href="backstage_UserBeijinSelect.jsp">用户被禁列表</a></li>
							<li><a href="Backstage_updatePassword.jsp">修改密码</a></li>
						</ul></li>


				</ul>

			</div>



		</div>
		<!-- Sidebar ends -->

		<!-- Mainbar starts -->
		<div class="mainbar">

			<div class="box-body">
				<%-- 
  <%
if(pagination.getRecordSize()<=0){
	out.println("<p align=center><img src=images/icon.gif width=20 height=20>&nbsp;&nbsp;&nbsp;&nbsp;没有用户进行注册！</p>");
}else{
 out.println("<h5>&nbsp;&nbsp;&nbsp;&nbsp;<img src=images/icon.gif width=20 height=20>&nbsp;&nbsp;用户列表</h5>");
%>
--%>
				<div class="box-body">
					<form align="right" class="form-search s-widget" name="form1"
						method="post" action="backstage_NewsSelect.jsp"
						onSubmit="return userCheck()">
						<span style="width:100px;height:50px;bgcolor:yellow;float:left;"
							font-size:16pt><h1>新闻列表</h1></span>
						<div class="input-append">

							<input type="text" id="inputPassword" placeholder="请输入新闻标题"
								style="height:31px;width:200px" name="newsName">
							<button type="submit" class="btn btn-danger">查询</button>
						</div>
					</form>

					<!-- <table align="center" width="1054" border="1"  cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#00FFFF"> -->
					<table class="table table-hover table-responsive">
						<tr>
							<td width="200">新闻标题</td>
							<td width="200">新闻内容</td>
							<td width="200">发布时间</td>
							<td width="200">图片地址</td>
							<td width="200">阅读数</td>
							<td width="200">操作</td>
						</tr>
						<%
							for (int i = 0; i < list.size(); i++) {
								NewsBean discussForm = (NewsBean) list.get(i);
								String title = discussForm.getNewsTitle();
								String content = discussForm.getNewsContent();
								if (title.length() > 9) {
									title = content.substring(0, 9) + "...";

								}

								if (content.length() > 9) {
									content = content.substring(0, 9) + "...";

								}
						%>
						<tr>
							<td><%=title%></td>
							<td><%=content%></td>
							<td><%=discussForm.getNewsTime()%></td>
							<td><%=discussForm.getPhotoURL()%></td>
							<td><%=discussForm.getReadNum()%></td>
							<!--   
             <td><div align="center" bgcolor="#009393"><a href="javascript:deleteForm('<%=discussForm.getNewsId()%>')" title="可以查看相应的公告内容">置顶</a>&nbsp;&nbsp;<a href="javascript:deleteForm('<%=discussForm.getNewsId()%>')">删除</a></div></td>
           -->
							<td><a
							class='btn btn-info'
								href="javascript:topForm('<%=discussForm.getNewsId()%>')"
								title="可以查看相应的公告内容">置顶</a>&nbsp;&nbsp;<a
								class="btn btn-danger"
								href="javascript:deleteForm('<%=discussForm.getNewsId()%>')">删除</a></td>
						</tr>
						<%
							}
						%>


					</table>
					<!-- 显示分页导航栏 -->
					<br />
					<p align="center"><%=pagination.printCtrl(Page)%>
					</p>
					<br />



				</div>
			</div>
			<div class="copyrights">
				Collect from <a href="http://www.cssmoban.com/">Website
					Template</a>
			</div>






		</div>
	</div>


	<!-- Mainbar ends -->
	<div class="clearfix"></div>
	<!-- Foot starts -->


	<div class="row-fluid">
		<div class="span12">
			<hr class="visible-desktop">
			<div class="copy"}>
				<p align="center">
					版权归广东海洋大学信息管理与信息系统1121班&copy <a
						href="http://blog.csdn.net/sunshinegyan/" target="_blank"
						title="nieshuangyan">nieshuangyan</a>
				</p>
			</div>
		</div>
	</div>

	<!-- Foot ends -->



	<div class="clearfix"></div>

	<!-- Main content ends -->



	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/custom.js"></script>
	<!-- Main js file -->
</body>



</html>
