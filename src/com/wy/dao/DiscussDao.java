package com.wy.dao;

import com.wy.bean.DiscussBean;
import com.wy.tool.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.Collections

;

public class DiscussDao {
	private JDBConnection connection = null;

	public DiscussDao() {
		connection = new JDBConnection();
	}

	public boolean operationDiscuss(String operation, DiscussBean disussForm) {
		boolean flag = false;
		String sql = null;
		if (operation.equals("删除"))
			sql = "delete from tb_discuss where discussId='" + disussForm.getDiscussId()
					+ "'";
		if (operation.equals("添加"))
			sql = "insert into tb_discuss values ('"
					+ disussForm.getDiscussTitle() + "','"
					+ disussForm.getDiscussContent() + "','"
					+ disussForm.getDiscussTime() + "')";
		if (operation.equals("修改"))
			sql = "update tb_discuss set discussTitle='"
					+ disussForm.getDiscussTitle() + "',discussContent='"
					+ disussForm.getDiscussContent() + "' where discussId='"
					+ disussForm.getDiscussId() + "'";
		
		
		if (connection.executeUpdate(sql))
			flag = true;
		return flag;
	}
    
    //全部查询与模糊查询
	public List queryDiscuss(String discussName) {
		List list = new ArrayList();
		DiscussBean form = null;
		String sql;
		if(discussName.equals("")){
			sql = "select * from tb_discuss order by discussId desc";
			
		}
		else
			sql = "select * from tb_discuss where discussName like '%"+discussName+"%' order by discussId desc";
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				form = new DiscussBean();
				form.setDiscussId(Integer.valueOf(rs.getString(1)));
			
				
				form.setDiscussTitle(rs.getString(2));
				form.setDiscussContent(rs.getString(3));
				form.setDiscussTime(rs.getString(4));
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
		DiscussBean form = null;
		String sql;
		
			//sql = "select * from tb_discuss order by discussId desc";
			sql = "select * from tb_discuss where discussId="+id;
			try {
				ResultSet rs = connection.executeQuery(sql);
				while (rs.next()) {
					form = new DiscussBean();
					form.setDiscussId(Integer.valueOf(rs.getString(1)));
				
					
					form.setDiscussTitle(rs.getString(2));
					form.setDiscussContent(rs.getString(3));
					form.setDiscussTime(rs.getString(4));
					list.add(form);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String sql1 = "select top 4 * from tb_discuss where discussId <>"+id+" order by discussId desc";
		
		try {
			ResultSet rs = connection.executeQuery(sql1);
			while (rs.next()) {
				form = new DiscussBean();
				form.setDiscussId(Integer.valueOf(rs.getString(1)));
			
				
				form.setDiscussTitle(rs.getString(2));
				form.setDiscussContent(rs.getString(3));
				form.setDiscussTime(rs.getString(4));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
	
	
	public DiscussBean queryDiscuss(Integer id) {
		DiscussBean form = null;
		String sql = "select * from tb_discuss where discussId='"+id+"'";
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				form = new DiscussBean();
				form.setDiscussId(Integer.valueOf(rs.getString(1)));
				form.setDiscussTitle(rs.getString(2));
				form.setDiscussContent(rs.getString(3));
				form.setDiscussTime(rs.getString(4));
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return form;

	}
	
	
	

}
