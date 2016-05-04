
package com.wy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wy.bean.ThingBean;
import com.wy.tool.JDBConnection;

public class ThingDao {
	private JDBConnection connection = null;

	private ThingBean thingForm = null;

	public ThingDao() {
		connection = new JDBConnection();
	}

	public boolean operationThing(String operation, ThingBean form) {
		boolean flag = false;
		String sql = null;
		Integer num;
		if (operation.equals("添加"))
			sql = "insert into tb_thing values (" + form.getTypeId() + ",'"
					+ form.getThingName() + "','" + form.getThingContent() + "','"
					+ form.getThingTime() + "','" + form.getPhotoURL() + "',"+ form.getLikeNum() + ")";
		
		//喜欢数加1
		/*if (operation.equals("修改"))
			num=form.getLikeNum() +1;
			sql = "update tb_thing set likeNum=" +num+" where id='" + form.getThingId() + "'";
		*/			
		if (operation.equals("删除"))
			sql = "delete from tb_thing where thingId=" + form.getThingId() ;
		if (operation.equals("增加"))
			sql = "update tb_thing set likeNum=likeNum+1 where thingId="
					+ form.getThingId() ;
		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}
	

	public List queryThing(String typeName) {
		List list = new ArrayList();
		String sql = null;
		if (typeName == null)
			//sql = "select tb_thing.thingId,tb_thing.thingName,tb_type.typeName,tb_thing.thingContent,tb_thing.thingTime,tb_thing.photoURL,tb_thing.likeNum from tb_thing,tb_type where tb_thing.typeId=tb_type.typeId";
		sql = "select * from tb_thing,tb_type where tb_thing.typeId=tb_type.typeId";
		else
		//sql = "select tb_thing.thingId,tb_thing.thingName,tb_type.typeName,tb_thing.thingContent,tb_thing.thingTime,tb_thing.photoURL,tb_thing.likeNum from tb_thing,tb_type where tb_thing.typeId=tb_type.typeId and thingName like '%" + typeName
		//			+ "%' order by thingId desc";
			sql = "select * from tb_thing,tb_type where tb_thing.typeId=tb_type.typeId and thingName like '%" + typeName+ "%' order by thingId desc";
		
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				thingForm = new ThingBean();
				thingForm.setThingId(rs.getInt(1));
				thingForm.setTypeId(rs.getInt(2));
				thingForm.setThingName(rs.getString(3));
				thingForm.setThingContent(rs.getString(4));
				thingForm.setThingTime(rs.getString(5));
				thingForm.setPhotoURL(rs.getString(6));
				thingForm.setLikeNum(rs.getInt(7));

				thingForm.setTypeName(rs.getString(9));
				list.add(thingForm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public List topThing(String thingId) {
		List list = new ArrayList();
		String sql;
		if(thingId==null){
			sql="select top 5 * from tb_thing,tb_type where tb_thing.typeId=tb_type.typeId order by thingId desc";
			try {
				ResultSet rs = connection.executeQuery(sql);
				while (rs.next()) {
					thingForm = new ThingBean();
					thingForm.setThingId(rs.getInt(1));
					thingForm.setTypeId(rs.getInt(2));
					thingForm.setThingName(rs.getString(3));
					thingForm.setThingContent(rs.getString(4));
					thingForm.setThingTime(rs.getString(5));
					thingForm.setPhotoURL(rs.getString(6));
					thingForm.setLikeNum(rs.getInt(7));

					thingForm.setTypeName(rs.getString(9));
					list.add(thingForm);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		else{
		int id=Integer.parseInt(thingId);
		sql= "select * from tb_thing,tb_type where tb_thing.typeId=tb_type.typeId and thingId="+id;
		
		try {
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				thingForm = new ThingBean();
				thingForm.setThingId(rs.getInt(1));
				thingForm.setTypeId(rs.getInt(2));
				thingForm.setThingName(rs.getString(3));
				thingForm.setThingContent(rs.getString(4));
				thingForm.setThingTime(rs.getString(5));
				thingForm.setPhotoURL(rs.getString(6));
				thingForm.setLikeNum(rs.getInt(7));

				thingForm.setTypeName(rs.getString(9));
				list.add(thingForm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String sql1 = "select top 4  * from tb_thing,tb_type where tb_thing.typeId=tb_type.typeId and thingId<>"+id+"order by thingId desc";
		
		try {
			ResultSet rs = connection.executeQuery(sql1);
			while (rs.next()) {
				thingForm = new ThingBean();
				thingForm.setThingId(rs.getInt(1));
				thingForm.setTypeId(rs.getInt(2));
				thingForm.setThingName(rs.getString(3));
				thingForm.setThingContent(rs.getString(4));
				thingForm.setThingTime(rs.getString(5));
				thingForm.setPhotoURL(rs.getString(6));
				thingForm.setLikeNum(rs.getInt(7));

				thingForm.setTypeName(rs.getString(9));
				list.add(thingForm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
		return list;
	}

	public ThingBean queryThingForm(Integer id) {
		String sql = "select * from tb_thing where id=" + id ;
		ResultSet rs = connection.executeQuery(sql);
		try {
			while (rs.next()) {
				thingForm = new ThingBean();
				thingForm.setThingId(rs.getInt(1));
				thingForm.setTypeName(rs.getString(2));
				thingForm.setThingName(rs.getString(3));
				thingForm.setThingContent(rs.getString(4));
				thingForm.setThingTime(rs.getString(5));
				thingForm.setPhotoURL(rs.getString(6));
				thingForm.setLikeNum(rs.getInt(7));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		this.operationThing("增加", thingForm);
		return thingForm;
	}
	
	public Integer MaxQueryID() {
		Integer maxID = 0;
		String sql = "select max(thingId) as thingId from tb_Thing";
		ResultSet rs = connection.executeQuery(sql);
		try {
			while (rs.next()) {
				maxID = rs.getInt("thingId");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return maxID;

	}

}

