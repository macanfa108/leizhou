package com.wy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wy.bean.NewsBean;
import com.wy.tool.JDBConnection;

public class NewsDao {
	private JDBConnection connection = null;

	private NewsBean newsForm = null;

	public NewsDao() {
		connection = new JDBConnection();
	}

	public boolean operationNews(String operation, NewsBean form) {
		boolean flag = false;
		String sql = null;
		Integer num;
		if (operation.equals("添加"))
			sql = "insert into tb_news values ('" + form.getNewsTitle() + "','"+ form.getNewsContent() + "','"
					+ form.getNewsTime() + "','" + form.getPhotoURL() + "',"+ form.getReadNum() + ")";
		
		//喜欢数加1
		/*if (operation.equals("修改"))
			num=form.getLikeNum() +1;
			sql = "update tb_thing set likeNum=" +num+" where id='" + form.getThingId() + "'";
		*/			
		if (operation.equals("删除"))
			sql = "delete from tb_news where newsId=" + form.getNewsId() ;
		if (operation.equals("增加"))
			sql = "update tb_News set readNum=readNum+1 where newsId="
					+ form.getNewsId() ;
		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}
	

	public List queryNews(String name) {
		List list = new ArrayList();
		String sql = "";
		if (name==null)
			//sql = "select newsTitel,newsContent,newsTime,photoURL,readNum from tb_news";
			sql = "select * from tb_news";
		else
			//sql = "select newsTitel,newsContent,newsTime,photoURL,readNum from tb_news where newsTitel like '%" + name+ "%' order by newsID desc";
		sql = "select * from tb_news where newsTitel like '%" + name+ "%' order by newsId desc";

		ResultSet rs = connection.executeQuery(sql);
		try {
			while (rs.next()) {
				newsForm = new NewsBean();
				newsForm.setNewsId(rs.getInt(1));
				newsForm.setNewsTitle(rs.getString(2));
				newsForm.setNewsContent(rs.getString(3));
				newsForm.setNewsTime(rs.getString(4));
				newsForm.setPhotoURL(rs.getString(5));
				newsForm.setReadNum(rs.getInt(6));
				list.add(newsForm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public List topNews(String newsId) {
		List list = new ArrayList();
		String sql;
		if(newsId==null){
			sql="select  * from tb_news order by newsId desc";
			try {
				ResultSet rs = connection.executeQuery(sql);
				while (rs.next()) {
					newsForm = new NewsBean();
					newsForm.setNewsId(rs.getInt(1));
					newsForm.setNewsTitle(rs.getString(2));
					newsForm.setNewsContent(rs.getString(3));
					newsForm.setNewsTime(rs.getString(4));
					newsForm.setPhotoURL(rs.getString(5));
					newsForm.setReadNum(rs.getInt(6));
					list.add(newsForm);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		else{
			int id=Integer.parseInt(newsId);
			//System.out.println("id="+id);
		sql= "select * from tb_news where newsId="+id;
		
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				newsForm = new NewsBean();
				newsForm.setNewsId(rs.getInt(1));
				newsForm.setNewsTitle(rs.getString(2));
				newsForm.setNewsContent(rs.getString(3));
				newsForm.setNewsTime(rs.getString(4));
				newsForm.setPhotoURL(rs.getString(5));
				newsForm.setReadNum(rs.getInt(6));
				list.add(newsForm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
        String sql1 = "select * from tb_news where newsId<>"+id+"order by newsId desc";
		
		try {
			ResultSet rs = connection.executeQuery(sql1);
			while (rs.next()) {
				newsForm = new NewsBean();
				newsForm.setNewsId(rs.getInt(1));
				newsForm.setNewsTitle(rs.getString(2));
				newsForm.setNewsContent(rs.getString(3));
				newsForm.setNewsTime(rs.getString(4));
				newsForm.setPhotoURL(rs.getString(5));
				newsForm.setReadNum(rs.getInt(6));
				list.add(newsForm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
		return list;
	}

	public NewsBean queryNewsForm(Integer id) {
		String sql = "select * from tb_news where newsId=" + id ;
		ResultSet rs = connection.executeQuery(sql);
		try {
			while (rs.next()) {
				newsForm = new NewsBean();
				newsForm.setNewsId(rs.getInt(1));
				newsForm.setNewsTitle(rs.getString(2));
				newsForm.setNewsContent(rs.getString(3));
				newsForm.setNewsTime(rs.getString(4));
				newsForm.setPhotoURL(rs.getString(5));
				newsForm.setReadNum(rs.getInt(6));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		this.operationNews("增加", newsForm);
		return newsForm;
	}
	
	public Integer MaxQueryID() {
		Integer maxID = 0;
		String sql = "select max(newsId) as newsId from tb_news";
		ResultSet rs = connection.executeQuery(sql);
		try {
			while (rs.next()) {
				maxID = rs.getInt("newsId");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return maxID;

	}

}


