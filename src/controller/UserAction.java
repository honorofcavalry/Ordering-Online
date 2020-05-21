package controller;



import java.util.List;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Menu;
import entity.User_coll;
import entity.Shop;
import entity.User;
import service.ShopService;
import service.UserService;

@Controller
@RequestMapping("user")
public class UserAction {
	@Resource
	private UserService uservice;
	@Resource
	private ShopService shopser;
	@RequestMapping("login")
	public String login(String user_tel,String user_pwd,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=uservice.login(user_tel, user_pwd);
		
		if(user!=null){
			model.addAttribute("msg","登陆成功！欢迎您"+user.getUser_name());
			request.getSession().setAttribute("user", user);
			System.out.println(user);
			return "index";
		}else{
			model.addAttribute("msg","用户名或密码错误");
			return "login";
		}
			
	}
	@RequestMapping("add")
	public String addUser(User user,Model model){
		System.out.println(user);
		User res=uservice.querybyphone(user.getUser_tel());
		if(res==null){
			int mem=uservice.insertuser(user);
			if(mem>0){
				model.addAttribute("msg","注册成功，可以登录。");
				return "login";
			}else{
				model.addAttribute("msg","注册失败，请重试");
				return "register";
			}
		}else{
			model.addAttribute("msg","您输入的手机号码已被使用，请查看是否输入错误。");
			return "register";
		}
	}
	@RequestMapping("address")
	public String update(User user,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user1=(User) request.getSession().getAttribute("user");
		user.setUser_id(user1.getUser_id());
		uservice.updateuser(user);
		String msg="信息修改完成，请重新登录！";
		model.addAttribute("msg",msg);
		return "user_address";		
	}
	@RequestMapping("touxiang")
	public String updatetouxiang(User user,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		System.out.println(user);
		User user1=(User) request.getSession().getAttribute("user");
		user.setUser_id(user1.getUser_id());
		uservice.updateusertouxiang(user);
		String msg="头像上传完成，请重新登录！";
		model.addAttribute("msg",msg);
		return "user_address";		
	}
	@RequestMapping("collection")
	public String collection(int shop_id,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		Shop shop=shopser.list(shop_id);
		User user=(User) request.getSession().getAttribute("user");
		int user_id=user.getUser_id();
		User_coll coll=new User_coll();
		coll.setShop_id(shop);
		coll.setUser_id(user_id);
		shopser.insertcollection(coll);
		model.addAttribute("msg","收藏成功，感谢您对本店的支持！");
		return "shop";
		
	}
	@RequestMapping("listshop")
	public String listcollection(int user_id,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		List<User_coll> clist=shopser.querybyuserid(user_id);
		model.addAttribute("clist",clist);
		System.out.println(clist);
		return "user_favorites";	
	}
	@RequestMapping("shoplogin")
	public String shoplogin(String user_tel,String user_pwd,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=uservice.login(user_tel, user_pwd);
		List<Menu> mlist=uservice.queryall();
		if(user!=null){
			model.addAttribute("msg","登陆成功！欢迎您"+user.getUser_name());
			model.addAttribute("mlist",mlist);
			model.addAttribute("user",user);
			request.getSession().setAttribute("user", user);
			System.out.println("mlist为："+mlist);
			return "menu";
		}else{
			model.addAttribute("msg","用户名或密码错误");
			return "shoplogin";
		}
			
	}

}
