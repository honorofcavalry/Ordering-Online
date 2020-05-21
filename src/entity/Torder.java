package entity;

import java.util.Date;
import java.util.List;

public class Torder {
	private int order_id;            // 订单编号
	private int user_id;             // 用户id
	private String order_time;       // 订单时间
	private String order_status;        // 订单状态
	private String order_remark;     //订单备注
	private double order_total;      //订单金额
	private int goods;        // 订单中商品列表
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public String getOrder_remark() {
		return order_remark;
	}
	public void setOrder_remark(String order_remark) {
		this.order_remark = order_remark;
	}
	public double getOrder_total() {
		return order_total;
	}
	public void setOrder_total(double order_total) {
		this.order_total = order_total;
	}
	public int getGoods() {
		return goods;
	}
	public void setGoods(int goods) {
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "Torder [order_id=" + order_id + ", user_id=" + user_id
				+ ", order_time=" + order_time + ", order_status="
				+ order_status + ", order_remark=" + order_remark
				+ ", order_total=" + order_total + ", goods=" + goods + "]";
	}
	public Torder(int order_id, int user_id, String order_time,
			String order_status, String order_remark, double order_total,
			int goods) {
		super();
		this.order_id = order_id;
		this.user_id = user_id;
		this.order_time = order_time;
		this.order_status = order_status;
		this.order_remark = order_remark;
		this.order_total = order_total;
		this.goods = goods;
	}
	public Torder() {
		super();
	}
	
	
	


}
