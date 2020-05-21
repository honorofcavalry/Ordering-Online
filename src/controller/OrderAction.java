package controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Cart;
import entity.Good;
import entity.Message;
import entity.Torder;
import entity.Shop;
import entity.User;
import service.CartService;
import service.GoodService;
import service.OrderService;
import service.ShopService;

@Controller
@RequestMapping("order")
public class OrderAction {
	@Resource
	private CartService cservice;
	@Resource
	private OrderService oservice;
	@Resource
	private GoodService gservice;
	@Resource
	private ShopService shopser;
	@RequestMapping("insert")
	public String list(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){		
		User user=(User) request.getSession().getAttribute("user");
		String good_style="准备接单";
		List<Cart> clist=cservice.querycart(user.getUser_id(), good_style);
		Torder order=new Torder();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS");  //设置日期格式
		String order_time=df.format(new Date());
		order.setUser_id(user.getUser_id());
		order.setOrder_time(order_time);
		order.setOrder_status("准备接单");
		order.setOrder_remark("请尽快送达");
		double total=0;
		for(int j=0;j<clist.size();j++){
			total=total+clist.get(j).getGood_price()*clist.get(j).getGood_sum();
		}
		order.setOrder_total(total);
		/*String good_id=null;
		List<Good> glist=null;
		for(int j=0;j<clist.size();j++){
			good_id=good_id+","+clist.get(j).getGood_id();
		}*/
		int good_id=clist.get(0).getGood_id();
		order.setGoods(good_id);
		cservice.insert(order);
		return "index";
	}
	@RequestMapping("list")
	public String listorer(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");	
		List<Torder> tlist=oservice.queryorder(user.getUser_id());
		model.addAttribute("tlist",tlist);
		return "user_orderlist";	
	}
	@RequestMapping("songda")
	public String ordersongda(String order_status,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		String order_status1="马上评价";
		oservice.updatestatus(order_status1, order_status);
		return "user_center";		
	}
	@RequestMapping("pingjia")
	public String orderpingjia(String order_status){
		return "pingjia";		
	}
	@RequestMapping("yipingjia")
	public String addpingjia(String message_comment,int message_point,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		String order_status="马上评价";
		Torder torder=oservice.querybystatus(order_status);
		Message message=new Message();
		message.setComment(message_comment);
		message.setMessage_point(message_point);
		message.setUser_id(user);
		message.setMessage_status("未回复");
		int good_id=torder.getGoods();
		Good good=gservice.querylist(good_id);
		Shop shop=shopser.querylistname(good.getGood_shopname());
		message.setShop_id(shop);
		message.setGood_id(good);
		gservice.insertmessage(message);
		model.addAttribute("评价成功，期待您的下次光临！","msg");
		oservice.updatestatus("已完成", "马上评价");
		
		cservice.updatecart(user.getUser_id(), "已完成 ", "正在进行中");
		return "user_center";	
	}
	@RequestMapping("select")
	public String select(String order_status,Model model) throws UnsupportedEncodingException{
		String  order_status2 = new String(order_status.getBytes("ISO-8859-1"), "UTF-8");
		System.out.println("order_status:"+order_status2);
		if(order_status2.equals("确认送达")){
			String order_status1="马上评价";
			oservice.updatestatus(order_status1, order_status2);
			model.addAttribute("已确认送达，请尽快评价吧","msg");
			return "user_center";
		}else if(order_status2.equals("马上评价")){
			return "pingjia";
		}else{
			return "user_center";
		}
	}

}
