package entity;

import java.util.Date;

public class Good {
	private int good_id;                // 商品Id
	private String good_name;           // 商品名
	private double good_price;          // 商品现价
	private String good_info;           // 商品简介
	private int good_sales;             // 商品销量
	private String good_shopname;       // 商品对应的卖家（商家名）
	private String good_imgpath;        // 商品被搜索出来时展示的图片
	private int good_commentnum;        //商品总评论数
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
	public int getGood_sales() {
		return good_sales;
	}
	public void setGood_sales(int good_sales) {
		this.good_sales = good_sales;
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
	public int getGood_commentnum() {
		return good_commentnum;
	}
	public void setGood_commentnum(int good_commentnum) {
		this.good_commentnum = good_commentnum;
	}
	@Override
	public String toString() {
		return "Good [good_id=" + good_id + ", good_name=" + good_name
				+ ", good_price=" + good_price + ", good_info=" + good_info
				+ ", good_sales=" + good_sales + ", good_shopname="
				+ good_shopname + ", good_imgpath=" + good_imgpath
				+ ", good_commentnum=" + good_commentnum + "]";
	}
	public Good(int good_id, String good_name, double good_price,
			String good_info, int good_sales, String good_shopname,
			String good_imgpath, int good_commentnum) {
		super();
		this.good_id = good_id;
		this.good_name = good_name;
		this.good_price = good_price;
		this.good_info = good_info;
		this.good_sales = good_sales;
		this.good_shopname = good_shopname;
		this.good_imgpath = good_imgpath;
		this.good_commentnum = good_commentnum;
	}
	public Good() {
		super();
	}
	
	
	

}
