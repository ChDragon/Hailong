package cn.itcast.service;

import cn.itcast.dao.UserDao;
import cn.itcast.entity.User;

public class UserService {

	public User login(User user) {
		UserDao ud=new UserDao();
		return ud.login(user);
	}
	
}
