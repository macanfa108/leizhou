package com.wy.bean;

public class RestoreBean {
	private Integer id=0;
	private Integer discussId=0;
	private String reContent="";
	private String reTime=null;
	public Integer getDiscussId() {
		return discussId;
	}
	public void setDiscussId(Integer discussId) {
		this.discussId = discussId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getReContent() {
		return reContent;
	}
	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	public String getReTime() {
		return reTime;
	}
	public void setReTime(String reTime) {
		this.reTime = reTime;
	}
	

}
