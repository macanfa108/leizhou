<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="com.wy.bean.UserBean"/>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>�����Ļ���̨����-�޸�����</title>
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


<!--��ɫ���򲿷�-->
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



        <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

        <div class="s-content">

          <ul id="nav">
            <!-- Main menu with font awesome icon -->
            <li class="has_sub"><a href="#" class="open br-red"><i class="icon-camera"></i> ���Ź���<span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              
              <ul>
                <li><a href="backstage_NewsAdd.jsp">���ŷ���</a></li>
                <li><a href="backstage_NewsSelect.jsp">�����б�</a></li>
              </ul>
            </li>

            <li class="has_sub"><a href="#" class="br-blue"><i class="icon-list-alt"></i> ��Ʒ����  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              <ul>
                <li><a href="backstage_ThingAdd.jsp">��Ʒ����</a></li>
                <li><a href="backstage_ThingSelect.jsp">��Ʒ�б�</a></li>
              </ul>
            </li>  

            <li class="has_sub"><a href="#" class="br-green"><i class="icon-envelope-alt"></i>������� <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              <ul>
              <li><a href="backstage_DiscussAdd.jsp">��ӹ���</a></li>
                <li><a href="backstage_DiscussSelect.jsp">�����б�</a></li>
              </ul>
            </li>              

            <li class="has_sub"><a href="#" class="br-orange"><i class="icon-comments"></i> �������<span class="pull-right"><i class="icon-chevron-right"></i></span></a>
              <ul>
                <li><a href="backstage_AnnounceSelect.jsp">�����б�</a></li>
                <li><a href="backstage_AnnounceSelectWeishh.jsp">��������б�</a></li>
                <li><a href="backstage_RestoreSelect.jsp">�����б�</a></li>
              </ul>
            </li> 

            <li class="has_sub"><a href="#" class="br-yellow"><i class="icon-user"></i> ��ȫ���� <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
			<ul>
                <li><a href="backstage_userSelect.jsp">�û��б�</a></li>
                <li><a href="Backstage_updatePassword.jsp">�޸�����</a></li>
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
            <!--  <h1>�޸�����</h1> -->
              <div class="input-append">
              
                                          <label for="inputPassword">�������û���</label>&nbsp;&nbsp;&nbsp;
               <input type="text"  id="inputPassword" placeholder="��¼�û���" style="height:31px;width:200px" name="name">
                
               <br/>                        
              <br/>  
              <br/>                            
                                            <label for="inputPassword">������������</label>&nbsp;&nbsp;&nbsp;
               <input type="password"  id="inputPassword" placeholder="������" style="height:31px;width:200px" name="newpassword">
              <br/>                        
              <br/>  
              <br/>                            
                                           <label for="inputPassword"> ��ȷ��������</label>&nbsp;&nbsp;&nbsp;
               <input type="password"  id="inputPassword" placeholder="������" style="height:31px;width:200px" name="newpassword1">
              
              <br/>  
              <br/>     
                <br/>   
                <button type="submit" class="btn btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ȷ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
				<p align="center">��Ȩ��㶫�����ѧ��Ϣ��������Ϣϵͳ1121��&copy <a href="http://blog.csdn.net/sunshinegyan/" target="_blank" title="nieshuangyan">nieshuangyan</a></p></div>
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
