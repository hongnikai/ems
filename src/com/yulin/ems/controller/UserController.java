package com.yulin.ems.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yulin.ems.entity.User;
import com.yulin.ems.service.UserService;


@Controller
@Scope(value="prototype")
public class UserController {
	/*.声明service.*/
	@Resource(name="userService")
	private UserService service;
	
	@RequestMapping("checklogin.do")
	public String checkLogin(String name,String pwd,HttpServletRequest req,HttpServletResponse res){
		boolean flag=service.checkLog(name, pwd);
		if(flag){
			/*Cookie cookie=new Cookie("name", name);
		
			cookie.setMaxAge(60*60*24);
			cookie.setDomain("index.jsp");
			res.addCookie(cookie);*/
				//成功登录
			return "redirect:/index.jsp";
		}else{
				//没有成功登录
		req.setAttribute("error", "账号或密码不正确");
			return "login.jsp";
		}
	}
	@RequestMapping("regist.do")
	public String regist(User user){
		user.setDeleflg(0);
		service.addUser(user);
		return "redirect:/login.jsp";
	}
	
}
