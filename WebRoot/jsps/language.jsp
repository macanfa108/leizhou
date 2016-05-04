<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<title>欢迎来到雷州旅行网-语言文学</title>
		<link rel="stylesheet" href="<%=path %>/Vendor/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css" />
	</head>

	<body>

		<!--固定导航条部分-->

		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<!--网站logo -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        			<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
      				</button>
					<a class="navbar-brand" href="<%=path %>/jsps/index.jsp">爱旅行网</a>
				</div>

				<!-- 响应式导航部分 -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							<a href="<%=path %>/jsps/index.jsp">
								<span class="glyphicon glyphicon-home"></span> 首页 <span class="sr-only">(current)</span>
							</a>
						</li>
						<!--<li><a href="#">推荐新闻</a></li>-->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								<span class="glyphicon glyphicon-fire"></span> 
								特色文化 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li  class="active"><a href="<%=path %>/jsps/language.jsp"><span class="glyphicon glyphicon-edit"></span>  语言文学</a></li>
								<!-- <li class="divider"></li> -->
								<li><a href="<%=path %>/jsps/calligraphy.jsp"><span class="glyphicon glyphicon-check"></span>  书法碑刻</a></li>
								<li><a href="<%=path %>/jsps/ operaCulture.jsp"><span class="glyphicon glyphicon-adjust"></span>  戏曲文化</a></li>
								<li><a href="<%=path %>/jsps/marriage.jsp"><span class="glyphicon glyphicon glyphicon-gift"></span>  婚嫁习俗</a></li>
								<li><a href="<%=path %>/jsps/architecturalStyle.jsp"><span class="glyphicon glyphicon-map-marker"></span>  建筑风格</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								<span class="glyphicon glyphicon-comment"></span> 文化论坛 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=path %>/jsps/postList.jsp"><span class="glyphicon glyphicon-list-alt"></span>  帖子列表</a></li>
								<li><a href="<%=path %>/jsps/postMessage.jsp"><span class="glyphicon glyphicon-send"></span>  发帖</a></li>
							</ul>
						</li>
						<li>
							<a href="<%=path%>/jsps/CultureForum.jsp">
								<span class="glyphicon glyphicon-leaf"></span> 
								精品长廊
							</a>
						</li>
						<li>
							<a href="javascript:;" data-toggle='modal' data-target='#login'>
								<span class="glyphicon glyphicon-user"></span> 
								登录
							</a>
						</li>
						<li>
							<a href="javascript:;" data-toggle='modal' data-target='#register'>
								<span class="glyphicon glyphicon-pencil"></span> 
								注册
							</a>
						</li>
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
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			  </ol>

			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    <div class="item active">
			      <img src="<%=path %>/images/carouselImages/1.jpg" alt="..." style='width:100%;height:300px;'>
			      <div class="carousel-caption">
			        鸡冠花
			      </div>
			    </div>
			    <div class="item">
			      <img src="<%=path %>/images/carouselImages/bg2.jpg" alt="..." style='width:100%;height:300px;'>
			      <div class="carousel-caption">
			        鸡冠花
			      </div>
			    </div>
			    <div class="item">
			      <img src="<%=path %>/images/carouselImages/bg3.jpg" alt="..." style='width:100%;height:300px;'>
			      <div class="carousel-caption">
			        鸡冠花
			      </div>
			    </div>
			  </div>

			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
		<!--轮播图部分-->
		<div class="height_20"></div>
		<!-- 主体内容 -->
		<section class="content-wrap">
			<div class="container">
				<div class="row">
					<!-- 左侧内容区 -->
					<div class="col-md-8 main-content">
					<!-- 循环内容部分 -->
						<article class="post tag-about-ghost tag-ghost-in-depth tag-zhu-shou-han-shu">
							<div class="post-head">
								<h2 class="post-title"><a href="#">雷州话</a></h2>
							</div>
							<hr>
							<div class="post-meta">
								<!-- <span class="author">
									建议游玩：<a href="#">2天</a>
								</span>
								 • <time class="time" datetime="2015-5-18"></time>2015年5月18日 -->
							</div>
							<div class="post-content">
							<!-- video中的src后台改动 -->
								<video src="<%=path%>/video/leizhouhua.mp4"  class="img-thumbnail"  controls="controls"></video>
								<div class="height_20"></div>
								<p class='content'>
									雷州话（即雷州方言），简称雷话，属闽语系一支 ，是海内外雷人同胞的共同母语。主要分布于国内的广东省西南部 、广西东南部 、海南北部以及海外的东南亚、欧美华人华侨聚集地区。雷州话通行范围很广 ，是雷州半岛及周边地区人民的日常生活使用语言。今湛江市属的雷州市、遂溪县、徐闻县、麻章区、东海岛、赤坎区、霞山区、坡头区、廉江市南部、吴川市东部及粤西、桂东南、琼北等县（市）、区乡镇通行雷州话，国内人口覆盖800多万，海外人口约150万，为广东省四大方言之一。
以雷州话为基本特征的“雷州文化”，与“潮汕文化、客家文化、广府文化”构成当今岭南四大地域文化。
雷州话中保留的古汉语很多特色，例如在人称上，雷州话就很有古味，白文中的“他”或“她”，雷州话却用“伊”字。
还有在第二人称代词“你”字，雷州话却用“汝”字（很多人写雷州方言是都用“鲁”字取代“你”，这是不正确的写法，只能起到谐音，但没有一点含义），
另外，在时间上也保留着古老的时刻，如果一个外地人听起来简直是要古汉语词典了，例如：日斗（中午），船年（前年）等，很有味道。
另一个比较明显的是，雷州话中的状语后置，在现代汉语中，状语一般位于谓语之前，但雷州话如今却依旧保留着这个古汉语状语后置的特点。

例如：在现代汉语中的“你要多吃一点。”而雷州话却把“多”这个状语放到了“吃”谓语之后，形成了“你要吃多一点。”
雷州话中的读音也和普通话一样有书面和口语两种，但口语在雷州话平常交际中十分普遍例如“黄”就有两种读音，分别为“ui5”（口语）和“huang5”。
雷州话中的不定冠词也有异于现代汉语的，这可能也是地方特色吧。如果写入作文的话，你真的不知应该是对还是错的，如：普通话中称一只鞋，而雷州话却说成“一脚鞋”，还有一丛树（一棵树），这些和闽南语是一样的。
还有本音字，但由于历史的发展，这些字在现代汉语中已消失了不少。从中我们也可以看出雷州话的古老。
例如：“湿”字，雷州话中就有“dam（类似“淡”字的雷语）”的原字为“氵耽”，现只能从语言中感受这个字了。
									
								</p>
							</div>
							<!-- <div class="post-permalink">
								<a href="#" class="btn btn-default">查看详情</a>
							</div> -->
							<div class="footer">
								<hr>
								<!-- <div class="pull-left tag-list">
									最佳季节：四季皆宜。
								</div> -->
							</div>
						</article>
						<!-- 循环内容部分 -->
						
						<!-- 循环内容部分 -->
						<article class="post tag-about-ghost tag-ghost-in-depth tag-zhu-shou-han-shu">
							<div class="post-head">
								<h2 class="post-title"><a href="#">地方文化</a></h2>
							</div>
							<hr>
							<div class="post-meta">
								<!-- <span class="author">
									建议游玩：<a href="#">2天</a>
								</span>
								 • <time class="time" datetime="2015-5-18"></time>2015年5月18日 -->
							</div>
							<div class="post-content">
								<img src="<%=path%>/images/leizhouCulture.jpg"  class="img-thumbnail" style='width:100%;' />
								<div class="height_20"></div>
								<p class='content'>
									几乎每一类“俗语、谚语、歇后语”都包含有雷州文化。如“日头落水”，日头乃太阳，太阳总是高在人们的头上而称日头，日头落水乃太阳下山的意思。
雷州半岛三面临海，没有山脉，所以将太阳往西沉没入地平线的现象概括为“日头落水”，又如“三八四月”，
古代雷州半岛先人生产力落后，每逢三月，四月，八月便会闹饥荒，所以“三八四月”的意思就是“荒时暴月，青黄不接之时”。
在雷州方言里头，“土”和“通俗”乃其一大特色，“土”，来源生活或取材生活，在现实生活中能找到相关的来源，
如“上轿包脚”，古代妇女常把脚裸以下的部分包扎起来，也就是所说的“三寸金莲”，在海康古代，没有把脚包扎成“三寸金莲”的女人是嫁不出去的，
或者被世人骂成不守妇道，上轿，出嫁的意思，在出嫁的时候才包扎脚，那就是懒惰，比喻平时没有准备，事到临头才慌乱准备，
又如“公仔抬高就见脚”，公仔戏，雷州半岛的一种木偶戏，由人来操纵其动作形态的变化，当人把公仔高举起时会不自觉地把木偶的一些缺点或短处暴露出来，所以“公仔抬高就见脚”的意思是没有真才实学，一遇上情况便暴露出了马脚。
									
								</p>
							</div>
							<div class="post-content">
								<img src="<%=path%>/images/shigou.jpg"  class="img-thumbnail" style='width:100%;' />
								<div class="height_20"></div>
								<p class='content'>
									几乎每一类“俗语、谚语、歇后语”都包含有雷州文化。如“日头落水”，日头乃太阳，太阳总是高在人们的头上而称日头，日头落水乃太阳下山的意思。
雷州半岛三面临海，没有山脉，所以将太阳往西沉没入地平线的现象概括为“日头落水”，又如“三八四月”，
古代雷州半岛先人生产力落后，每逢三月，四月，八月便会闹饥荒，所以“三八四月”的意思就是“荒时暴月，青黄不接之时”。
在雷州方言里头，“土”和“通俗”乃其一大特色，“土”，来源生活或取材生活，在现实生活中能找到相关的来源，
如“上轿包脚”，古代妇女常把脚裸以下的部分包扎起来，也就是所说的“三寸金莲”，在海康古代，没有把脚包扎成“三寸金莲”的女人是嫁不出去的，
或者被世人骂成不守妇道，上轿，出嫁的意思，在出嫁的时候才包扎脚，那就是懒惰，比喻平时没有准备，事到临头才慌乱准备，
又如“公仔抬高就见脚”，公仔戏，雷州半岛的一种木偶戏，由人来操纵其动作形态的变化，当人把公仔高举起时会不自觉地把木偶的一些缺点或短处暴露出来，所以“公仔抬高就见脚”的意思是没有真才实学，一遇上情况便暴露出了马脚。
									
								</p>
							</div>
							<!-- <div class="post-permalink">
								<a href="#" class="btn btn-default">查看详情</a>
							</div> -->
							<div class="footer">
								<hr>
								<!-- <div class="pull-left tag-list">
									最佳季节：四季皆宜。
								</div> -->
							</div>
						</article>
						<!-- 循环内容部分 -->
						
					</div>
					<!-- 左侧内容区 -->
					<!-- 侧边栏部分 -->
					<aside class="col-md-4 sidebar">
						<div class="widget">
							<h4 class="title">公告消息</h4>
							<div class="content community">
								<ul class='Message'>
									<li><a href='#' >雷州一批作品获奖</a></li>
									<li><a href='#' >医院也“坑人”?雷州卫计部门将调查淋球菌事件</a></li>
									<li><a href='#' >雷州潮溪村恢复村落古朴原貌</a></li>
									<li><a href='#' >组图:安徽夫妇在雷州市化缘乞讨被当人贩子遭暴打</a></li>
									<li><a href='#' >湛江朝发村河段水体黑臭引关注 雷州青年运河东海河整治工程加快推进</a> </li>
								</ul>
								<!-- <p>QQ群：277327792</p>
								
								<p><a href="#"> 官方微博</a></p> -->
							</div>
						</div>
						<div class="widget">
							<h4 class="title">论坛发帖</h4>
							<div class="content download">
								<a href="#" class="btn btn-default btn-block">参与发帖</a>
							</div>
						</div>
						<div class="widget">
							<h4 class="title">旅游热点</h4>
							<div class="content tag-cloud">
								<a href="#">湖光岩</a>
								<a href="#">吉兆湾</a>
								<a href="#">东海岛</a>
								<a href="#">观海长廊</a>
								<a href="#">红树林</a>
								<a href="#">硇洲岛</a>
								<a href="#">雷州乌石镇天成台</a>
								<a href="#">广东海洋大学</a>
								<a href="#">特呈岛</a>
								<a href="#">南亚热带植物园</a>
								<a href="#">湛江海滨公园</a>
								<a href="#">西湖</a>
								
								<a href="#">...</a>
							</div>
						</div>
					</aside>
					<!-- 侧边栏部分 -->
				</div>
			</div>
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
									<a href="#">湖光岩</a>
								<a href="#">吉兆湾</a>
								<a href="#">东海岛</a>
								<a href="#">观海长廊</a>
								<a href="#">红树林</a>
								<a href="#">硇洲岛</a>
								<a href="#">雷州乌石镇天成台</a>
								<a href="#">广东海洋大学</a>
								<a href="#">特呈岛</a>
								<a href="#">南亚热带植物园</a>
								<a href="#">湛江海滨公园</a>
								<a href="#">西湖</a>
									<a href="#">...</a>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="widget">
								<h4 class="title">友情链接</h4>
								<div class="content tag-cloud friend-links">
									<a href="http://www.gdou.edu.cn/">广东海洋大学</a>
									<a href="http://www.gdousu.com/">广东海洋大学学生会</a>
									<a href="http://210.38.139.34/">广东海洋大学信息学院</a>
									<a href="http://www.cnki.net/">中国知网</a>
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
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">用户登录</h4>
					</div>
					<!--主体-->
					<div class="modal-body">

						<!--登录表单-->
						<form id='loginForm' class="form-horizontal">
							<div class="form-group row">

								<label for="InputName" class="col-sm-2 control-label">账号：</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="InputName" name="InputName" placeholder="请输入账号">
								</div>

							</div>
							<div class="form-group row">
								<label for="InputPassword" class="col-sm-2 control-label">密码：</label>
								<div class="col-sm-8">
									<input type="password" class="form-control" id="InputPassword" name="InputPassword" placeholder="密码">
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
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">用户注册</h4>
					</div>
					<!--主体-->
					<div class="modal-body">
						<!--注册表单-->
						<form id='registerForm' class="form-horizontal" action="#">
							<div class="form-group row">

								<label for="InputName" class="col-sm-3 control-label">账号：</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="registerName" name='registerName' placeholder="请输入账号" required="required">
								</div>

							</div>
							
							<div class="form-group row">

								<label for="RealName" class="col-sm-3 control-label">真实姓名：</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="RealName" name='RealName' placeholder="真实名" required="required">
								</div>

							</div>

							<div class="form-group row">
								<label for="InputPassword" class="col-sm-3 control-label">密码：</label>
								<div class="col-sm-8">
									<input type="password" class="form-control" id="registerPassword" name='registerPassword' placeholder="密码" required="required">
								</div>
							</div>
							<div class="form-group row">
								<label for="InputPassword" class="col-sm-3 control-label">确认密码：</label>
								<div class="col-sm-8">
									<input type="password" class="form-control" id="registerPassword2" name='registerPassword2' placeholder="确认密码" required="required">
								</div>
							</div>
							<div class="form-group row">

								<label for="InputName" class="col-sm-3 control-label">手机：</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="registerPhone" name='registerPhone' placeholder="请输入手机号码" required="required">
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
		
		<script src="<%=path %>/Vendor/bootstrap/js/jquery.js"></script>
		<script src="<%=path %>/Vendor/bootstrap/js/bootstrap.min.js"></script>
		<script>
		$(function(){
			$(".scrollTop span").click(function(){
				$('html,body').animate({scrollTop: '0px'}, 800);
			})
		})
		</script>
	</body>

</html>