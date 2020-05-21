package entity;

public class Shop {
	private int    shop_id;            //商店Id
	private String shop_name;          //商店名字
	private String shop_address;       //商店地址
	private String shop_tel;           //商店电话
	private String shop_good;          //商店特色菜
	private String shop_hours;         //营业时间
	private String shop_wifi;          //wifi
	private String shop_info;          //商店简介
	private String shop_imgpath;       //商店图片路径
	public int getShop_id() {
		return shop_id;
	}
	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_address() {
		return shop_address;
	}
	public void setShop_address(String shop_address) {
		this.shop_address = shop_address;
	}
	public String getShop_tel() {
		return shop_tel;
	}
	public void setShop_tel(String shop_tel) {
		this.shop_tel = shop_tel;
	}
	public String getShop_good() {
		return shop_good;
	}
	public void setShop_good(String shop_good) {
		this.shop_good = shop_good;
	}
	public String getShop_hours() {
		return shop_hours;
	}
	public void setShop_hours(String shop_hours) {
		this.shop_hours = shop_hours;
	}
	public String getShop_wifi() {
		return shop_wifi;
	}
	public void setShop_wifi(String shop_wifi) {
		this.shop_wifi = shop_wifi;
	}
	public String getShop_info() {
		return shop_info;
	}
	public void setShop_info(String shop_info) {
		this.shop_info = shop_info;
	}
	public String getShop_imgpath() {
		return shop_imgpath;
	}
	public void setShop_imgpath(String shop_imgpath) {
		this.shop_imgpath = shop_imgpath;
	}
	@Override
	public String toString() {
		return "Shop [shop_id=" + shop_id + ", shop_name=" + shop_name
				+ ", shop_address=" + shop_address + ", shop_tel=" + shop_tel
				+ ", shop_good=" + shop_good + ", shop_hours=" + shop_hours
				+ ", shop_wifi=" + shop_wifi + ", shop_info=" + shop_info
				+ ", shop_imgpath=" + shop_imgpath + "]";
	}
	public Shop() {
		super();
	}
	
	
}
