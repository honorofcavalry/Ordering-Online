package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import entity.Torder;
import entity.User;
import service.CartService;
import service.GoodService;
import service.OrderService;
import service.ShopService;
import service.UserService;

@Controller
@RequestMapping("cart")
public class CartAction {
	@Resource
	private ShopService shopser;
	@Resource
	private GoodService goodser;
	@Resource
	private UserService uservice;
	@Resource
	private CartService cservice;
	@Resource
	private OrderService oservice;
	@RequestMapping("insert")
	public String insert(int good_id,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		Good good=goodser.querylist(good_id);
		User user=(User) request.getSession().getAttribute("user");	
		Cart cartlist=cservice.querygood(user, good_id, "未付款");
		
		if(cartlist!=null){
			int i=cartlist.getGood_sum()+1;
			cservice.updatesum(user.getUser_id(), good_id, "未付款", i);
			List<Cart> clist=cservice.querycart(user.getUser_id(), "未付款");
			System.out.println("clist为："+clist);
			model.addAttribute("clist",clist);
			double total=0;
			for(int j=0;j<clist.size();j++){
				total=total+clist.get(j).getGood_price()*clist.get(j).getGood_sum();
			}
			System.out.println("total为："+total);
			model.addAttribute("total",total);
		}else{		
			Cart cart=new Cart();
			cart.setUser_id(user);
			cart.setGood_id(good.getGood_id());
			cart.setGood_imgpath(good.getGood_imgpath());
			cart.setGood_info(good.getGood_info());
			cart.setGood_name(good.getGood_name());
			cart.setGood_price(good.getGood_price());
			cart.setGood_shopname(good.getGood_shopname());
			cart.setGood_style("未付款");
			cart.setGood_sum(1);
			cservice.insertcart(cart);
			List<Cart> clist=cservice.querycart(user.getUser_id(), "未付款");
			model.addAttribute("clist",clist);
			double total=0;
			for(int j=0;j<clist.size();j++){
				total=total+clist.get(j).getGood_price()*clist.get(j).getGood_sum();
			}
			System.out.println("total为："+total);
			model.addAttribute("total",total);
		}	
		return "cart";	
	}
	@RequestMapping("list")
	public String list(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		List<Cart> clist=cservice.querycart(user.getUser_id(), "未付款");
		model.addAttribute("clist",clist);
		double total=0;
		for(int j=0;j<clist.size();j++){
			total=total+clist.get(j).getGood_price()*clist.get(j).getGood_sum();
		}
		model.addAttribute("total",total);
		return "cart";		
	}
	@RequestMapping("order")
	public String order(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		List<Cart> clist=cservice.querycart(user.getUser_id(), "未付款");
		double total=0;
		for(int j=0;j<clist.size();j++){
			total=total+clist.get(j).getGood_price()*clist.get(j).getGood_sum();
		}
		
		
		
		model.addAttribute("clist",clist);
		model.addAttribute("total",total);
		model.addAttribute("user",user);
		return "confirm_order";	
	}
	@RequestMapping("enter")
		public String enter(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		    User user=(User) request.getSession().getAttribute("user");
		    String good_style="准备接单";
		    String good_style1="未付款";
		    cservice.updatecart(user.getUser_id(), good_style, good_style1);
			String msg="已成功下单，请注意电话畅通！";
			model.addAttribute("msg",msg);
			
			String style="准备接单";
			List<Cart> clist=cservice.querycart(user.getUser_id(), style);
			Torder order=new Torder();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  //设置日期格式
			String order_time=df.format(new Date());
			int user_id=user.getUser_id();
			order.setUser_id(user_id);
			order.setOrder_time(order_time);
			order.setOrder_status("准备接单");
			order.setOrder_remark("请尽快送达");
			double total=0;
			for(int j=0;j<clist.size();j++){
				total=total+clist.get(j).getGood_price()*clist.get(j).getGood_sum();
			}
			order.setOrder_total(total);
			int goodid=clist.get(0).getGood_id();
			order.setGoods(goodid);
			System.out.println("order为："+order);
			cservice.insert(order);
			return "index";
	}
	@RequestMapping("querylist")
	public String querylist(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		String good_style="准备接单";
		List<Cart> clist=cservice.querylistfinish(user.getUser_name(), good_style);
		model.addAttribute("clist",clist);
		double total=0;
		List<Double> tlist=new ArrayList<Double>();
		for(int j=0;j<clist.size();j++){
			total=clist.get(j).getGood_price()*clist.get(j).getGood_sum();
			tlist.add(total);
		}
		model.addAttribute("tlist",tlist);
		return "archives";		
	}
	@RequestMapping("querylistfinish")
	public String querylistfinish(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		String good_style="已完成";
		List<Cart> clist=cservice.querylistfinish(user.getUser_name(), good_style);
		model.addAttribute("clist",clist);
		return "archive";		
	}
	@RequestMapping("queryin")
	public String queryin(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		String good_style="正在进行中";
		List<Cart> clist=cservice.querylistfinish(user.getUser_name(), good_style);
		model.addAttribute("clist",clist);
		return "archivein";		
	}
	@RequestMapping("updatenewcart")
	public String updatenewcart(int good_id,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		System.out.println("good_id:"+good_id);
		String good_style="正在进行中";
		String good_style1="准备接单";
		cservice.updatenewcart(good_id, good_style,good_style1);
		String order_status="确认送达";
		String order_status1="准备接单";
		oservice.updatestatus(order_status, order_status1);
		model.addAttribute("msg","订单接收成功！");
		return "archives";	
	}

}
