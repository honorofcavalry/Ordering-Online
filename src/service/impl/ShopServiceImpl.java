package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.ShopDao;
import entity.User_coll;
import entity.Good;
import entity.Message;
import entity.Shop;
import service.ShopService;
@Service
public class ShopServiceImpl implements ShopService {
	@Resource
	private ShopDao sdao;

	@Override
	public Shop list(int shop_id) {
		return sdao.querylist(shop_id);
	}

	@Override
	public List<Good> querybyname(String shopname) {
		return sdao.querybyname(shopname);
	}

	@Override
	public List<Message> querybyid(int shop_id) {
		return sdao.querybyid(shop_id);
	}

	@Override
	public Shop querylistname(String shop_name) {
		return sdao.querylistname(shop_name);
	}

	@Override
	public int insertcollection(User_coll coll) {
		return sdao.insertcollection(coll);
	}

	@Override
	public List<User_coll> querybyuserid(int user_id) {
		return sdao.querybyuserid(user_id);
	}

	@Override
	public List<Message> querybygood_id(int good_id) {
		return sdao.querybygood_id(good_id);
	}

}
