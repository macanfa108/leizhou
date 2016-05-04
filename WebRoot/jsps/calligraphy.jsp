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
		<title>欢迎来到雷州旅行网-书法碑刻</title>
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
								<li><a href="<%=path %>/jsps/language.jsp"><span class="glyphicon glyphicon-edit"></span>  语言文学</a></li>
								<!-- <li class="divider"></li> -->
								<li  class="active"><a href="<%=path %>/jsps/calligraphy.jsp"><span class="glyphicon glyphicon-check"></span>  书法碑刻</a></li>
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
								<h2 class="post-title"><a href="#">雷州书法</a></h2>
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
								<a href='http://www.gdzjdaily.com.cn/zjnews/area/leizhou/2010-07/09/content_1228562.htm' >
									<img src="<%=path%>/images/shufa.jpg"  class="img-thumbnail" style='width:100%;' />
								</a>
								<p class='content'>
									雷州历史悠久，被国务院批准为99个国家历史文化名城之一。历代文人墨客题名撰额，能工巧匠镌匾雕楹，对雷州人热爱书法、崇尚书艺文化氛围的形成产生着熏陶与影响作用。
 多年来，全市习书作字之风盛行城乡，一大批书法人才脱颖而出。现有中国书协会员8人，省书协会员44人，湛江市书协会员60人，书法爱好者达近九万之众，雷州书法家作品入选中国、省书协主办的各项展览数百次，获奖人数100余次，出版了《名城墨韵——雷州人书画摄影作品集》等一批书法专著。
 随着书法创作的蓬勃发展，雷州书画产业日趋成熟。该市鼓励书法艺术人才创办书法产业实体，把书法资源优势转变为产业优势，做大做强书法艺术产业。书家们纷纷走出书斋，勇闯市场，以商兴文。目前，该市有书画装裱和交易所30多处，广告装璜公司40多间，从业人员3300多人，产值年达800多万元，书法产业已成为雷州经济又一个新的增长点。
2010年7月8日，中国书法家协会授予雷州市“中国书法之乡”。
									
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
								<h2 class="post-title"><a href="#">雷州石刻</a></h2>
							</div>
							<hr>
							<div class="post-meta">
								<!-- <span class="author">
									建议游玩：<a href="#">2天</a>
								</span>
								 • <time class="time" datetime="2015-5-18"></time>2015年5月18日 -->
							</div>
							<div class="post-content">
								<img src="<%=path%>/images/shike.jpg"  class="img-thumbnail" style='width:100%;' />
								<div class="height_20"></div>
								<p class='content'>
									广东雷州石料丰富，特别是青石。早在7000多年前生活在雷州半岛大地上的先民已制造出石斧、石锛、砺石、敲砸器、穿孔石器、束腰石网坠等。开始有了辉煌灿烂而又奇特的石雕石刻文化。碑刻是石刻最主要代表。
碑刻是刻在碑上的文字或图画。一般理解为用书法体刻在碑石上的书法。是将书写好的墨迹复写于平整的石板（或石壁）或木板上，然后镌刻而成。雷州碑刻有石碑、木碑等，作为雷州半岛的古代首府，“天南重地”的雷州在碑刻艺术方面有着它光辉灿烂的一页。雷州古为州郡之治，历代各种碑刻、牌坊多达五六百件，但现在存留不过百八十件。
作为雷州半岛的古代首府，“天南重地”的雷州在碑刻艺术方面有着它光辉灿烂的一页。雷州古为州郡之治，历代各种碑刻、牌坊多达五六百件，这些众多的碑刻、牌坊上的书或画，既是历史的见证，又是艺术的珍品。可惜，人世沧桑，变故频仍，尤其是毁于“破四旧”，现幸存留下来的，为数不过百八十件。其中，保存完好的石刻有：宋代的《孔子像石刻》、《魁字石刻》，元代的《雷祖富有利用碑》，明代的海瑞《天宁古刹》题额、何起龙《雷合武当》石坊，清代的《雷祖陈文玉像刻》。属木刻的有：清代康熙御笔《赠闽抚陈瑸诗匾》、陈昌齐草书屏刻、杨守敬《陈乔森墓志铭》等。民间的碑刻虽多用于墓志铭之类，但从中可看到碑刻艺术的新水平；尤其是木雕工艺事业发展迅速。主要有木雕工艺工艺家具和木雕屏风、龙阁、檐匾、门窗等。前者不但畅销国内各地，而且远销新加坡、美国、加拿大等众多国家，由此名扬海内外，被誉为“东方木雕一枝花”。
									
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