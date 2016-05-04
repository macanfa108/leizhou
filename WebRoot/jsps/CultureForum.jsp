<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>欢迎来到雷州旅行网</title>
<link rel="stylesheet"
	href="<%=path%>/Vendor/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reset.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css" />
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/CultureForum.css" />
</head>

<body>

	<!--固定导航条部分-->

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!--网站logo -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<%=path%>/jsps/index.jsp">爱旅行网</a>
			</div>

			<!-- 响应式导航部分 -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="<%=path%>/jsps/index.jsp"> <span
							class="glyphicon glyphicon-home"></span> 首页 <span class="sr-only">(current)</span>
					</a></li>
					<!--<li><a href="#">推荐新闻</a></li>-->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> <span class="glyphicon glyphicon-fire"></span>
							特色文化 <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="<%=path%>/jsps/language.jsp"><span
									class="glyphicon glyphicon-edit"></span> 语言文学</a></li>
							<!-- <li class="divider"></li> -->
							<li><a href="<%=path%>/jsps/calligraphy.jsp"><span
									class="glyphicon glyphicon-check"></span> 书法碑刻</a></li>
							<li><a href="<%=path%>/jsps/ operaCulture.jsp"><span
									class="glyphicon glyphicon-adjust"></span> 戏曲文化</a></li>
							<li><a href="<%=path%>/jsps/marriage.jsp"><span
									class="glyphicon glyphicon glyphicon-gift"></span> 婚嫁习俗</a></li>
							<li><a href="<%=path%>/jsps/architecturalStyle.jsp"><span
									class="glyphicon glyphicon-map-marker"></span> 建筑风格</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> <span
							class="glyphicon glyphicon-comment"></span> 文化论坛 <span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="<%=path%>/jsps/architecturalStyle.jsp"><span
									class="glyphicon glyphicon-list-alt"></span> 帖子列表</a></li>
							<li><a href="<%=path%>/jsps/postMessage.jsp"><span
									class="glyphicon glyphicon-send"></span> 发帖</a></li>
						</ul></li>
					<li class="active"><a href="<%=path%>/jsps/CultureForum.jsp">
							<span class="glyphicon glyphicon-leaf"></span> 精品长廊
					</a></li>
					<li><a href="javascript:;" data-toggle='modal'
						data-target='#login'> <span class="glyphicon glyphicon-user"></span>
							登录
					</a></li>
					<li><a href="javascript:;" data-toggle='modal'
						data-target='#register'> <span
							class="glyphicon glyphicon-pencil"></span> 注册
					</a></li>
				</ul>
				<!--<p class="text-center pull-left">欢迎您！<span class="text-danger">游客</span></p>-->

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!--固定导航条部分-->
	<!--轮播图部分-->
	<div class="container" style="height:300px;">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<%=path%>/images/carouselImages/1.jpg" alt="..."
						style='width:100%;height:300px;'>
					<div class="carousel-caption">鸡冠花</div>
				</div>
				<div class="item">
					<img src="<%=path%>/images/carouselImages/bg2.jpg" alt="..."
						style='width:100%;height:300px;'>
					<div class="carousel-caption">鸡冠花</div>
				</div>
				<div class="item">
					<img src="<%=path%>/images/carouselImages/bg3.jpg" alt="..."
						style='width:100%;height:300px;'>
					<div class="carousel-caption">鸡冠花</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!--轮播图部分-->
	<div class="height_20"></div>
	<section class="content-wrap">
		<div class='container'>
			<div class="row">
				<div class='col-md-12 filter'>
					<div class="btn-group btn-group-sm filter-btn-group" role="group">
						<span type="button" class="btn btn-default  filterBack">分类展示</span>
						<a href='#' type="button" class="btn btn-default ">鱼</a> <a
							href='#' type="button" class="btn btn-default">贝壳</a> <a href='#'
							type="button" class="btn btn-default">虾</a>
						<!--搜索框 -->
						<div class='searchBtnGroup pull-left'>
							<input type="text" placeholder="搜索精品" class='searchInput'>
							<a href='' class='searchBtn'>搜索</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<div class="height_20"></div>
	<!-- 主体内容 -->
	<section class="content-wrap">
		<div class="container">

			<div class="row">
				<!-- 每行3列 -->
				<div class="col-md-3">
					<div class="thumbnail primeList">
						<a href='#' class='primeListImg'> <img
							src="<%=path%>/images/chunjie.jpg"> <a href='#'
							class='like'><span class='glyphicon glyphicon-heart'></span>
								点赞</a>
						</a>

						<div class="caption">
							<h3 class='ellipsis'>
								<a href='#'>雷州话（即雷州方言），简称雷话，属闽语系一支
									，是海内外雷人同胞的共同母语。主要分布于国内的广东省西南部 、广西东南部 、海南北部以及海外的东南亚、欧美华人 </a>
							</h3>
							<p class='text-muted'>
								已有<span class='redColor'>12</span>人点赞
							</p>
						</div>
					</div>
				</div>
				<!-- 每行3列 -->
				<!-- 每行3列 -->
				<div class="col-md-3">
					<div class="thumbnail primeList">
						<a href='#' class='primeListImg'> <img
							src="<%=path%>/images/chunjie.jpg"> <a href='#'
							class='like'><span class='glyphicon glyphicon-heart'></span>
								点赞</a>
						</a>

						<div class="caption">
							<h3 class='ellipsis'>
								<a href='#'>雷州话（即雷州方言），简称雷话，属闽语系一支
									，是海内外雷人同胞的共同母语。主要分布于国内的广东省西南部 、广西东南部 、海南北部以及海外的东南亚、欧美华人 </a>
							</h3>
							<p class='text-muted'>
								已有<span class='redColor'>12</span>人点赞
							</p>
						</div>
					</div>
				</div>
				<!-- 每行3列 -->
				<!-- 每行3列 -->
				<div class="col-md-3">
					<div class="thumbnail primeList">
						<a href='#' class='primeListImg'> <img
							src="<%=path%>/images/chunjie.jpg"> <a href='#'
							class='like'><span class='glyphicon glyphicon-heart'></span>
								点赞</a>
						</a>

						<div class="caption">
							<h3 class='ellipsis'>
								<a href='#'>雷州话（即雷州方言），简称雷话，属闽语系一支
									，是海内外雷人同胞的共同母语。主要分布于国内的广东省西南部 、广西东南部 、海南北部以及海外的东南亚、欧美华人 </a>
							</h3>
							<p class='text-muted'>
								已有<span class='redColor'>12</span>人点赞
							</p>
						</div>
					</div>
				</div>
				<!-- 每行3列 -->
				<!-- 每行3列 -->
				<div class="col-md-3">
					<div class="thumbnail primeList">
						<a href='#' class='primeListImg'> <img
							src="<%=path%>/images/chunjie.jpg"> <a href='#'
							class='like'><span class='glyphicon glyphicon-heart'></span>
								点赞</a>
						</a>

						<div class="caption">
							<h3 class='ellipsis'>
								<a href='#'>雷州话（即雷州方言），简称雷话，属闽语系一支
									，是海内外雷人同胞的共同母语。主要分布于国内的广东省西南部 、广西东南部 、海南北部以及海外的东南亚、欧美华人 </a>
							</h3>
							<p class='text-muted'>
								已有<span class='redColor'>12</span>人点赞
							</p>
						</div>
					</div>
				</div>
				<!-- 每行3列 -->
				<!-- 每行3列 -->
				<div class="col-md-3">
					<div class="thumbnail primeList">
						<a href='#' class='primeListImg'> <img
							src="<%=path%>/images/chunjie.jpg"> <a href='#'
							class='like'><span class='glyphicon glyphicon-heart'></span>
								点赞</a>
						</a>

						<div class="caption">
							<h3 class='ellipsis'>
								<a href='#'>雷州话（即雷州方言），简称雷话，属闽语系一支
									，是海内外雷人同胞的共同母语。主要分布于国内的广东省西南部 、广西东南部 、海南北部以及海外的东南亚、欧美华人 </a>
							</h3>
							<p class='text-muted'>
								已有<span class='redColor'>12</span>人点赞
							</p>
						</div>
					</div>
				</div>
				<!-- 每行3列 -->
			</div>
			<!-- 分页 -->
			<nav>
				<ul class="pagination pull-right">
				<li class='disabled'><a href="#" > <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#" > <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
					<li   class='disabled'><a href="#"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
	</section>
	<!-- 底部 -->
	<footer class="main-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="widget">
						<h4 class="title">最新信息</h4>
						<div class="content recent-post">
							<div class="recent-single-post">
								<a href="#" class="post-title">很好一个大学，天人离市区，只能学习</a>
								<div class="date">May 18, 2015</div>
							</div>
							<div class="recent-single-post">
								<a href="#" class="post-title">美丽的湖光岩，是湛江最有名的风景点。景区湖光山色，风光秀丽</a>
								<div class="date">May 18, 2015</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="widget">
						<h4 class="title">湛江风景</h4>
						<div class="content tag-cloud">
							<a href="#">湖光岩</a> <a href="#">吉兆湾</a> <a href="#">东海岛</a> <a
								href="#">观海长廊</a> <a href="#">红树林</a> <a href="#">硇洲岛</a> <a
								href="#">雷州乌石镇天成台</a> <a href="#">广东海洋大学</a> <a href="#">特呈岛</a>
							<a href="#">南亚热带植物园</a> <a href="#">湛江海滨公园</a> <a href="#">西湖</a>
							<a href="#">...</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="widget">
						<h4 class="title">友情链接</h4>
						<div class="content tag-cloud friend-links">
							<a href="http://www.gdou.edu.cn/">广东海洋大学</a> <a
								href="http://www.gdousu.com/">广东海洋大学学生会</a> <a
								href="http://210.38.139.34/">广东海洋大学信息学院</a> <a
								href="http://www.cnki.net/">中国知网</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<p class='banquan'>京ICP备11008151号京公网安备11010802014853</p>
			</div>
		</div>
	</footer>
	<!-- 底部 -->
	<!--登录弹出框-->
	<div class="modal fade" id="login">
		<div class="modal-dialog">
			<div class="modal-content">
				<!--头部-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">用户登录</h4>
				</div>
				<!--主体-->
				<div class="modal-body">

					<!--登录表单-->
					<form id='loginForm' class="form-horizontal">
						<div class="form-group row">

							<label for="InputName" class="col-sm-2 control-label">账号：</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="InputName"
									name="InputName" placeholder="请输入账号">
							</div>

						</div>
						<div class="form-group row">
							<label for="InputPassword" class="col-sm-2 control-label">密码：</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="InputPassword"
									name="InputPassword" placeholder="密码">
							</div>
						</div>
						<div class="form-group row">
							<div class="checkbox col-sm-3 col-sm-offset-2">
								<label><input type="checkbox" name="rememberPassword">记住密码？</label>
							</div>
						</div>
					</form>

				</div>
				<!--主体-->
				<!--底部-->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-success">登录</button>
				</div>
			</div>
		</div>
	</div>
	<!--登录弹出框-->
	<!--注册弹出框-->
	<div class="modal fade" id="register">
		<div class="modal-dialog">
			<div class="modal-content">
				<!--头部-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">用户注册</h4>
				</div>
				<!--主体-->
				<div class="modal-body">
					<!--注册表单-->
					<form id='registerForm' class="form-horizontal" action="#">
						<div class="form-group row">

							<label for="InputName" class="col-sm-3 control-label">账号：</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="registerName"
									name='registerName' placeholder="请输入账号" required="required">
							</div>

						</div>

						<div class="form-group row">

							<label for="RealName" class="col-sm-3 control-label">真实姓名：</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="RealName"
									name='RealName' placeholder="真实名" required="required">
							</div>

						</div>

						<div class="form-group row">
							<label for="InputPassword" class="col-sm-3 control-label">密码：</label>
							<div class="col-sm-8">
								<input type="password" class="form-control"
									id="registerPassword" name='registerPassword' placeholder="密码"
									required="required">
							</div>
						</div>
						<div class="form-group row">
							<label for="InputPassword" class="col-sm-3 control-label">确认密码：</label>
							<div class="col-sm-8">
								<input type="password" class="form-control"
									id="registerPassword2" name='registerPassword2'
									placeholder="确认密码" required="required">
							</div>
						</div>
						<div class="form-group row">

							<label for="InputName" class="col-sm-3 control-label">手机：</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="registerPhone"
									name='registerPhone' placeholder="请输入手机号码" required="required">
							</div>

						</div>

					</form>

				</div>
				<!--主体-->
				<!--底部-->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
					<!--通过ajax交互-->
					<button type="submit" class="btn btn-success">注册</button>
				</div>
			</div>
		</div>
	</div>
	<!--注册弹出框-->
	<!-- 回到顶部按钮 -->
	<section>
		<div class="scrollTop">
			<span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span>
		</div>
	</section>
	<!-- 回到顶部按钮 -->

	<script src="<%=path%>/Vendor/bootstrap/js/jquery.js"></script>
	<script src="<%=path%>/Vendor/bootstrap/js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$(".scrollTop span").click(function() {
				$('html,body').animate({
					scrollTop : '0px'
				}, 800);
			})
		})
	</script>
</body>

</html>