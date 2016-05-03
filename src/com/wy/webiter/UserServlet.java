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
			checkConsumer(request, response); // �û���¼����
		}
		if (method == 1) {
			registerConsumer(request, response);// �û�ע�����
		}
		if (method == 2) {
			queryConsumerForm(request, response);// ��̨�����У���һ���û����н��
		}
		if (method == 3) {
			deleteConsumerForm(request, response);// ��̨�����У����û����н�ֹ����
		}
		if (method == 4) {
			queryConsumerHostForm(request, response); // ��̨�����У��Բ����Ĳ�ѯ����
		}
		if (method == 5) {
			updateConsumerHostForm(request, response); // ��̨�����У��Բ�����Ϣ���޸Ĳ���
		}
		if (method == 6) {
			front_updateConsumerForm(request, response); // ǰ̨�����У��û��Ե�¼�ý����޸�
		}
		if (method == 7) {
			front_selectConsumerForm(request, response); // ��̨�����У��û������ֽ����޸�
		}

	}

	// ǰ̨�����У��û��Ե�¼�ý����޸�
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
					.print("<script language=javascript>alert('�޸��û��ɹ��������µ�¼��');window.location.href='dealwith.jsp?sign=2';</script>");
		} else {
			out
					.print("<script language=javascript>alert('�޸��û���Ϣʧ�ܣ�');history.go(-1);</script>");
		}

	}

	// ��̨�����У��Բ�����Ϣ���޸Ĳ���
	public void updateConsumerHostForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		UserBean form = new UserBean();
		userDao = new UserDao();
		
		form.setName(Chinese.toChinese(request.getParameter("name")));
		form.setPassword(Chinese.toChinese(request.getParameter("newpassword")));
		
		if (!request.getParameter("newpassword").equals(request.getParameter("newpassword1"))) {

			out.print("<script language=javascript>alert('�������������벻һ�£�');history.go(-1);</script>");
		
	
		}
		else{
		if (userDao.updateConsumerForm(form)) {
			out.print("<script language=javascript>alert('�޸�����ɹ���');window.location.href='backstage_userSelect.jsp';</script>");
			
			
		}

		
		//request.setAttribute("form", userDao.getConsumerForm(form
				//.getTelNumber()));

		//RequestDispatcher requestDispatcher = request
		//		.getRequestDispatcher("dealwith.jsp");
		//requestDispatcher.forward(request, response);
		}
	}

	// ��̨�����У����û����н�ֹ����
	public void deleteConsumerForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		String telNumber = Chinese.toChinese(request.getParameter("account"));
		userDao = new UserDao();
		PrintWriter out = response.getWriter();
		if (userDao.deleteConsumerForm("����",telNumber)) {
			out
					.print("<script language=javascript>alert('��ֹ���û��ɹ���');window.location.href='backstage_userSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('��ֹ�û�ʧ�ܣ�');history.go(-1);</script>");
		}
	
	}

	// ��̨�����У��Բ����Ĳ�ѯ����
	public void front_selectConsumerForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("back_userSelectName.jsp");
		requestDispatcher.forward(request, response);

	}
	
	
	

	// ��̨�����У���һ���û����н��
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
		if (userDao.deleteConsumerForm("��ͨ",telNumber)) {
			out
					.print("<script language=javascript>alert('���û�����ɹ���');window.location.href='backstage_userSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('����û�ʧ�ܣ�');history.go(-1);</script>");
		}
	}

	// �û�ע�����
	public void registerConsumer(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		UserBean form = new UserBean();
		userDao = new UserDao();
		form.setTelNumber(Chinese.toChinese(request.getParameter("telNumber")));
		form.setName(Chinese.toChinese(request.getParameter("account")));
		form.setPassword(Chinese.toChinese(request.getParameter("password")));
		form.setRealName(Chinese.toChinese(request.getParameter("realName")));
		form.setStatus("��ͨ");
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
		//ת��һ��ҳ
		RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("backstage_UserNameSelect.jsp");
		requestDispatcher.forward(request, response);

	}

	// �û���¼����
	public void checkConsumer(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		//����û�������
		
		
		String account = request.getParameter("account");
		System.out.print("daole");
		System.out.print(account);
		userDao = new UserDao();
		//�����û�������ѯ�������û���Ϣ
		UserBean consumerForm = userDao.getConsumerForm(account);
		//ע��ǰ̨�б����û���Ҫ���ж�
		if (consumerForm == null) {
			//��ֵ��information
			request.setAttribute("information", "��������û��������ڣ����������룡");
		} else if (!consumerForm.getPassword().equals(
				request.getParameter("password"))) {
			request.setAttribute("information", "������ĵ�¼�����������������룡");
		} else if (!consumerForm.getStatus().equals("����Ա")) {
			request.setAttribute("information", "��û��Ȩ�޽����̨����ϵͳ��");}
	    else {

			request.setAttribute("form", consumerForm);
		}
		
		//ת��һ��ҳ
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("dealwith.jsp");
		requestDispatcher.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
