package com.wy.webiter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wy.dao.RestoreDao;
import com.wy.bean.RestoreBean;
import com.wy.tool.Chinese;

public class RestoreServlet extends HttpServlet {

	private int method;

	private RestoreDao restoreDao = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("32131");
		this.method = Integer.parseInt(request.getParameter("method"));
		System.out.println("32131");
		
		if (method == 1) {
			this.deleteAnnounce(request, response);// ��̨�� ɾ����������
		}
		/*
		if (method == 2) {
			this.updateAnnounce(request, response);//	��̨�� �޸Ĺ�������
		}
		if (method == 3) {
			this.topAnnounce(request, response);//	��̨�� �ö���������
		}
		*/
		
		}
		
		
		

	


	
	
	//��̨�� ɾ����������
	public void deleteAnnounce(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		RestoreBean announceForm = new RestoreBean();
		restoreDao = new RestoreDao();
		Integer id=Integer.valueOf(request.getParameter("id"));
		//System.out.print(id);
		if (restoreDao.deleteDiscuss(id)){
			out
					.print("<script language=javascript>alert('ɾ�����۳ɹ���');window.location.href='backstage_RestoreSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('ɾ������ʧ�ܣ�');history.go(-1);</script>");
		}

	}
	
	//��̨���ö���������
	/*
		public void topAnnounce(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html;charset=GBK");
			PrintWriter out = response.getWriter();
			AnnounceBean disussForm = new AnnounceBean();
			announceDao = new AnnounceDao();
			disussForm.setAnnounceId(Integer.valueOf(request.getParameter("id")));
			if (announceDao.operationDiscuss("�ö�", disussForm)) {
				out
						.print("<script language=javascript>alert('�ö�����ɹ���');window.location.href='backstage_AnnounceTopSelect.jsp';</script>");
			} else {
				out
						.print("<script language=javascript>alert('�ö�����ʧ�ܣ�');history.go(-1);</script>");
			}

		}
		*/

	/* ��̨�������������
	public void addAnnounce(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		AnnounceBean disussForm = new AnnounceBean();
		announceDao = new AnnounceDao();
		disussForm.setAnnounceTitle(Chinese.toChinese(request
				.getParameter("announceTitle")));
		disussForm.setAnnounceContent(Chinese.toChinese(request
				.getParameter("announceContent")));
		disussForm.setAnnounceTime(Chinese.toChinese(request
				.getParameter("announceTime")));
		String result = "��ӹ���ʧ�ܣ�";
		if (announceDao.operationDiscuss("���", disussForm)) {
			result = "��ӹ���ɹ���";
		}
		request.setAttribute("result", result);
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("backstage_DiscussAdd.jsp");
		requestDispatcher.forward(request, response);

	}
	*/

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}

