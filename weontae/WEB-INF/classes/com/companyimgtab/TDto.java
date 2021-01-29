package com.companyimgtab;

public class TDto {
	int bno;
	String bname;
	String title;
	String date;
	int hit;
	int cnt;
	String file;
	
	public TDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public TDto(int bno, String bname, String title, String date, int hit, int cnt,String file) {
		super();
		this.bno = bno;
		this.bname = bname;
		this.title = title;
		this.date = date;
		this.hit = hit;
		this.cnt = cnt;
		this.file = file;
	}


	public int getBno() {
		return bno;
	}


	public void setBno(int bno) {
		this.bno = bno;
	}


	public String getBname() {
		return bname;
	}


	public void setBname(String bname) {
		this.bname = bname;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public int getHit() {
		return hit;
	}


	public void setHit(int hit) {
		this.hit = hit;
	}


	public int getNo() {
		return cnt;
	}


	public void setNo(int no) {
		this.cnt = no;
	}


	public int getCnt() {
		return cnt;
	}


	public void setCnt(int cnt) {
		this.cnt = cnt;
	}


	public String getFile() {
		return file;
	}


	public void setFile(String file) {
		this.file = file;
	}


	@Override
	public String toString() {
		return "TDto [bno=" + bno + ", bname=" + bname + ", title=" + title + ", date=" + date + ", hit=" + hit
				+ ", cnt=" + cnt + ", file=" + file + "]";
	}


	

}
