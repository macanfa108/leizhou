<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="com.wy.bean.UserBean"/>
<jsp:directive.page import="com.wy.bean.AnnounceBean" />

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>雷州文化后台管理-添加公告</title>
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
<jsp:useBean id="countTime" scope="page" class="com.wy.tool.CountTime"></jsp:useBean>
	<jsp:useBean id="announce" scope="page" class="com.wy.dao.AnnounceDao"></jsp:useBean>
<script type="text/javascript">
	function shenheForm(id) {
		if (confirm("确定要审核通过此话题？")) {
			window.location.href = "AnnounceServlet?method=2&id=" + id;
		}
	}
</script>
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
						<%
						session.setAttribute("u","admin");
						%>
						<li><a href="index.jsp?u="+session.getAttribute("u") >首页</a></li>
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
                <li><a href="backstage_UserBeijinSelect.jsp">用户被禁列表</a></li>
                <li><a href="Backstage_updatePassword.jsp">修改密码</a></li>
              </ul>
            </li> 
          </ul>

        </div>



  </div>
  <%

  AnnounceBean articleForm=announce.queryAnnounce(Integer.valueOf(request.getParameter("id")));
 // int id=Integer.valueOf(request.getParameter("id"));
  
%>
 
  <div class="mainbar container">
          
                <form  align="center" class="form-search s-widget" name="form" method="post" action="" onSubmit="return userCheck()">
              <h1>审核公告</h1>
              <div class="input-append">
                                           公告标题&nbsp;&nbsp;
               <input type="text"   id="inputPassword" value="<%=articleForm.getAnnounceTitle()%>" style="height:31px;width:500px" name="discussTitle">
                
               <br/>                        
              <br/>  
              <br/>                            
               公告内容&nbsp;&nbsp;                             
               <textarea  id="inputPassword"  cols="80" rows="15" style="width:500px" name="discussContent" ><%=articleForm.getAnnounceContent()%></textarea>
              <br/>                        
              <br/>  
              <br/>                            
                                        发布时间&nbsp;&nbsp;
               <input type="text"  id="inputPassword" placeholder="" style="height:31px;width:500px" name="discussTime"  value="<%=articleForm.getAnnounceTime() %>" size="30" readonly="readonly" onclick="alert('此文本框已设为只读，管理员不能修改')">
              
              <br/>  
              <br/>     
                <br/>   
             <%--  <button type="submit" class="btn btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;审核&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
              --%> 
              <td><div align="center" bgcolor="#009393"><a class="btn btn-info" href="javascript:shenheForm('<%=request.getParameter("id")%>')" title="审核通过" >审核</a></div></td>
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
