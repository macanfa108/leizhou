package com.wy.webiter;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.wy.dao.UserDao;
import com.wy.bean.UserBean;
import com.wy.tool.Chinese;

public class UserServlet extends HttpServlet {
	private UserDao userDao = null;
	private int method;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		method = Integer.parseInt(request.getParameter("method"));
		if (method == 0) {
			checkConsumer(request, response); // 用户登录操作
		}
		if (method == 1) {
			registerConsumer(request, response);// 用户注册操作
		}
		if (method == 2) {
			queryConsumerForm(request, response);// 后台操作中，对一个用户进行解禁
		}
		if (method == 3) {
			deleteConsumerForm(request, response);// 后台操作中，对用户进行禁止操作
		}
		if (method == 4) {
			queryConsumerHostForm(request, response); // 后台操作中，对博主的查询操作
		}
		if (method == 5) {
			updateConsumerHostForm(request, response); // 后台操作中，对博主信息的修改操作
		}
		if (method == 6) {
			front_updateConsumerForm(request, response); // 前台操作中，用户对登录用进行修改
		}
		if (method == 7) {
			front_selectConsumerForm(request, response); // 后台操作中，用户按名字进行修改
		}

	}

	// 前台操作中，用户对登录用进行修改
	public void front_updateConsumerForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		UserBean form = new UserBean();
		userDao = new UserDao();
		form.setTelNumber(Chinese.toChinese(request.getParameter("telNumber")));
		form.setName(Chinese.toChinese(request.getParameter("name")));
		form.setPassword(Chinese.toChinese(request.getParameter("password")));
		form.setRealName(Chinese.toChinese(request.getParameter("realName")));
		form.setId(Integer.valueOf(request.getParameter("id")));
		if (userDao.front_updateConsumerForm(form)) {
			out
					.print("<script language=javascript>alert('修改用户成功，请重新登录！');window.location.href='dealwith.jsp?sign=2';</script>");
		} else {
			out
					.print("<script language=javascript>alert('修改用户信息失败！');history.go(-1);</script>");
		}

	}

	// 后台操作中，对博主信息的修改操作
	public void updateConsumerHostForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		UserBean form = new UserBean();
		userDao = new UserDao();
		
		form.setName(Chinese.toChinese(request.getParameter("name")));
		form.setPassword(Chinese.toChinese(request.getParameter("newpassword")));
		
		if (!request.getParameter("newpassword").equals(request.getParameter("newpassword1"))) {

			out.print("<script language=javascript>alert('两次输入新密码不一致！');history.go(-1);</script>");
		
	
		}
		else{
		if (userDao.updateConsumerForm(form)) {
			out.print("<script language=javascript>alert('修改密码成功！');window.location.href='backstage_userSelect.jsp';</script>");
			
			
		}

		
		//request.setAttribute("form", userDao.getConsumerForm(form
				//.getTelNumber()));

		//RequestDispatcher requestDispatcher = request
		//		.getRequestDispatcher("dealwith.jsp");
		//requestDispatcher.forward(request, response);
		}
	}

	// 后台操作中，对用户进行禁止操作
	public void deleteConsumerForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		String telNumber = Chinese.toChinese(request.getParameter("account"));
		userDao = new UserDao();
		PrintWriter out = response.getWriter();
		if (userDao.deleteConsumerForm("被禁",telNumber)) {
			out
					.print("<script language=javascript>alert('禁止此用户成功！');window.location.href='backstage_userSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('禁止用户失败！');history.go(-1);</script>");
		}
	
	}

	// 后台操作中，对博主的查询操作
	public void front_selectConsumerForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("back_userSelectName.jsp");
		requestDispatcher.forward(request, response);

	}
	
	
	

	// 后台操作中，对一个用户进行解禁
	public void queryConsumerForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/*userDao = new UserDao();
		String account = Chinese.toChinese(request.getParameter("account"));
		request.setAttribute("form", userDao.getConsumerForm(account));
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("back_consumerSelectForm.jsp");
		requestDispatcher.forward(request, response);
		*/
		response.setContentType("text/html;charset=GBK");
		String telNumber = Chinese.toChinese(request.getParameter("account"));
		userDao = new UserDao();
		PrintWriter out = response.getWriter();
		if (userDao.deleteConsumerForm("普通",telNumber)) {
			out
					.print("<script language=javascript>alert('此用户解禁成功！');window.location.href='backstage_userSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('解禁用户失败！');history.go(-1);</script>");
		}
	}

	// 用户注册操作
	public void registerConsumer(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		UserBean form = new UserBean();
		userDao = new UserDao();
		form.setTelNumber(Chinese.toChinese(request.getParameter("telNumber")));
		form.setName(Chinese.toChinese(request.getParameter("account")));
		form.setPassword(Chinese.toChinese(request.getParameter("password")));
		form.setRealName(Chinese.toChinese(request.getParameter("realName")));
		form.setStatus("普通");
		String result = "fail";
		if (userDao.getConsumerForm(form.getTelNumber()) == null) {
			if (userDao.addConsumerForm(form)) {
				request.setAttribute("form", userDao.getConsumerForm(form
						.getTelNumber()));
				result = "success";
			}
		}
		request.setAttribute("result", result);
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("dealwith.jsp");
		requestDispatcher.forward(request, response);
	}
	
	public void queryConsumerHostForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		request.setAttribute("userName", request.getParameter("selectName"));
		//转向一个页
		RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("backstage_UserNameSelect.jsp");
		requestDispatcher.forward(request, response);

	}

	// 用户登录操作
	public void checkConsumer(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		//获得用户名参数
		
		
		String account = request.getParameter("account");
		System.out.print("daole");
		System.out.print(account);
		userDao = new UserDao();
		//根据用户名，查询出所有用户信息
		UserBean consumerForm = userDao.getConsumerForm(account);
		//注意前台有被禁用户，要做判断
		if (consumerForm == null) {
			//传值给information
			request.setAttribute("information", "您输入的用户名不存在，请重新输入！");
		} else if (!consumerForm.getPassword().equals(
				request.getParameter("password"))) {
			request.setAttribute("information", "您输入的登录密码有误，请重新输入！");
		} else if (!consumerForm.getStatus().equals("管理员")) {
			request.setAttribute("information", "您没有权限进入后台管理系统！");}
	    else {

			request.setAttribute("form", consumerForm);
		}
		
		//转向一个页
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("dealwith.jsp");
		requestDispatcher.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
