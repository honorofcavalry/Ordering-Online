package dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;




import entity.Menu;
import entity.User;

public interface UserDao {
	public User login(@Param("user_tel") String user_tel,@Param("user_pwd") String user_pwd);
	public int updateuser(User user);
	public int updateusertouxiang(User user);
	public List<Menu> queryall();
	public User querybyphone(String user_tel);
	public int insertuser(User user);

}
