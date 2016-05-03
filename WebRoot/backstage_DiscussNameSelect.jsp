<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="com.wy.bean.DiscussBean"/>
<jsp:directive.page import="java.util.List"/>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  <meta charset="gb2312">
  <!-- Title and other stuffs -->
  <title>�����Ļ���̨����</title>
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
  
  
  
  <jsp:useBean id="pagination" class="com.wy.tool.MyPagination" scope="session"></jsp:useBean>
<jsp:useBean id="discussDao" class="com.wy.dao.DiscussDao" scope="session"></jsp:useBean>
<jsp:useBean id="chinese" class="com.wy.tool.Chinese" scope="session"></jsp:useBean>
<%
String str=(String)request.getParameter("Page");
String s=(String)request.getParameter("discussName");
s=chinese.toChinese(s);
int Page=1;
List list=null;
if(str==null){
	list=discussDao.queryDiscuss(s);
	int pagesize=10;      //ָ��ÿҳ��ʾ�ļ�¼��
	list=pagination.getInitPage(list,Page,pagesize);     //��ʼ����ҳ��Ϣ
}else{
	Page=pagination.getPage(str);
	list=pagination.getAppointPage(Page);     //��ȡָ��ҳ������
}
%>
  
<script type="text/javascript">
function deleteForm(id){
if(confirm("ȷ��Ҫɾ���˹�����Ϣ��")){
window.location.href="DiscussServlet?method=1&id="+id;
}
}
</script>

<!-- 
<script type="text/javascript">
function topForm(id){
if(confirm("ȷ��Ҫ�ö��˹�����Ϣ��")){
window.location.href="DiscussServlet?method=3&id="+id;
}
}
</script>
 -->
  
</head>

<body >


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
              <li><a href="backstage_DiscussAdd.jsp">���ӹ���</a></li>
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
            
  <div class="box-body">  
  <%-- 
  <%
if(pagination.getRecordSize()<=0){
	out.println("<p align=center><img src=images/icon.gif width=20 height=20>&nbsp;&nbsp;&nbsp;&nbsp;û���û�����ע�ᣡ</p>");
}else{
 out.println("<h5>&nbsp;&nbsp;&nbsp;&nbsp;<img src=images/icon.gif width=20 height=20>&nbsp;&nbsp;�û��б�</h5>");
%>
--%>
<div class="box-body">
				<form align="right" class="form-search s-widget" name="form1" method="post" action="backstage_DiscussNameSelect.jsp" onSubmit="return userCheck()">
				<span style="width:100px;height:50px;bgcolor:yellow;float:left;"font-size:16pt><h1>�����б�</h1></span>
              <div class="input-append">
              
                <input type="text"  id="inputPassword" placeholder="�����빫����" style="height:31px;width:200px" name="discussName">
                <button type="submit" class="btn btn-danger">��ѯ</button>
              </div>
            </form>
		  
            <table align="center" width="1054" border="1"  cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#00FFFF">
            <tr align="center" height="45" bgcolor="#003D79">
              <td width="225" >�������</td>
              <td width="225" >����</td>
              <td width="225" >����ʱ��</td>
                <td width="225" >����</td>
            </tr>
     <%for(int i=0;i<list.size();i++){ 
         DiscussBean discussForm=(DiscussBean)list.get(i);
         
         String content=discussForm.getDiscussContent();
      
         if(content.length()>9){
         content=content.substring(0,9)+"...";
         
     
         }
         %> 
         <tr  bgcolor="#009393">
              <td height="45" bgcolor="#009393" ><div align="left" ><%=discussForm.getDiscussTitle()%></div></td>
              <td><div align="center"><%=content%></div></td>
              <td title="�����쿴��ϸ���ݣ�������Ӧ���޸�����"bgcolor="#009393"><div align="center"><%=discussForm.getDiscussTime()%></div></td>
              <td><div align="center" bgcolor="#009393"><a href="Front1_gonggaozhidengxs.jsp?id=<%=discussForm.getDiscussId()%>" title="���Բ鿴��Ӧ�Ĺ�������">�ö�</a>&nbsp;&nbsp;<a href="javascript:deleteForm('<%=discussForm.getDiscussId()%>')">ɾ��</a></div></td>
            </tr>
			<%} %>
			
          
          </table>
	<!-- ��ʾ��ҳ������ -->
<br/>
<p align="center"><%=pagination.printCtrl(Page) %> </p>
<br/>
	</td>
        </tr>
      </table>
      
  </tr>
</table>
    

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