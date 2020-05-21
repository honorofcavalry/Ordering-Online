package service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import service.UserService;
import dao.UserDao;
import entity.Menu;
import entity.User;
@Service
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao udao;

	@Override
	public User login(String user_tel, String user_pwd) {
		return udao.login(user_tel, user_pwd);
	}

	@Override
	public int updateuser(User user) {
		return udao.updateuser(user);
	}

	@Override
	public int updateusertouxiang(User user) {
		return udao.updateusertouxiang(user);
	}

	@Override
	public List<Menu> queryall() {
		return udao.queryall();
	}

	@Override
	public User querybyphone(String user_tel) {
		return udao.querybyphone(user_tel);
	}

	@Override
	public int insertuser(User user) {
		return udao.insertuser(user);
	}

}
