package com.java.dao;

public class page_info {
	
	int count;
	int page;
	int page_num;
	int size;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPage_num() {
		return page_num;
	}
	public void setPage_num(int page_num) {
		this.page_num = page_num;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public page_info(int count, int page, int page_num, int size) {
		super();
		this.count = count;
		this.page = page;
		this.page_num = page_num;
		this.size = size;
	}
}
