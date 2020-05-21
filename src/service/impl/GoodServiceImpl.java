package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.GoodDao;
import entity.Good;
import entity.Message;
import entity.Reply;
import service.GoodService;
@Service
public class GoodServiceImpl implements GoodService {
	@Resource
	private GoodDao gdao;

	@Override
	public Good querylist(int good_id) {
		return gdao.querylist(good_id);
	}

	@Override
	public List<Good> queryall(String good_shopname) {
		return gdao.queryall(good_shopname);
	}

	@Override
	public int addgood(Good good) {
		return gdao.addgood(good);
	}

	@Override
	public List<Message> querybyno(String message_status) {
		return gdao.querybyno(message_status);
	}

	@Override
	public List<Message> querybyyes(String message_status) {
		return gdao.querybyyes(message_status);
	}

	@Override
	public List<Reply> querybyshopname(String shop_name) {
		return gdao.querybyshopname(shop_name);
	}

	@Override
	public Message querybystatus(String message_status) {
		return gdao.querybystatus(message_status);
	}

	@Override
	public int updatestatus(String message_status) {
		return gdao.updatestatus(message_status);
	}

	@Override
	public int insertreply(Reply reply) {
		return gdao.insertreply(reply);
	}

	@Override
	public int insertmessage(Message message) {
		return gdao.insertmessage(message);
	}

	@Override
	public Good querybygood_name(String good_name) {
		return gdao.querybygood_name(good_name);
	}

}
