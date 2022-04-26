package com.ezen.dia;

public class DiaDTO {
    int dnum,price,readcnt,step;
	String name,title,content,picture;
	public DiaDTO() {}
	public DiaDTO(int dnum, int price, int readcnt, int step, String name, String title, String content,
			String picture) {
		super();
		this.dnum = dnum;
		this.price = price;
		this.readcnt = readcnt;
		this.step = step;
		this.name = name;
		this.title = title;
		this.content = content;
		this.picture = picture;
	}
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
}
