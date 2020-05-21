package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Good;
import entity.Message;
import entity.Shop;
import service.ShopService;

@Controller
@RequestMapping("shop")
public class ShopAction {
	@Resource
	private ShopService shopser;
	@RequestMapping("list")
	public String list(int shop_id,Model model,HttpSession session){		
		System.out.println("shopid为："+shop_id);		
		Shop shop=shopser.list(shop_id);			
		List<Good> goodlist=shopser.querybyname(shop.getShop_name());
		List<Message> mlist=shopser.querybyid(shop_id);
		System.out.println(mlist);
		
		model.addAttribute("mlist",mlist);
		model.addAttribute("goodlist",goodlist);
		model.addAttribute("shop", shop);
		session.setAttribute("shop", shop);
		return "shop";
	}
	@RequestMapping("listname")
	public String listname(String good_shopname,Model model,HttpSession session){
		Shop shop=shopser.querylistname(good_shopname);
		
		model.addAttribute("shop", shop);
		return "shop";
	
	}

}
