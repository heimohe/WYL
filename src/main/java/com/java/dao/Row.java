package com.java.dao;

public class Row {
	
	String account_id;
	String black_date;
	int msg_num;
	int reject_num;
	String role_id;
	String role_name;
	String server_id;
	String status;
	String token_id;
	int vip_level;
	
	public int getVip_level() {
		return vip_level;
	}
	public void setVip_level(int vip_level) {
		this.vip_level = vip_level;
	}
	public String getAccount_id() {
		return account_id;
	}
	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}
	public String getBlack_date() {
		return black_date;
	}
	public void setBlack_date(String black_date) {
		this.black_date = black_date;
	}
	public int getMsg_num() {
		return msg_num;
	}
	public void setMsg_num(int msg_num) {
		this.msg_num = msg_num;
	}
	public int getReject_num() {
		return reject_num;
	}
	public void setReject_num(int reject_num) {
		this.reject_num = reject_num;
	}
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getServer_id() {
		return server_id;
	}
	public void setServer_id(String server_id) {
		this.server_id = server_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getToken_id() {
		return token_id;
	}
	public void setToken_id(String token_id) {
		this.token_id = token_id;
	}
	public Row(String account_id, String black_date, int msg_num, int reject_num, String role_id, String role_name,
			String server_id, String status, String token_id, int vip_level) {
		super();
		this.account_id = account_id;
		this.black_date = black_date;
		this.msg_num = msg_num;
		this.reject_num = reject_num;
		this.role_id = role_id;
		this.role_name = role_name;
		this.server_id = server_id;
		this.status = status;
		this.token_id = token_id;
		this.vip_level = vip_level;
	}
	
}
