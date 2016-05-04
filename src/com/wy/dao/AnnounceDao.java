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

	public boolean operationAnnounce(String operation, AnnounceBean disussForm) {
		boolean flag = false;
		String sql = null;
		if (operation.equals("ɾ��"))
			sql = "delete from tb_announce where announceId='" + disussForm.getAnnounceId()
					+ "'";
		if (operation.equals("���"))
			sql = "insert into tb_announce values ('"
					+ disussForm.getAnnounceTitle() + "','"
					+ disussForm.getAnnounceContent() + "','"
					+ disussForm.getAnnounceTime() + "')";
		if (operation.equals("�޸�"))
			sql = "update tb_announce set announceStatus='已审核' where announceId=";
		
		
		if (connection.executeUpdate(sql))
			flag = true;
		return flag;
	}
	
	//��˻���
	public boolean upAnnounce(Integer id) {
		boolean flag = false;
		String sql = "update tb_announce set announceStatus='�已审核' where announceId="+id;
		
		if (connection.executeUpdate(sql))
			flag = true;
		return flag;
	}
    
    //ȫ����ѯ��ģ���ѯ
	public List queryAnnounce(String announceName,String announceStatus) {
		List list = new ArrayList();
		AnnounceBean form = null;
		String sql;
		//System.out.println("announceName="+announceName);
		if(announceName==null){
			sql = "select * from tb_announce where announceStatus='"+announceStatus+"' order by announceId desc";
			
		}
		else
			sql = "select * from tb_announce where announceStatus='"+announceStatus+"' and announceTitle like '%"+announceName+"%' order by announceId desc";
		try { 
			//System.out.println("sql="+sql);
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
	
	
	//�ö���ѯ
	public List topAnnounce(String announceId) {
		List list = new ArrayList();
		AnnounceBean form = null;
		//System.out.println(announceId);
		String sql;
		if(announceId==null){
			sql="select top 5 * from tb_announce where announceStatus='已审核' order by announceId desc";
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
		}
		
		else{
			int id=Integer.parseInt(announceId);
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
			
			String sql1 = "select top 4 * from tb_announce where announceId <>"+id+" and announceStatus='已审核' order by announceId desc";
		
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
		}
		System.out.println(sql);
		return list;

	}
	
	
	public AnnounceBean queryAnnounce(Integer id) {
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
