package controller;

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

import entity.Good;
import entity.Message;
import entity.Reply;
import entity.User;
import service.GoodService;
import service.ShopService;

@Controller
@RequestMapping("good")
public class GoodAction {
	@Resource
	private ShopService shopser;
	@Resource
	private GoodService goodser;
	@RequestMapping("list")
	public String list(int good_id,Model model,HttpSession session){
		
		Good good=goodser.querylist(good_id);
		List<Message> mlist=shopser.querybygood_id(good.getGood_id());
		model.addAttribute("mlist", mlist);
		model.addAttribute("good", good);
		return "detailsp";	
	}
	@RequestMapping("update")
	public String update(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		List<Good> glist=goodser.queryall(user.getUser_name());
		model.addAttribute("glist", glist);
		return "goodupdate";		
	}
	@RequestMapping("addgood")
	public String addgood(Good good,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		good.setGood_sales(0);
		good.setGood_commentnum(0);
		good.setGood_shopname(user.getUser_name());
		String imgpath="upload/"+good.getGood_imgpath();
		good.setGood_imgpath(imgpath);
		System.out.println("GOOD:"+good);
		goodser.addgood(good);
		model.addAttribute("msg", "上传成功");
		return "addgood";		
	}
	@RequestMapping("nomessagelist")
	public String nomessagelist(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		List<Message> glist=goodser.querybyno("未回复");
		model.addAttribute("glist", glist);
		return "nomessage";		
	}
	@RequestMapping("yesmessagelist")
	public String yesmessagelist(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		List<Message> glist=goodser.querybyno("已回复");
		List<Reply> rlist=goodser.querybyshopname(user.getUser_name());
		model.addAttribute("glist", glist);
		model.addAttribute("rlist", rlist);
		return "yesmessage";		
	}
	@RequestMapping("addreply")
	public String addreply(String reply_comment,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		User user=(User) request.getSession().getAttribute("user");
		System.out.println("reply_comment:"+reply_comment);
		Message message=goodser.querybystatus("未回复");
		goodser.updatestatus("已回复");
		Reply reply=new Reply();
		reply.setMessage_id(message);
		reply.setReply_comment(reply_comment);
		reply.setGood_id(message.getGood_id());
		reply.setUser_id(message.getUser_id());
		reply.setShop_name(user.getUser_name());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String ttime=df.format(new Date());
		reply.setReply_time(ttime);
		goodser.insertreply(reply);
		return "nomessage";		
	}
	@RequestMapping("querygood")
	public String querygood(String good_name,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response){
		Good good=goodser.querybygood_name(good_name);
		System.out.println("good_id:"+good.getGood_id());
		List<Message> mlist=shopser.querybygood_id(good.getGood_id());
		System.out.println("mlist:"+mlist);
		model.addAttribute("mlist", mlist);
		model.addAttribute("good", good);
		return "detailsp";
	}

}
