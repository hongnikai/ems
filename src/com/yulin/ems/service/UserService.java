package com.yulin.ems.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yulin.ems.dao.UserDao;
import com.yulin.ems.entity.User;

@Service
public class UserService {
	
	@Resource(name="userDao")
	private UserDao userDao;
	
	public boolean checkLog(String user,String pwd){
		Map map=new HashMap<String, Object>();
		map.put("user", user);
		map.put("pwd", pwd);
		User userobj=userDao.findUser(map);
		if(userobj!=null){
			return true;
		}
		return false;
	}
	
	
	public void addUser(User user){
		userDao.addUser(user);
	}
	
	
	
}
