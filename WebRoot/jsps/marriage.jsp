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
		<title>欢迎来到雷州旅行网-婚嫁习俗</title>
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
								<li><a href="<%=path %>/jsps/calligraphy.jsp"><span class="glyphicon glyphicon-check"></span>  书法碑刻</a></li>
								<li><a href="<%=path %>/jsps/ operaCulture.jsp"><span class="glyphicon glyphicon-adjust"></span>  戏曲文化</a></li>
								<li class="active"><a href="<%=path %>/jsps/marriage.jsp"><span class="glyphicon glyphicon glyphicon-gift"></span>  婚嫁习俗</a></li>
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
								<h2 class="post-title"><a href="#">婚嫁</a></h2>
							</div>
							<hr>
							<div class="post-meta">
								<!-- <span class="author">
									建议游玩：<a href="#">2天</a>
								</span>
								 • <time class="time" datetime="2015-5-18"></time>2015年5月18日 -->
							</div>
							<div class="post-content">
								<!-- <div class="height_20"></div> -->
									<img src="<%=path%>/images/hunsu.png"  class="img-thumbnail" style='width:100%;' />
								<p class='content'>
									旧时雷州姑娘出嫁，婚事皆由父母之命、媒约之言而定，故有“婚姻父安母种”的谚语流行。一般六、七岁时便对了亲家(订婚)，也有在二、三岁对亲家的“鸡对仔”，甚至还有指腹为婚者。对亲家过程，男方先由媒人送个礼盒到女家，盒子内装有槟榔、果品、红糖等。富裕人家用银盒、锡盒或精制漆盒，穷苦百姓则用彩布包裹礼品。若是女家初步同意，则由家中长辈开盒取出一个槟榔，俗称“吃了人家槟榔”。下一步，就是男女双方交换“庚帖”(即用红纸写上出生年、月、日、时辰)，请算命先生“合命”，如两人“五行相生，命根相合”，则由男家送头过礼。礼品扶跨过门槛底下一堆燃着的“火烟”，称作“骑金马”，矢志跨进夫家；如遇新娘来潮，就要在“火烟”上加放一只稻草扎，称作“骑竹马”。新郎还要接受挑谷种的青郎的祝贺。青郎可以一口气；做出十来二十首诗句。每做一首，新郎要赏以红包。新郎接过竹苗谷种栽于屋后，撒于田里，象征栽下新生活，播下幸福种。
比较有趣的一个就是“压床头”，即结婚前一个礼拜，新郎官要跟一个小孩子一起睡，这样可以确保能早生贵子。还有就是吃槟榔，也就是如果男方提亲，女方家长同意后，就会从盒子中取出一个槟榔吃，以示同意这门婚事。
新娘进门之后，要在一位婆家请来的“青娘母”(极善辞令，又能即兴吟诗做对的人)陪伴着，举行各种仪式，如与新郎吃“合房圆”，进入洞房，上厅堂给长辈、平辈端茶行拜见礼，“闹洞房”等。

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
								<h2 class="post-title"><a href="#">春节</a></h2>
							</div>
							<hr>
							<div class="post-meta">
								<!-- <span class="author">
									建议游玩：<a href="#">2天</a>
								</span>
								 • <time class="time" datetime="2015-5-18"></time>2015年5月18日 -->
							</div>
							<div class="post-content">
								<img src="<%=path%>/images/chunjie.jpg"  class="img-thumbnail" style='width:100%;' />
								<div class="height_20"></div>
								<p class='content'>
									千百年来，已经形成了一套颇具民间色彩的风俗习惯，相传至今，它基本保留着夏商时代太行山以东地区的习俗，这些看似“迷信”的习俗，但你深入了解后，就会发现，其中不少蕴含着鲜为人知的人文历史知识，体现出中华民族对先祖念念不忘的情怀，兹列其下：
     一、扫尘。腊月二十四要大扫除。
     二、做筐炊粑、叶搭饼。
     三、做发财。腊月廿八要做发财。
     四、祭公祖。腊月廿九祭祠堂公祖。
     五、贴门对，贴门神。腊月三十（除夕）早，房屋各门贴对联、门神。大厅顶阁横梁上贴上“金玉满堂”横额。
    六、围炉，全家团聚在一起，吃过年夜饭，点起蜡烛或油灯，围坐炉旁闲聊，等着辞旧迎新的时刻，通宵守夜。父母亲可将事先准备好的用红包装着的压岁钱偷偷放在孩子枕头底下。
    七、点油灯。腊月三十（除夕）晚开始至到十五日二十四时止。寓意丁财两旺，人丁繁衍不息。
     八、等贡。二十四时正，燃放爆竹，迎接新年，此时，万炮齐鸣，震耳欲聋。
     九、拜年。正月初一，人们早早起来，穿上最漂亮的衣服，打扮得整整齐齐，出门去走亲访友，相互拜年，恭祝来年大吉大利。
     十、闹元霄。正月十五，各社区组织起来抬公祖游街，舞龙队领头，舞狮队随后，敲锣打鼓，喜气洋洋。

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
								<h2 class="post-title"><a href="#">年例</a></h2>
							</div>
							<hr>
							<div class="post-meta">
								<!-- <span class="author">
									建议游玩：<a href="#">2天</a>
								</span>
								 • <time class="time" datetime="2015-5-18"></time>2015年5月18日 -->
							</div>
							<div class="post-content">
								<img src="<%=path%>/images/nianli.jpg"  class="img-thumbnail" style='width:100%;' />
								<div class="height_20"></div>
								<p class='content'>
								年例与春节等传统节日不同，是粤西地区特有的以祭祀为主的群体性节庆，主旨是敬神、拜宗、祭祀社稷，以祈祷风调雨顺、国泰民安，百业兴旺的大型民俗活动，形式丰富多彩，富有神秘色彩，充满独特的地方风情和浓厚的乡土气息，并以它绚丽的色彩和千姿百态的动作，而深受中外观众的赞赏，其中东海岛东山镇的人龙舞独具特色，被誉为“东方一绝”，不少被确认为非物质文化遗产。
雷州年例现已演变为由各坊统一组织的游“元宵”，规模更大，其时老少欢欣，万人空巷。在农村，有延至二十八或二月十二的，并一致。
								
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