package dao;






import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Cart;
import entity.Good;
import entity.Message;
import entity.Torder;
import entity.Shop;
import entity.User;


public interface OrderDao {
	public List<Torder> queryorder(int user_id);
	public int updatestatus(@Param("order_status") String order_status,@Param("order_status1") String order_status1);
	public Torder querybystatus(String order_status);

}
