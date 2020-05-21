package service;



import java.util.List;

import entity.Menu;
import entity.User;

public interface UserService {
	public User login(String user_tel,String user_pwd);
	public int updateuser(User user);
	public int updateusertouxiang(User user);
	public List<Menu> queryall();
	public User querybyphone(String user_tel);
	public int insertuser(User user);

}
