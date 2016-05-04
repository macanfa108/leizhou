
package com.wy.webiter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.wy.dao.ThingDao;
import com.wy.dao.RestoreDao;
import com.wy.bean.ThingBean;
import com.wy.tool.Chinese;

public class ThingServlet extends HttpServlet {

	private ThingDao thingDao = null;
	Chinese chinese=new Chinese();

	//private ArticleTypeDao articleTypeDao = null;

	private RestoreDao restoreDao = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int method = Integer.parseInt(request.getParameter("method"));
		if (method == 0) {
			//this.addArticleType(request, response);
			this.addArticleType(request, response);
		}
		if (method == 1) {
			//this.deleteArticleType(request, response);
		}
		if (method == 2) {
			this.addArticle(request, response);
		}
		if (method == 3) {
			this.deleteArticle(request, response);
		}
		if (method == 4) {
			//this.updateArticle(request, response);
		}
		if (method == 5) {
			this.headAddNumberArticle(request, response);
		}
		if (method == 6) {
			//this.deleteRestore(request, response);
		}
		if (method == 7) {
			//this.HeadAddRestore(request, response);
		}
		if (method == 8) {
			this.topThing(request, response);
		}
	}
	
	public void topThing(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		out.print("<script language=javascript>alert('�ö���Ʒ�ɹ���');window.location.href='head_ArticleForm.jsp?id="+request.getParameter("articleId")+"';</script>");
		
	}
    /*
	public void HeadAddRestore(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		restoreDao = new RestoreDao();
		RestoreBean restoreForm = new RestoreBean();
		restoreForm.setArticleId(Integer.valueOf(request.getParameter("articleId")));
		restoreForm.setReAccount(request.getParameter("accountId"));
		restoreForm.setReTitle(Chinese.toChinese(request.getParameter("reTitle")));
		restoreForm.setReContent(Chinese.toChinese(request.getParameter("reContent")));
		if (restoreDao.operationRestore("���", restoreForm)) {
			out
					.print("<script language=javascript>alert('��ӻظ���Ϣ�ɹ��������²�ѯ��');window.location.href='head_ArticleForm.jsp?id="+request.getParameter("articleId")+"';</script>");
		} else {
			out
					.print("<script language=javascript>alert('��ӻظ���Ϣʧ�ܣ�');history.go(-1);</script>");
		}

	}
	*/
/*
	public void deleteRestore(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		restoreDao = new RestoreDao();
		RestoreForm restoreForm = new RestoreForm();
		restoreForm.setId(Integer.valueOf(request.getParameter("id")));
	
		if (this.restoreDao.operationRestore("ɾ��", restoreForm)) {
			out
					.print("<script language=javascript>alert('ɾ���ظ��ɹ��������²�ѯ��');window.location.href='back_RestoreSelect.jsp?id="
							+ request.getParameter("idd") + "';</script>");
		} else {
			out
					.print("<script language=javascript>alert('ɾ���ظ�ʧ�ܣ�');history.go(-1);</script>");
		}

	}
*/
	// ���ӷ��ʴ���
	public void headAddNumberArticle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ThingBean thingForm = new ThingBean();
		thingDao = new ThingDao();
		thingForm.setThingId(Integer.valueOf(request.getParameter("id")));
		thingDao.operationThing("����", thingForm);
		request.setAttribute("form", thingDao.queryThingForm(Integer
				.valueOf(request.getParameter("id"))));
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("headstage_ThingSelect.jsp");
		requestDispatcher.forward(request, response);
	}
/*
	public void updateArticle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		ArticleForm articleForm = new ArticleForm();
		articleForm.setId(Integer.valueOf(request.getParameter("id")));
		articleForm.setTypeId(Integer.valueOf(request.getParameter("typeId")));
		articleForm.setTitle(Chinese.toChinese(request.getParameter("title")));
		articleForm.setContent(Chinese.toChinese(request
				.getParameter("content")));
		articleDao = new ArticleDao();
		if (articleDao.operationArticle("�޸�", articleForm)) {
			out
					.print("<script language=javascript>alert('�޸����³ɹ��������²�ѯ��');window.location.href='back_ArticleSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('�޸�����ʧ�ܣ�');history.go(-1);</script>");
		}
	}
	*/

	// ��̨ɾ������
	public void deleteArticle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		ThingBean thingForm = new ThingBean();
		thingForm.setThingId(Integer.valueOf(request.getParameter("id")));
		thingDao = new ThingDao();
		if (thingDao.operationThing("ɾ��", thingForm)) {
			out
					.print("<script language=javascript>alert('ɾ�����ųɹ��������²�ѯ��');window.location.href='backstage_ThingSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('ɾ������ʧ�ܣ�');history.go(-1);</script>");
		}
	}

	//��̨�������
	public void addArticle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ThingBean thingForm = new ThingBean();
		thingDao = new ThingDao();
		/*
		thingForm.setTypeId(Integer.valueOf(request.getParameter("typeId")));
		thingForm.setThingName(Chinese.toChinese(request.getParameter("thingname")));
		thingForm.setPhotoURL(Chinese.toChinese(request.getParameter("photoURL")));
		thingForm.setLikeNum(0);
		thingForm.setThingContent(Chinese.toChinese(request.getParameter("thingContent")));
		thingForm.setThingTime(Chinese.toChinese(request.getParameter("thingTime")));
		
		String result = "�������ʧ�ܣ�";
		if (thingDao.operationArticle("���", thingForm)) {
			result = "������ӳɹ���";
		}
		request.setAttribute("result", result);
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("backstage_ThingSelect.jsp");
		requestDispatcher.forward(request, response);
		*/
		
		com.jspsmart.upload.SmartUpload su = new com.jspsmart.upload.SmartUpload();

		Integer maxID = 1;
		if (thingDao.MaxQueryID() != null) {
			maxID = thingDao.MaxQueryID();
		}
		String result = "�ϴ�����Ƭ��ʽ�ʹ�С������,�ϴ���Ƭʧ��!";
		String type = null;
		String imageType[] = { "JPG", "jpg", "gif", "bmp", "BMP" };
		String filedir = "file2/";
		long maxsize = 2 * 1024 * 1024; // ����ÿ���ϴ��ļ��Ĵ�С��Ϊ2MB
		try {
			su.initialize(this.getServletConfig(), request, response);
			su.setMaxFileSize(maxsize); // �����ϴ��ļ��Ĵ�С
			su.upload(); // �ϴ��ļ�
			Files files = su.getFiles(); // ��ȡ���е��ϴ��ļ�
			for (int i = 0; i < files.getCount(); i++) { // �����ȡ�ϴ����ļ�
				File singlefile = files.getFile(i);
				type = singlefile.getFileExt();

				for (int ii = 0; ii < imageType.length; ii++) {
					if (imageType[ii].equals(type)) {
						if (!singlefile.isMissing()) { // ���ѡ�����ļ�
							
							filedir = filedir + maxID + "."
									+ singlefile.getFileExt();
							String s=su.getRequest().getParameter("typename");
							thingForm.setTypeId(Integer.parseInt(s));
							thingForm.setThingName(su.getRequest().getParameter("thingname"));
							thingForm.setThingContent(su.getRequest().getParameter("thingContent"));
							thingForm.setThingTime(su.getRequest().getParameter("thingTime"));
							thingForm.setPhotoURL(filedir);
							thingForm.setLikeNum(0);
							
							if (thingDao.operationThing("���", thingForm)) {
								singlefile.saveAs(filedir, File.SAVEAS_VIRTUAL);
								//result = "�ϴ���Ƭ�ɹ�!";
							}
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		//request.setAttribute("result", result);
		RequestDispatcher requestDispatcher = request
				.getRequestDispatcher("backstage_ThingSelect.jsp");
		requestDispatcher.forward(request, response);
	}

	/* // ��̨ɾ���������
	public void deleteArticleType(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		ArticleTypeForm ArticleTypeForm = new ArticleTypeForm();
		ArticleTypeForm.setId(Integer.valueOf(request.getParameter("id")));
		articleTypeDao = new ArticleTypeDao();
		if (articleTypeDao.operationArticleType("ɾ��", ArticleTypeForm)) {
			out
					.print("<script language=javascript>alert('ɾ���������ɹ��������²�ѯ��');window.location.href='back_ArticleTypeSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('����Ҫ��������ڵ�����ɾ��,�ſ�ɾ�������');history.go(-1);</script>");
		}

	}
	*/

	// ��̨����������
	public void addArticleType(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/html;charset=GBK");
		//PrintWriter out = response.getWriter();
		ThingBean thingForm = new ThingBean();
		thingDao = new ThingDao();
		com.jspsmart.upload.SmartUpload su = new com.jspsmart.upload.SmartUpload();

		Integer maxID = 1;
		if (thingDao.MaxQueryID() != null) {
			maxID = thingDao.MaxQueryID();
		}
		String result = "�ϴ�����Ƭ��ʽ�ʹ�С������,�ϴ���Ƭʧ��!";
		String type = null;
		String imageType[] = { "JPG", "jpg", "gif", "bmp", "BMP" };
		String filedir = "file1/";
		long maxsize = 2 * 1024 * 1024; // ����ÿ���ϴ��ļ��Ĵ�С��Ϊ2MB
		try {
			su.initialize(this.getServletConfig(), request, response);
			su.setMaxFileSize(maxsize); // �����ϴ��ļ��Ĵ�С
			su.upload(); // �ϴ��ļ�
			Files files = su.getFiles(); // ��ȡ���е��ϴ��ļ�
			for (int i = 0; i < files.getCount(); i++) { // �����ȡ�ϴ����ļ�
				File singlefile = files.getFile(i);
				type = singlefile.getFileExt();

				for (int ii = 0; ii < imageType.length; ii++) {
					if (imageType[ii].equals(type)) {
						if (!singlefile.isMissing()) { 
							// ���ѡ�����ļ�
							filedir = filedir + maxID + "."
									+ singlefile.getFileExt();
							String s1 = su.getRequest().getParameter("typename");
							int n= Integer.parseInt(s1);
							String s2= su.getRequest().getParameter("thingname");
							String s3= su.getRequest().getParameter("thingContent");
							String s4= su.getRequest().getParameter("thingTime");

                          
							
							System.out.println(filedir);
							System.out.println(n);
							System.out.println(s2);
							System.out.println(s3);
							System.out.println(s4);
							System.out.println(n);
							

							//thingForm.setPhtoTime(su.getRequest().getParameter("phtoTime"));

							//thingForm.setPhotoDescription(photoDescription);
							
							//thingForm.setPhotoAddress(filedir);
							thingForm.setTypeName(Chinese.toChinese(su.getRequest().getParameter("typename")));
							thingForm.setThingName(Chinese.toChinese(su.getRequest().getParameter("thingname")));
							//thingForm.setPhotoURL(Chinese.toChinese(su.getRequest().getParameter("photoURL")));
							
							thingForm.setThingContent(Chinese.toChinese(su.getRequest().getParameter("thingContent")));
							thingForm.setThingTime(Chinese.toChinese(su.getRequest().getParameter("thingTime")));
							thingForm.setPhotoURL(filedir);
							thingForm.setLikeNum(0);
							
							
							}
						}
					}
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

