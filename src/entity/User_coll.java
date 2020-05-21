package entity;

public class User_coll {
	private int collect_id;
	private int user_id;
	private Shop shop_id;
	public int getCollect_id() {
		return collect_id;
	}
	public void setCollect_id(int collect_id) {
		this.collect_id = collect_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Shop getShop_id() {
		return shop_id;
	}
	public void setShop_id(Shop shop_id) {
		this.shop_id = shop_id;
	}
	@Override
	public String toString() {
		return "User_coll [collect_id=" + collect_id + ", user_id=" + user_id
				+ ", shop_id=" + shop_id + "]";
	}
	public User_coll(int collect_id, int user_id, Shop shop_id) {
		super();
		this.collect_id = collect_id;
		this.user_id = user_id;
		this.shop_id = shop_id;
	}
	public User_coll() {
		super();
	}
	
	

}
