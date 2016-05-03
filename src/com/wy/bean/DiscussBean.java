package com.wy.bean;

public class DiscussBean {
	private Integer discussId=-1;
	private String discussName=null;
	private String discussContent=null;
	private String discussTime=null;
	
	
	public String getDiscussContent() {
		return discussContent;
	}
	public void setDiscussContent(String discussContent) {
		this.discussContent = discussContent;
	}
	public String getDiscussTime() {
		return discussTime;
	}
	public void setDiscussTime(String discussTime) {
		this.discussTime = discussTime;
	}
	public String getDiscussTitle() {
		return discussName;
	}
	public void setDiscussTitle(String discussName) {
		this.discussName = discussName;
	}
	public Integer getDiscussId() {
		return discussId;
	}
	public void setDiscussId(Integer discussId) {
		this.discussId = discussId;
	}
}
