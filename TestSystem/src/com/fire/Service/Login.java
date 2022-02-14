package com.fire.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fire.Dao.LoginDaoIn;
import com.fire.Dao.TopicDaoIn;
import com.fire.Pojo.Topic;
import com.fire.Pojo.User;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Login {
	
	@Autowired
	private LoginDaoIn ld;
	
	@Autowired
	private TopicDaoIn td;
	
	@RequestMapping("/login")
	public String Login1(){
		return "login";
	}
	
	//private User u1 ;
	
	@RequestMapping("/user_login")
	public String Login2(User u , Model model ) {
		User u1 = ld.selectuser(u);
		if(u1 != null){
			//List<Topic> topiclist = ld.selecttopic();
			//model.addAttribute("Topic", topiclist);
			return "index";
		}else {
			model.addAttribute("ts","µÇÂ¼ÐÅÏ¢´íÎó£¬ÇëÖØÐÂµÇÂ¼!");
			return "login";
		}
	}

	@RequestMapping("/countlist")
	public @ResponseBody List<Topic> countlist(){
		List<Topic> topiclist = ld.selecttopic();
		return topiclist;
	}


	
	@RequestMapping("/userxingxi")
	public String Login3(Model model) {
		//model.addAttribute("User", u1);
		return "0";
	}
	
	
	@RequestMapping("/topiclistid")
	public String topiclistid(Topic id,Model model ,Integer count) {
		List<Topic> topiclistid = td.selectid(id);
		model.addAttribute("topiclistid", topiclistid);
		//model.addAttribute("count", count);
		return "1-1";
	}
	
}
