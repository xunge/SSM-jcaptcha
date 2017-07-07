package com.xunge.springemp.dao;


import com.xunge.springemp.pojo.User;

public interface UserDAO {
	public User findByName(String username) throws Exception;
	
	public int findByEmail(String email) throws Exception;
	
	public void addUser(User user) throws Exception;
}
