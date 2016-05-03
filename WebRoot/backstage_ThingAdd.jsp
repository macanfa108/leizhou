<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
<jsp:directive.page import="com.wy.bean.TypeBean" />
<jsp:directive.page import="java.util.List" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>�����Ļ���̨����-��Ʒ����</title>
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

<style type="text/css">
.upload {
	background: #fff;
	width: 346px;
	height: 50px;
	border-radius: 3px !important;
	padding: 5px 5px 0px 7px;
	position: relative;
	top: 60%;
	left: 5%;
	font-size: 16px;
	color: #666;
}

.upload a {
	display: inline-block;
	width: 40px;
	height: 42px;
	border: 1px solid #ccc;
	border-radius: 6px 0 0 6px;
	background: url("img/icon.png") no-repeat center center;
	float: left;
	padding-left: 5px;
}

.upload a:hover {
	background-color: #ccc;
}

.upload input#fileName {
	width: 300px;
	height: 44px;
	line-height: 44px;
	border: 1px solid #ccc;
	border-radius: 0 6px 6px 0;
	border-left: none;
	/* font-family: "�����Ȥζ.ttf"; */
	color: #ccc;
	font-size: 20px !important;
	padding-left: 5px;
	margin-left: -2px;
	position: absolute;
	top: 0px;
	left: 49px;
}

.upload a input#photoURL {
	width: 40px;
	height: 40px;
	opacity: 0;
	cursor: pointer;
}

.myform input,textarea {
	font-family: "Mirsoft Yahei";
	border-radius: 3px !important;
	color: #666 !important;
	font-size: 20px !important;
	resize: none;
}
</style>




</head>
<jsp:useBean id="countTime" scope="page" class="com.wy.tool.CountTime"></jsp:useBean>
<jsp:useBean id="RestoreDao" scope="page" class="com.wy.dao.RestoreDao"></jsp:useBean>
<jsp:useBean id="chinese" class="com.wy.tool.Chinese" scope="session"></jsp:useBean>

<%
	List list = RestoreDao.queryType();
	if (list.size() == 0) {
		out.print("<script language=javascript>alert('��Ʒ���ͻ�û����ӣ�����ӣ�');window.location.href='backstage_ThingAdd.jsp';</script>");
	}
%>
<body>


	<!--��ɫ���򲿷�-->
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
						<li><a href="backstage_login.jsp">���ã�&nbsp;&nbsp;admin</a></li>
						<li><a href="backstage_login.jsp">ע��</a></li>
					</ul>
					</li>


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
							class="icon-camera"></i> ���Ź���<span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>

						<ul>
							<li><a href="backstage_NewsAdd.jsp">���ŷ���</a></li>
							<li><a href="backstage_NewsSelect.jsp">�����б�</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-blue"><i
							class="icon-list-alt"></i> ��Ʒ���� <span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_ThingAdd.jsp">��Ʒ����</a></li>
							<li><a href="backstage_ThingSelect.jsp">��Ʒ�б�</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-green"><i
							class="icon-envelope-alt"></i>������� <span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_DiscussAdd.jsp">��ӹ���</a></li>
							<li><a href="backstage_DiscussSelect.jsp">�����б�</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-orange"><i
							class="icon-comments"></i> �������<span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_AnnounceSelect.jsp">�����б�</a></li>
							<li><a href="backstage_AnnounceSelectWeishh.jsp">��������б�</a></li>
							<li><a href="backstage_RestoreSelect.jsp">�����б�</a></li>
						</ul></li>

					<li class="has_sub"><a href="#" class="br-yellow"><i
							class="icon-user"></i> ��ȫ���� <span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
							<li><a href="backstage_userSelect.jsp">�û��б�</a></li>
							<li><a href="Backstage_updatePassword.jsp">�޸�����</a></li>
						</ul></li>
				</ul>

			</div>



		</div>

		<div class="mainbar">

			<br /> <br /> <br />

			<form align="center" class="form-search s-widget myform" name="form"
				method="post" action="ThingServlet?method=2"
				onSubmit="return addPhoto()" enctype="multipart/form-data">
				<div class="input-append">
					��Ʒ����&nbsp;&nbsp; <input type="text" id="inputPassword"
						placeholder="�����뾫Ʒ����" style="height:31px;width:500px"
						name="thingname"> <br /> <br /> 
						��Ʒ����&nbsp;&nbsp; <select
						name="typename" class="inputinput" style="height:31px;width:500px">
						<%
							for (int i = 0; i < list.size(); i++) {
								TypeBean form = (TypeBean) list.get(i);
						%>
						<option value="<%=form.getTypeId()%>"><%=form.getTypeName()%></option>
						<%
							}
						%>
					</select> <br /> <br /> ͼƬѡ��&nbsp;&nbsp; 
					<%-- <input name="photoURL" type="file"
						class="inputinput" style="height:31px;width:500px"> <br />
					<img src="<%=(String) request.getParameter("photoURL")%>"
						style="height:200px;width:400px"> <br /> <br />
						 --%>
						<div class='upload' style='left:63px;width:498px;'>
							<a><input
							id="photoURL" name="photoURL" type="file" 
							onchange="uploadFace(this);">
							<input type="text" name="" id="fileName" style='width:456px;'>
							</div>
							</a>
						<!--ͼƬԤ��  -->
						<br /> 
						<img id="preview" alt="" style="height:250px;width:250px;">
						<br>
					��Ʒ����&nbsp;&nbsp;
					<textarea id="inputPassword" placeholder="�����뾫Ʒ����" cols="80"
						rows="15" style="width:500px" name="thingContent"></textarea>
					<br /> <br /> ����ʱ��&nbsp;&nbsp; <input type="text"
						id="inputPassword" placeholder="" style="height:31px;width:500px"
						name="thingTime" value="<%=countTime.currentlyTime()%>" size="30"
						readonly="readonly" onclick="alert('����ʱ��Ϊֻ��������Ա�����޸�')"> <br />
					<br />
					<button type="submit" class="btn btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ȷ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
				</div>
			</form>



		</div>

		<!-- Slider ends -->

	</div>
	</div>
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/">Website Template</a>
	</div>






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
					��Ȩ��㶫�����ѧ��Ϣ��������Ϣϵͳ1121��&copy <a
						href="http://blog.csdn.net/sunshinegyan/" target="_blank"
						title="nieshuangyan">nieshuangyan</a>
				</p>
			</div>
		</div>
	</div>

	</div>
	</div>
	<!-- Foot ends -->

	</div>

	<div class="clearfix"></div>

	<!-- Main content ends -->



	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/custom.js"></script>
	<!-- Main js file -->
	
	<!-- JS -->
	<script type="text/javascript">
		function uploadFace(sender) {
			/* alert(0); */
			if (!sender.value.match(/.jpg|.gif|.jpeg|.bmp|.png/i)) {
				alert("��ѡ��ͼƬ�ļ���");
			} else {
				/* console.log(0); */
				var filename = document.getElementById("fileName");
				/* console.log(1); */
				 filename.value=sender.files[0].name;
				/* console.log(2);
				console.log(filename.value); */
				var preview = document.getElementById("preview");
				preview.src = window.URL.createObjectURL(sender.files[0]);
			}
		}
	</script>
</body>



</html>
