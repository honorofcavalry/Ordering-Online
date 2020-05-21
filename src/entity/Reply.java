package entity;

public class Reply {
	private int reply_id;
	private String reply_comment;
	private Message message_id;
	private String reply_time;
	private String shop_name;
	private Good good_id;
	private User user_id;
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public String getReply_comment() {
		return reply_comment;
	}
	public void setReply_comment(String reply_comment) {
		this.reply_comment = reply_comment;
	}
	public Message getMessage_id() {
		return message_id;
	}
	public void setMessage_id(Message message_id) {
		this.message_id = message_id;
	}
	public String getReply_time() {
		return reply_time;
	}
	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
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
	@Override
	public String toString() {
		return "Reply [reply_id=" + reply_id + ", reply_comment="
				+ reply_comment + ", message_id=" + message_id
				+ ", reply_time=" + reply_time + ", shop_name=" + shop_name
				+ ", good_id=" + good_id + ", user_id=" + user_id + "]";
	}
	public Reply(int reply_id, String reply_comment, Message message_id,
			String reply_time, String shop_name, Good good_id, User user_id) {
		super();
		this.reply_id = reply_id;
		this.reply_comment = reply_comment;
		this.message_id = message_id;
		this.reply_time = reply_time;
		this.shop_name = shop_name;
		this.good_id = good_id;
		this.user_id = user_id;
	}
	public Reply() {
		super();
	}
	

}
