package com.wy.bean;

public class ThingBean {
	private Integer thingId=-1;
	private Integer typeId=0;
	private String typeName="";
	private String thingName="";
	private String thingContent="";
	private String thingTime="";
	private String photoURL="";
	private Integer likeNum=0;
	public String getThingContent() {
		return thingContent;
	}
	public void setThingContent(String thingContent) {
		this.thingContent = thingContent;
	}
	public Integer getThingId() {
		return thingId;
	}
	public void setThingId(Integer thingid) {
		this.thingId = thingid;
	}
	public Integer getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(Integer likeNum) {
		this.likeNum = likeNum;
	}
	public String getThingTime() {
		return thingTime;
	}
	public void setThingTime(String thingTime) {
		this.thingTime = thingTime;
	}
	public String getPhotoURL() {
		return photoURL;
	}
	public void setPhotoURL(String photoURL) {
		this.photoURL = photoURL;
	}
	public String getThingName() {
		return thingName;
	}
	public void setThingName(String thingName) {
		this.thingName = thingName;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	
	}



