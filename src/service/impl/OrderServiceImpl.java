package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.GoodDao;
import dao.OrderDao;
import entity.Good;
import entity.Torder;
import service.GoodService;
import service.OrderService;
@Service
public class OrderServiceImpl implements OrderService {
	@Resource
	private OrderDao odao;



	@Override
	public List<Torder> queryorder(int user_id) {
		return odao.queryorder(user_id);
	}
	@Override
	public int updatestatus(String order_status, String order_status1) {
		return odao.updatestatus(order_status, order_status1);
	}
	@Override
	public Torder querybystatus(String order_status) {
		return odao.querybystatus(order_status);
	}



	

}
