package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.CartDao;
import entity.Cart;
import entity.Torder;
import entity.User;
import service.CartService;
@Service
public class CartServiceImpl implements CartService {
	@Resource
	private CartDao cdao;

	@Override
	public int insertcart(Cart cart) {
		
		return cdao.insertcart(cart);
	}

	@Override
	public List<Cart> querycart(int user_id, String good_style) {
		return cdao.querycart(user_id, good_style);
	}

	@Override
	public Cart querygood(User user, int good_id, String good_style) {
		return cdao.querygood(user, good_id, good_style);
	}

	@Override
	public int updatesum(int user_id, int good_id, String good_style,
			int good_sum) {
		return cdao.updatesum(user_id, good_id, good_style, good_sum);
	}

	@Override
	public int updatecart(int user_id, String good_style, String good_style1) {
		return cdao.updatecart(user_id, good_style, good_style1);
	}

	@Override
	public int insert(Torder order) {		
		return cdao.insert(order);
	}

	@Override
	public List<Cart> querylist(String good_shopname) {
		return cdao.querylist(good_shopname);
	}

	@Override
	public List<Cart> querylistfinish(String good_shopname, String good_style) {
		return cdao.querylistfinish(good_shopname, good_style);
	}

	@Override
	public int updatenewcart(int good_id, String good_style, String good_style1) {
		return cdao.updatenewcart(good_id, good_style, good_style1);
	}

	

}
