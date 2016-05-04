package com.wy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.List;

import com.wy.bean.UserBean;
import com.wy.tool.JDBConnection;

public class UserDao {
	private JDBConnection connection = null;

	private UserBean userBean = null;

	public UserDao() {
		connection = new JDBConnection();
	}

	// �����ݿ���Ϊ�������޸��û���Ϣ
	public boolean front_updateConsumerForm(UserBean form) {
		boolean flag = false;
		String sql = "update tb_user set telNumber='" + form.getTelNumber()
				+ "',name='" + form.getName() + "',password='"
				+ form.getPassword() + "',realName='" + form.getRealName() + "',QQNumber='"
				 + "' where id='" + form.getId() + "'";
		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}

	// �����û�����

	public boolean updateConsumerForm(UserBean form) {
		boolean flag = false;
		String sql = "update tb_user set password='"
				+ form.getPassword() + "' where name='" + form.getName() + "'";
		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}

 //ɾ���û���Ϣ
	public boolean oprationUser(String status,String userName) {
		boolean flag = false;
		String sql = "update tb_user set status='"+status+"' where name='" + userName + "'";
		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}

	// ����û���Ϣ
	public boolean addConsumerForm(UserBean form) {
		boolean flag = false;
		int id=2;
		String sql = "insert into tb_user values ('"+ form.getTelNumber()
				+ "','" + form.getName() + "','" + form.getPassword() + "','"
				+ form.getRealName() + "','" + form.getStatus()  + "')";

		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}
	
	//��ȡ�û���¼��
	public String getConsumerForm(Integer id) {
		String sql = "select * from tb_user where id='" + id
				+ "'";
		String name="";
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				name=rs.getString("name");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return name;
	}
	
	
	
	// �Ե�¼��Ϊ��ѯ��������ѯһ������
	public UserBean getConsumerForm(String name) {
		String sql = "select * from tb_user where name='" + name+ "'";
		try {
			ResultSet rs = connection.executeQuery(sql);
			System.out.print(rs);
			while (rs.next()) {
				userBean = new UserBean();
				userBean.setId(Integer.valueOf(rs.getString(1)));
				userBean.setTelNumber(rs.getString(2));
				userBean.setName(rs.getString(3));
				userBean.setPassword(rs.getString(4));
				userBean.setRealName(rs.getString(5));
				userBean.setStatus(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userBean;
	}
	
	
	// �Ե�¼��Ϊ��ѯ��������ѯһ������
	/*	public List<String> getConsumerList(String name,String name1) {
			List list=null;
			String sql = "select * from tb_user where name='" + name+ "'";
			try {
				ResultSet rs = connection.executeQuery(sql);
				System.out.print(rs);
				while (rs.next()) {
					userBean = new UserBean();
					userBean.setId(Integer.valueOf(rs.getString(1)));
					userBean.setTelNumber(rs.getString(2));
					userBean.setName(rs.getString(3));
					userBean.setPassword(rs.getString(4));
					userBean.setRealName(rs.getString(5));
					userBean.setStatus(rs.getString(6));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	*/
	

	// �����û��˺Ų�ѯ���е�����
	public List getConsumerList(String userStatus,String userName) {
		
		List list = new ArrayList();
		String sql;
		if(userName==null){
		
			sql = "select * from tb_user where status='"+userStatus+"'" ;
		
		}
		else{
			sql = "select * from tb_user where status='"+userStatus+"' and name like '%"+userName+"%'";
		}
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				userBean = new UserBean();
				userBean.setId(Integer.valueOf(rs.getString(1)));
				userBean.setTelNumber(rs.getString(2));
				userBean.setName(rs.getString(3));
				userBean.setPassword(rs.getString(4));
				userBean.setRealName(rs.getString(5));
				userBean.setStatus(rs.getString(6));
				list.add(userBean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
		}
	}




