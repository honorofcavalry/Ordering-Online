package service;

import java.util.List;

import entity.User_coll;
import entity.Good;
import entity.Message;
import entity.Shop;

public interface ShopService {
	public Shop list(int shop_id);
	
	public List<Good> querybyname(String shopname);
	public List<Message> querybyid(int shop_id);
	public Shop querylistname(String shop_name);
	public int insertcollection(User_coll coll);
	public List<User_coll> querybyuserid(int user_id);
	public List<Message> querybygood_id(int good_id);

}
