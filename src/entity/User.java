package entity;

import java.util.Date;

public class User {
	private int user_id;         // 用户ID
	private String user_name;    // 用户名
	private String user_pwd;     // 用户密码
	private String user_email;   // 用户邮箱
	private String user_tel;     // 用户电话号
	private String user_img;     // 用户头像
	private String user_address; // 收货地址
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_img() {
		return user_img;
	}
	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_pwd=" + user_pwd + ", user_email=" + user_email
				+ ", user_tel=" + user_tel + ", user_img=" + user_img
				+ ", user_address=" + user_address + "]";
	}
	public User(int user_id, String user_name, String user_pwd,
			String user_email, String user_tel, String user_img,
			String user_address) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_email = user_email;
		this.user_tel = user_tel;
		this.user_img = user_img;
		this.user_address = user_address;
	}
	public User() {
		super();
	}
	

	
	
}