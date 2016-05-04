<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
<%
	Integer sign = Integer.valueOf(request.getParameter("sign"));
	if (sign == 0) {
		if (request.getAttribute("information") != null) {
			String information = (String) request
			.getAttribute("information");
			//提示框提示失败，页面返回用户登入页面
			out.print("<script language=javascript>alert('"
			+ information + "');history.go(-1);</script>");
		} else if(request.getAttribute("infor") != null){
			session.setAttribute("form", request.getAttribute("form"));
			//重新定位到首页面head_main.jsp
			session.setAttribute("u", request.getAttribute("uName"));
			out.print("<script language=javascript>alert('用户登录成功！');window.location.href='index.jsp?u="+session.getAttribute("u")+"';</script>");
		}else{
			session.setAttribute("form", request.getAttribute("form"));
			//重新定位到首页面head_main.jsp
			out.print("<script language=javascript>alert('管理员登录成功！');window.location.href='backstage_userSelect.jsp';</script>");
		}
	}
	if (sign == 1) {
		String result = (String) request.getAttribute("result");
		if (result.equals("success")) {
			session.setAttribute("form", request.getAttribute("form"));
			out
			.print("<script language=javascript>alert('用户注册成功！');window.location.href='index.jsp';</script>");
		}
		if (result.equals("fail")) {
			out
			.print("<script language=javascript>alert('用户注册失败！');history.go(-1);</script>");
		}
	}

	if (sign == 2) {
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
	if (sign == 3) {
		//com.wy.bean.VoteForm voteForm = new com.wy.form.VoteForm();
		//com.wy.dao.VoteDao voteDao = new com.wy.dao.VoteDao();
		String[] voteID = request.getParameterValues("voteID");
		if (voteID == null) {
			out
			.print("<script language=javascript>alert('请进行投票！');history.go(-1);</script>");
		} else {
			for (int i = 0; i < voteID.length; i++) {
		//voteForm.setId(Integer.valueOf(voteID[i]));
		//voteDao.operationVote("投票", voteForm);
		}
		application.setAttribute("vote","voteSuccess");
			out
			.print("<script language=javascript>alert('投票成功，请重新查询投票结果！');window.location.href='head_VoteQuery.jsp';</script>");
		}

	}

	if (sign == 4) {
	}
%>
