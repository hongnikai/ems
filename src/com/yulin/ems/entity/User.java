package com.yulin.ems.entity;

public class User {
	private String username;
	private String password;
	private String name;
	private Integer deleflg;
	private Integer sex;
	private String credate;
	private String upddate;
	
	public User() {
		super();
		
	}
	public User(String username, String password, String name, int deleflg,
			int sex, String credate, String upddate) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.deleflg = deleflg;
		this.sex = sex;
		this.credate = credate;
		this.upddate = upddate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCredate() {
		return credate;
	}
	public void setCredate(String credate) {
		this.credate = credate;
	}
	public String getUpddate() {
		return upddate;
	}
	public void setUpddate(String upddate) {
		this.upddate = upddate;
	}
	
	public Integer getDeleflg() {
		return deleflg;
	}
	public void setDeleflg(Integer deleflg) {
		this.deleflg = deleflg;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Person [username=" + username + ", password=" + password
				+ ", name=" + name + ", deleflg=" + deleflg + ", sex=" + sex
				+ ", credate=" + credate + ", upddate=" + upddate + "]";
	}

}
