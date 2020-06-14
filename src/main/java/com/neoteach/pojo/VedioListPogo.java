package com.neoteach.pojo;

import com.mysql.cj.jdbc.Blob;

public class VedioListPogo {
	 private String fileName;
	 private String coursename;
	 private String id;
	 private Blob data;
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Blob getData() {
		return data;
	}
	public void setData(Object object) {
		this.data = (Blob) object;
	}

}
