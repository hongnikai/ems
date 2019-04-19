package com.yulin.ems.dao;

import java.util.Map;

import com.yulin.ems.entity.User;

public interface UserDao {
	public User findUser(Map map);
	public void addUser(User user);
}
