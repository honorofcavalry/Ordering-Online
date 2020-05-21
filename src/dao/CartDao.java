package dao;






import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Cart;
import entity.Good;
import entity.Message;
import entity.Torder;
import entity.Shop;
import entity.User;


public interface CartDao {
	public int insertcart(Cart cart);
	public List<Cart> querycart(@Param("user_id") int user_id,@Param("good_style") String good_style);
	public Cart querygood(@Param("user") User user,@Param("good_id") int good_id,@Param("good_style") String good_style);
	public int updatesum(@Param("user_id") int user_id,@Param("good_id") int good_id,@Param("good_style") String good_style,@Param("good_sum") int good_sum);
	public int updatecart(@Param("user_id") int user_id,@Param("good_style") String good_style,@Param("good_style1") String good_style1);
	public int insert(Torder order);
	public List<Cart> querylist(@Param("good_shopname") String good_shopname);
	public List<Cart> querylistfinish(@Param("good_shopname") String good_shopname,@Param("good_style") String good_style);
	public int updatenewcart(@Param("good_id") int good_id,@Param("good_style") String good_style,@Param("good_style1") String good_style1);

}
