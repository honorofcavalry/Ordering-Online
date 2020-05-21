/*
 * File name:          Cart.java
 * Copyright@Lanqiao (China)
 * Editor:           JDK1.6.32
 */
package entity;

import java.util.*;

public class Cart {
	private User user_id;           //用户Id
	private int good_id;            // 商品Id
	private String good_name;       // 商品名
	private double good_price;      // 商品原价
	private String good_info;       // 商品简介
	private String good_shopname;    // 商品对应的卖家（商家名）
	private String good_imgpath;    // 商品被搜索出来时展示的图片
	private int good_sum;           //商品购买数量
	private String good_style;      //商品状态（已付款，未付款）
	public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	public int getGood_id() {
		return good_id;
	}
	public void setGood_id(int good_id) {
		this.good_id = good_id;
	}
	public String getGood_name() {
		return good_name;
	}
	public void setGood_name(String good_name) {
		this.good_name = good_name;
	}
	public double getGood_price() {
		return good_price;
	}
	public void setGood_price(double good_price) {
		this.good_price = good_price;
	}
	public String getGood_info() {
		return good_info;
	}
	public void setGood_info(String good_info) {
		this.good_info = good_info;
	}
	public String getGood_shopname() {
		return good_shopname;
	}
	public void setGood_shopname(String good_shopname) {
		this.good_shopname = good_shopname;
	}
	public String getGood_imgpath() {
		return good_imgpath;
	}
	public void setGood_imgpath(String good_imgpath) {
		this.good_imgpath = good_imgpath;
	}
	public int getGood_sum() {
		return good_sum;
	}
	public void setGood_sum(int good_sum) {
		this.good_sum = good_sum;
	}
	public String getGood_style() {
		return good_style;
	}
	public void setGood_style(String good_style) {
		this.good_style = good_style;
	}
	@Override
	public String toString() {
		return "Cart [user_id=" + user_id + ", good_id=" + good_id
				+ ", good_name=" + good_name + ", good_price=" + good_price
				+ ", good_info=" + good_info + ", good_shopname=" + good_shopname + ", good_imgpath="
				+ good_imgpath + ", good_sum=" + good_sum + ", good_style="
				+ good_style + "]";
	}
	public Cart(User user_id, int good_id, String good_name, double good_price,
			String good_info,  String good_shopname,
			String good_imgpath, int good_sum, String good_style) {
		super();
		this.user_id = user_id;
		this.good_id = good_id;
		this.good_name = good_name;
		this.good_price = good_price;
		this.good_info = good_info;
		this.good_shopname = good_shopname;
		this.good_imgpath = good_imgpath;
		this.good_sum = good_sum;
		this.good_style = good_style;
	}
	public Cart() {
		super();
	}
	
	

}
