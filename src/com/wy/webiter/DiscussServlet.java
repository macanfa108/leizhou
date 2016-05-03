package com.wy.webiter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wy.dao.DiscussDao;
import com.wy.bean.DiscussBean;
import com.wy.tool.Chinese;

public class DiscussServlet extends HttpServlet {

	private int method;

	private DiscussDao disussDao = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("32131");
		this.method = Integer.parseInt(request.getParameter("method"));
		System.out.println("32131");
		if (method == 0) {
			this.addDisuss(request, response);// ��̨����ӹ�������
		}
		if (method == 1) {
			this.deleteDisuss(request, response);// ��̨�� ɾ����������
		}
		if (method == 2) {
			this.updateDisuss(request, response);//	��̨�� �ö���������
		}
		if (method == 3) {
			this.topDisuss(request, response);//	��̨�� �ö���������
		}
		
		
		

	}

//	��̨�� �޸���������
	public void updateDisuss(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		DiscussBean disussForm = new DiscussBean();
		disussDao = new DiscussDao();
		disussForm.setDiscussId(Integer.valueOf(request.getParameter("id")));
		disussForm.setDiscussTitle(Chinese.toChinese(request
				.getParameter("discussTitle")));
		disussForm.setDiscussContent(Chinese.toChinese(request
				.getParameter("discussContent")));
		if (disussDao.operationDiscuss("�޸�", disussForm)) {
			out
					.print("<script language=javascript>alert('�޸Ĺ�����Ϣ�ɹ���');window.location.href='backstage_DiscussSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('�޸Ĺ�����Ϣʧ�ܣ�');history.go(-1);</script>");
		}

		
	
	}
	
	
	//��̨�� ɾ����������
	public void deleteDisuss(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		DiscussBean disussForm = new DiscussBean();
		disussDao = new DiscussDao();
		disussForm.setDiscussId(Integer.valueOf(request.getParameter("id")));
		if (disussDao.operationDiscuss("ɾ��", disussForm)) {
			out
					.print("<script language=javascript>alert('ɾ��������Ϣ�ɹ���');window.location.href='backstage_DiscussSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('ɾ��������Ϣʧ�ܣ�');history.go(-1);</script>");
		}

	}
	
	//��̨���ö���������
		public void topDisuss(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html;charset=GBK");
			PrintWriter out = response.getWriter();
			DiscussBean disussForm = new DiscussBean();
			disussDao = new DiscussDao();
			disussForm.setDiscussId(Integer.valueOf(request.getParameter("id")));
			if (disussDao.operationDiscuss("�ö�", disussForm)) {
				out
						.print("<script language=javascript>alert('�ö�����ɹ���');window.location.href='backstage_DiscussSelect.jsp';</script>");
			} else {
				out
						.print("<script language=javascript>alert('�ö�����ʧ�ܣ�');history.go(-1);</script>");
			}

		}

	// ��̨�������������
	public void addDisuss(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		DiscussBean disussForm = new DiscussBean();
		disussDao = new DiscussDao();
		disussForm.setDiscussTitle(Chinese.toChinese(request
				.getParameter("discussTitle")));
		disussForm.setDiscussContent(Chinese.toChinese(request
				.getParameter("discussContent")));
		disussForm.setDiscussTime(Chinese.toChinese(request
				.getParameter("discussTime")));
		String result = "��ӹ���ʧ�ܣ�";
		if (disussDao.operationDiscuss("���", disussForm)) {
			result = "��ӹ���ɹ���";
		}
		request.setAttribute("result", result);
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("backstage_DiscussAdd.jsp");
		requestDispatcher.forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
