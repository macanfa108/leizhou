<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="com.wy.bean.UserBean"/>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>雷州文化后台管理-修改密码</title>
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
  
  
  
  
  
</head>

<body>


<!--红色区域部分-->
<!-- Navbar starts -->

  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container-fluid">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <div class="nav-collapse collapse">
          <ul class="nav pull-right">
          <li><a href="backstage_login.jsp">您好！&nbsp;&nbsp;admin</a></li>
		    <li><a href="backstage_login.jsp">注销</a></li>
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



        <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

        <div class="s-content">

          <ul id="nav">
            <!-- Main menu with font awesome icon -->
            <li class="has_sub"><a href="#" class="open br-red"><i class="icon-camera"></i> 新闻管理<span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              
              <ul>
                <li><a href="backstage_NewsAdd.jsp">新闻发布</a></li>
                <li><a href="backstage_NewsSelect.jsp">新闻列表</a></li>
              </ul>
            </li>

            <li class="has_sub"><a href="#" class="br-blue"><i class="icon-list-alt"></i> 精品管理  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              <ul>
                <li><a href="backstage_ThingAdd.jsp">精品发布</a></li>
                <li><a href="backstage_ThingSelect.jsp">精品列表</a></li>
              </ul>
            </li>  

            <li class="has_sub"><a href="#" class="br-green"><i class="icon-envelope-alt"></i>公告管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              <ul>
              <li><a href="backstage_DiscussAdd.jsp">添加公告</a></li>
                <li><a href="backstage_DiscussSelect.jsp">公告列表</a></li>
              </ul>
            </li>              

            <li class="has_sub"><a href="#" class="br-orange"><i class="icon-comments"></i> 话题管理<span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              <ul>
                <li><a href="backstage_AnnounceSelect.jsp">话题列表</a></li>
                <li><a href="backstage_AnnounceSelectWeishh.jsp">话题审核列表</a></li>
                <li><a href="backstage_RestoreSelect.jsp">评论列表</a></li>
              </ul>
            </li> 

            <li class="has_sub"><a href="#" class="br-yellow"><i class="icon-user"></i> 安全管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
			<ul>
                <li><a href="backstage_userSelect.jsp">用户列表</a></li>
                <li><a href="Backstage_updatePassword.jsp">修改密码</a></li>
              </ul>
            </li> 
          </ul>

        </div>



  </div>
  <!-- Sidebar ends -->

  <!-- Mainbar starts -->
  <div class="mainbar">
            
            <br/>  
            <br/>  
            <br/>  
            <br/>  
                <form align="center" align="right" class="form-search s-widget" name="form" method="post" action="UserServlet?method=5&sign=0" onSubmit="return userCheck()"">
            <!--  <h1>修改密码</h1> -->
              <div class="input-append">
              
                                          <label for="inputPassword">请输入用户名</label>&nbsp;&nbsp;&nbsp;
               <input type="text"  id="inputPassword" placeholder="登录用户名" style="height:31px;width:200px" name="name">
                
               <br/>                        
              <br/>  
              <br/>                            
                                            <label for="inputPassword">请输入新密码</label>&nbsp;&nbsp;&nbsp;
               <input type="password"  id="inputPassword" placeholder="新密码" style="height:31px;width:200px" name="newpassword">
              <br/>                        
              <br/>  
              <br/>                            
                                           <label for="inputPassword"> 请确认新密码</label>&nbsp;&nbsp;&nbsp;
               <input type="password"  id="inputPassword" placeholder="新密码" style="height:31px;width:200px" name="newpassword1">
              
              <br/>  
              <br/>     
                <br/>   
                <button type="submit" class="btn btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确定&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
              </div>
            </form>
            
                        
                      
                </div>
              
              <!-- Slider ends -->

          </div>          
        </div>
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >Website Template</a></div>


        

       
       
      </div>
    </div>

  </div>
  
  <!-- Mainbar ends -->
<div class="clearfix"></div>
  <!-- Foot starts -->             
   
		
		<div class="row-fluid">
			<div class="span12">
				<hr class="visible-desktop">
				<div class="copy" }>   
				<p align="center">版权归广东海洋大学信息管理与信息系统1121班&copy <a href="http://blog.csdn.net/sunshinegyan/" target="_blank" title="nieshuangyan">nieshuangyan</a></p></div>
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
<script src="js/custom.js"></script> <!-- Main js file -->
</body>



</html>
