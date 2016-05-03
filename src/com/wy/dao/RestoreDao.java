
package com.wy.dao;

import com.wy.bean.AnnounceBean;
import com.wy.bean.RestoreBean;
import com.wy.bean.RestoreAnnounceBean;
import com.wy.bean.TypeBean;
import com.wy.tool.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class RestoreDao {
	private JDBConnection connection = null;

	public RestoreDao() {
		connection = new JDBConnection();
	}
    
	//删除某个评论
	public boolean deleteDiscuss(Integer id) {
		boolean flag = false;
		String sql = "delete from tb_restore where reId=" + id;
		if (connection.executeUpdate(sql))
			flag = true;
		return flag;
	}
    
    //全部查询与模糊查询----显示样式模板
	public List queryDiscuss(String announceName ) {
		List list = new ArrayList();
		RestoreAnnounceBean form = null;
		String sql;
		if(announceName==null)
			sql = "select tb_restore.reId,tb_announce.announceTitle,tb_announce.announceContent,tb_announce.announceTime,tb_restore.reContet,tb_restore.reTime from tb_restore,tb_announce where tb_announce.announceId=tb_restore.announceId;";
		else

			sql = "select tb_restore.reId,tb_announce.announceTitle,tb_announce.announceContent,tb_announce.announceTime,tb_restore.reContet,tb_restore.reTime from tb_restore,tb_announce where tb_announce.announceId=tb_restore.announceId and tb_announce.announceTitle like '%"+announceName+"%';";
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				form = new RestoreAnnounceBean();
				form.setId(Integer.valueOf(rs.getString(1)));
				form.setAnnounceTitle(rs.getString(2));
				form.setAnnounceContent(rs.getString(3));
				form.setAnnounceTime(rs.getString(4));
				form.setReContent(rs.getString(5));
				form.setReTime(rs.getString(6));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public List queryType() {
		List list = new ArrayList();
		TypeBean form = null;
		String sql = "select * from tb_type";
		ResultSet rs = connection.executeQuery(sql);
		try {
			while (rs.next()) {
				form = new TypeBean();
				form.setTypeId(rs.getInt(1));
				form.setTypeName(rs.getString(2));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	/*
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
	*/
	
	
	

}

