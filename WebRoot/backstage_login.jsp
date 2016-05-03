<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>Login - admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Stylesheets -->
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
<!--
  <link href="style/bootstrap-responsive.css" rel="stylesheet">
  
  <!-- HTML5 Support for IE -->
<!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="img/favicon/favicon.png">
</head>

<body>


	<!-- Main content starts -->

	<div class="content">

		<div class="container-fluid">
			<div class="row-fluid">

				<div class="span12">

					<div class="well login-register">

						<h5>用户登录</h5>
						<hr />

						<!-- Login form -->
						<form class="form-horizontal" name="form1" method="post"
							action="UserServlet?method=0&sign=0"
							onSubmit="return userCheck()">
							<!-- Email -->
							<div class="control-group">
								<label class="control-label" for="inputEmail">用户名：</label>
								<div class="controls">
									<input type="text" id="inputEmail" placeholder="useName"
										name="account">
								</div>
							</div>
							<!-- Password -->
							<div class="control-group">
								<label class="control-label" for="inputPassword">密&nbsp;&nbsp;码：</label>
								<div class="controls">
									<input type="password" id="inputPassword"
										placeholder="Password" name="password">
								</div>
							</div>
							<!-- Remember me checkbox and sign in button -->
							<div class="control-group">
								<div class="controls">
									<label class="checkbox"> <input type="checkbox">
										记住密码
									</label> <br>
									<button type="submit" class="btn btn-info">&nbsp;登&nbsp;入&nbsp;</button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="reset" class="btn btn-danger"
										onClick="javascript:form1.reset()">&nbsp;重&nbsp;置&nbsp;</button>
								</div>
							</div>
						</form>

					</div>

				</div>

			</div>
		</div>

	</div>

	<div class="clearfix"></div>

	<!-- Main content ends -->

	<!-- Footer -->
	<footer>
	<div class="bor"></div>
	<p>
		版权归广东海洋大学信息管理与信息系统1121班&copy <a
			href="http://blog.csdn.net/sunshinegyan/" target="_blank"
			title="nieshuangyan">nieshuangyan</a>
	</p>

	</footer>

	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/custom.js"></script>
	<!-- Main js file -->
</body>
</html>
