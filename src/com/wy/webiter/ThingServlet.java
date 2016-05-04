
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
		out.print("<script language=javascript>alert('置顶精品成功！');window.location.href='head_ArticleForm.jsp?id="+request.getParameter("articleId")+"';</script>");
		
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
		if (restoreDao.operationRestore("添加", restoreForm)) {
			out
					.print("<script language=javascript>alert('添加回复信息成功，请重新查询！');window.location.href='head_ArticleForm.jsp?id="+request.getParameter("articleId")+"';</script>");
		} else {
			out
					.print("<script language=javascript>alert('添加回复信息失败！');history.go(-1);</script>");
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
	
		if (this.restoreDao.operationRestore("删除", restoreForm)) {
			out
					.print("<script language=javascript>alert('删除回复成功，请重新查询！');window.location.href='back_RestoreSelect.jsp?id="
							+ request.getParameter("idd") + "';</script>");
		} else {
			out
					.print("<script language=javascript>alert('删除回复失败！');history.go(-1);</script>");
		}

	}
*/
	// 增加访问次数
	public void headAddNumberArticle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ThingBean thingForm = new ThingBean();
		thingDao = new ThingDao();
		thingForm.setThingId(Integer.valueOf(request.getParameter("id")));
		thingDao.operationThing("增加", thingForm);
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
		if (articleDao.operationArticle("修改", articleForm)) {
			out
					.print("<script language=javascript>alert('修改文章成功，请重新查询！');window.location.href='back_ArticleSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('修改文章失败！');history.go(-1);</script>");
		}
	}
	*/

	// 后台删除文章
	public void deleteArticle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		ThingBean thingForm = new ThingBean();
		thingForm.setThingId(Integer.valueOf(request.getParameter("id")));
		thingDao = new ThingDao();
		if (thingDao.operationThing("删除", thingForm)) {
			out
					.print("<script language=javascript>alert('删除新闻成功，请重新查询！');window.location.href='backstage_ThingSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('删除新闻失败！');history.go(-1);</script>");
		}
	}

	//后台添加文章
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
		
		String result = "文章添加失败！";
		if (thingDao.operationArticle("添加", thingForm)) {
			result = "文章添加成功！";
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
		String result = "上传的照片格式和大小有问题,上传照片失败!";
		String type = null;
		String imageType[] = { "JPG", "jpg", "gif", "bmp", "BMP" };
		String filedir = "file2/";
		long maxsize = 2 * 1024 * 1024; // 设置每个上传文件的大小，为2MB
		try {
			su.initialize(this.getServletConfig(), request, response);
			su.setMaxFileSize(maxsize); // 限制上传文件的大小
			su.upload(); // 上传文件
			Files files = su.getFiles(); // 获取所有的上传文件
			for (int i = 0; i < files.getCount(); i++) { // 逐个获取上传的文件
				File singlefile = files.getFile(i);
				type = singlefile.getFileExt();

				for (int ii = 0; ii < imageType.length; ii++) {
					if (imageType[ii].equals(type)) {
						if (!singlefile.isMissing()) { // 如果选择了文件
							
							filedir = filedir + maxID + "."
									+ singlefile.getFileExt();
							String s=su.getRequest().getParameter("typename");
							thingForm.setTypeId(Integer.parseInt(s));
							thingForm.setThingName(su.getRequest().getParameter("thingname"));
							thingForm.setThingContent(su.getRequest().getParameter("thingContent"));
							thingForm.setThingTime(su.getRequest().getParameter("thingTime"));
							thingForm.setPhotoURL(filedir);
							thingForm.setLikeNum(0);
							
							if (thingDao.operationThing("添加", thingForm)) {
								singlefile.saveAs(filedir, File.SAVEAS_VIRTUAL);
								//result = "上传照片成功!";
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

	/* // 后台删除文章类别
	public void deleteArticleType(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		ArticleTypeForm ArticleTypeForm = new ArticleTypeForm();
		ArticleTypeForm.setId(Integer.valueOf(request.getParameter("id")));
		articleTypeDao = new ArticleTypeDao();
		if (articleTypeDao.operationArticleType("删除", ArticleTypeForm)) {
			out
					.print("<script language=javascript>alert('删除文章类别成功，请重新查询！');window.location.href='back_ArticleTypeSelect.jsp';</script>");
		} else {
			out
					.print("<script language=javascript>alert('您需要将类别所在的文章删除,才可删除此类别！');history.go(-1);</script>");
		}

	}
	*/

	// 后台添加文章类别
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
		String result = "上传的照片格式和大小有问题,上传照片失败!";
		String type = null;
		String imageType[] = { "JPG", "jpg", "gif", "bmp", "BMP" };
		String filedir = "file1/";
		long maxsize = 2 * 1024 * 1024; // 设置每个上传文件的大小，为2MB
		try {
			su.initialize(this.getServletConfig(), request, response);
			su.setMaxFileSize(maxsize); // 限制上传文件的大小
			su.upload(); // 上传文件
			Files files = su.getFiles(); // 获取所有的上传文件
			for (int i = 0; i < files.getCount(); i++) { // 逐个获取上传的文件
				File singlefile = files.getFile(i);
				type = singlefile.getFileExt();

				for (int ii = 0; ii < imageType.length; ii++) {
					if (imageType[ii].equals(type)) {
						if (!singlefile.isMissing()) { 
							// 如果选择了文件
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

