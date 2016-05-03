package com.wy.bean;

public class AnnounceBean {
	private Integer announceId=-1;
	private String announceTitle=null;
	private String announceContent=null;
	private String announceTime=null;
	private String announceStatus=null;
	
	public String getAnnounceContent() {
		return announceContent;
	}
	public void setAnnounceContent(String announceContent) {
		this.announceContent = announceContent;
	}
	public String getAnnounceTime() {
		return announceTime;
	}
	public void setAnnounceTime(String announceTime) {
		this.announceTime = announceTime;
	}
	public String getAnnounceTitle() {
		return announceTitle;
	}
	public void setAnnounceTitle(String announceTitle) {
		this.announceTitle = announceTitle;
	}
	public String getAnnounceStatus() {
		return announceStatus;
	}
	public void setAnnounceStatus(String announceStatus) {
		this.announceStatus = announceStatus;
	}
	public Integer getAnnounceId() {
		return announceId;
	}
	public void setAnnounceId(Integer id) {
		this.announceId = id;
	}

}
