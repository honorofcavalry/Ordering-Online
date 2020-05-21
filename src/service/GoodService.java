package service;

import java.util.List;

import entity.Good;
import entity.Message;
import entity.Reply;

public interface GoodService {
	public Good querylist(int good_id);
	public List<Good> queryall(String good_shopname);
	public int addgood(Good good);
	public List<Message> querybyno(String message_status);
	public List<Message> querybyyes(String message_status);
	public List<Reply> querybyshopname(String shop_name);
	public Message querybystatus(String message_status);
	public int updatestatus(String message_status);
	public int insertreply(Reply reply);
	public int insertmessage(Message message);
	public Good querybygood_name(String good_name);

}
