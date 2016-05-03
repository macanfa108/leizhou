package com.wy.dao;

import com.wy.bean.AnnounceBean;
import com.wy.tool.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.Collections

;

public class AnnounceDao {
	private JDBConnection connection = null;

	public AnnounceDao() {
		connection = new JDBConnection();
	}

	public boolean operationDiscuss(String operation, AnnounceBean disussForm) {
		boolean flag = false;
		String sql = null;
		if (operation.equals("删除"))
			sql = "delete from tb_announce where announceId='" + disussForm.getAnnounceId()
					+ "'";
		if (operation.equals("添加"))
			sql = "insert into tb_announce values ('"
					+ disussForm.getAnnounceTitle() + "','"
					+ disussForm.getAnnounceContent() + "','"
					+ disussForm.getAnnounceTime() + "')";
		if (operation.equals("修改"))
			sql = "update tb_announce set announceStatus='已审核' where announceId=";
		
		
		if (connection.executeUpdate(sql))
			flag = true;
		return flag;
	}
	
	//审核话题
	public boolean upDiscuss(Integer id) {
		boolean flag = false;
		String sql = "update tb_announce set announceStatus='已审核' where announceId="+id;
		
		if (connection.executeUpdate(sql))
			flag = true;
		return flag;
	}
    
    //全部查询与模糊查询
	public List queryDiscuss(String announceName,String announceStatus) {
		List list = new ArrayList();
		AnnounceBean form = null;
		String sql;
		if(announceName.equals("")){
			sql = "select * from tb_announce where announceStatus='"+announceStatus+"' order by announceId desc";
			
		}
		else
			sql = "select * from tb_announce where announceStatus='"+announceStatus+"' and announceName like '%"+announceName+"%' order by discussId desc";
		try { 
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				form = new AnnounceBean();
				form.setAnnounceId(Integer.valueOf(rs.getString(1)));
				form.setAnnounceTitle(rs.getString(2));
				form.setAnnounceContent(rs.getString(3));
				form.setAnnounceTime(rs.getString(4));
				form.setAnnounceStatus(rs.getString(5));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
	
	
	//置顶查询
	public List topDiscuss(int id) {
		List list = new ArrayList();
		AnnounceBean form = null;
		String sql;
		
			//sql = "select * from tb_discuss order by discussId desc";
			sql = "select * from tb_announce where announceId="+id;
			try {
				ResultSet rs = connection.executeQuery(sql);
				while (rs.next()) {
					form = new AnnounceBean();
					form.setAnnounceId(Integer.valueOf(rs.getString(1)));
					form.setAnnounceTitle(rs.getString(2));
					form.setAnnounceContent(rs.getString(3));
					form.setAnnounceTime(rs.getString(4));
					form.setAnnounceStatus(rs.getString(5));
					list.add(form);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String sql1 = "select top 4 * from tb_announce where announceId <>"+id+" order by announceId desc";
		
		try {
			ResultSet rs = connection.executeQuery(sql1);
			while (rs.next()) {
				form = new AnnounceBean();
				form.setAnnounceId(Integer.valueOf(rs.getString(1)));
			
				
				form.setAnnounceTitle(rs.getString(2));
				form.setAnnounceContent(rs.getString(3));
				form.setAnnounceTime(rs.getString(4));
				form.setAnnounceStatus(rs.getString(5));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
	
	
	public AnnounceBean queryDiscuss(Integer id) {
		AnnounceBean form = null;
		String sql = "select * from tb_announce where announceId='"+id+"'";
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				form = new AnnounceBean();
				form.setAnnounceId(Integer.valueOf(rs.getString(1)));
				form.setAnnounceTitle(rs.getString(2));
				form.setAnnounceContent(rs.getString(3));
				form.setAnnounceTime(rs.getString(4));
				form.setAnnounceStatus(rs.getString(5));
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return form;

	}
	
	
	

}
