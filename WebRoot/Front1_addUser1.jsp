<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="style/CSS/style.css" type="text/css" rel="stylesheet">
<script language="javascript" type="text/javascript" src="js/validate.js"></script>
<title>�����Ļ�-�û�ע��</title>
<style type="text/css">
<!--
body {
	background-image: url(img/images/bg_01.gif);
}
-->
</style></head>

<body>
<div align="center">

<table width="800" height="689" border="0" cellpadding="0" cellspacing="0" background="img/images/enrol.jpg">
  <tr>
    <td>
	
	
	
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
	
	<form name="form" method="post" action="UserServlet?method=1&sign=1" onSubmit="return accountADD()">

  <table width="357" border="0" align="center">
    
    <tr>
      <td width="78" height="30">��¼����</td>
      <td width="263"><input name="account" type="text" class="inputinput" size="40"></td>
    </tr>
    <tr>
      <td height="30">��ʵ������</td>
      <td><input name="realName" type="text" class="inputinput"  size="40"></td>
    </tr>
    <tr>
      <td height="30">�ֻ��ţ�</td>
      <td><input name="telNumber" type="text" class="inputinput"  size="40"></td>
    </tr>
    <tr>
      <td height="30">��&nbsp;�룺</td>
      <td><input name="password" type="password" class="inputinput"  size="40"></td>
    </tr>
    <tr>
      <td height="30">�ظ����룺</td>
      <td><input name="repeatPassword" type="password" class="inputinput"  size="40"></td>
    </tr>

    <tr>
      <td height="30" colspan="2" align="center">
           <input type="image" class="inputinputinput" src="img/images/save.gif">
&nbsp;&nbsp;
 <a href="#" onClick="javascript:form.reset()"><img src="img/images/reset.gif"></a>
&nbsp;&nbsp;
<a href="#" onClick="window.location.href='../index.jsp'"><img src="img/images/back.gif"></a>

       </td>
    </tr> 
  </table></form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	</td>
  </tr>
</table>
</div>
</body>
</html>
