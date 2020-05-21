package entity;

public class OrderGoodLink {
	private Integer id;
	private Integer orderId;
	private Integer goodId;
	private Integer goodNum;
	private String goodComment;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getGoodId() {
		return goodId;
	}
	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}
	public Integer getGoodNum() {
		return goodNum;
	}
	public void setGoodNum(Integer goodNum) {
		this.goodNum = goodNum;
	}
	public String getGoodComment() {
		return goodComment;
	}
	public void setGoodComment(String goodComment) {
		this.goodComment = goodComment;
	}
	
	
}
