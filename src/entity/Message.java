package entity;

public class Message {
	private int message_id;
	private Shop shop_id;
	private Good good_id;
	private User user_id;
	private String comment;
	private String message_status;
	private int message_point;
	public int getMessage_id() {
		return message_id;
	}
	public void setMessage_id(int message_id) {
		this.message_id = message_id;
	}
	public Shop getShop_id() {
		return shop_id;
	}
	public void setShop_id(Shop shop_id) {
		this.shop_id = shop_id;
	}
	public Good getGood_id() {
		return good_id;
	}
	public void setGood_id(Good good_id) {
		this.good_id = good_id;
	}
	public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getMessage_status() {
		return message_status;
	}
	public void setMessage_status(String message_status) {
		this.message_status = message_status;
	}
	public int getMessage_point() {
		return message_point;
	}
	public void setMessage_point(int message_point) {
		this.message_point = message_point;
	}
	@Override
	public String toString() {
		return "Message [message_id=" + message_id + ", shop_id=" + shop_id
				+ ", good_id=" + good_id + ", user_id=" + user_id
				+ ", comment=" + comment + ", message_status=" + message_status
				+ ", message_point=" + message_point + "]";
	}
	public Message(int message_id, Shop shop_id, Good good_id, User user_id,
			String comment, String message_status, int message_point) {
		super();
		this.message_id = message_id;
		this.shop_id = shop_id;
		this.good_id = good_id;
		this.user_id = user_id;
		this.comment = comment;
		this.message_status = message_status;
		this.message_point = message_point;
	}
	public Message() {
		super();
	}
	
	
	

	
	

}
