package com.hyd.northpj.entity;

public class AdminUser {
	private int sn;
	private String username;
	private String password;
	private String type;
	private String name;
	public int getSn() {
		return sn;
	}

	public void setSn(int sn) {
		this.sn = sn;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "AdminUser [sn=" + sn + ", username=" + username + ", password="
				+ password + ", type=" + type + ", name=" + name + "]";
	}
	
	
}
