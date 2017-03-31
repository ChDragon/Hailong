package cn.itcast.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.entity.User;
import cn.itcast.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	private User user=new User();
	public String login(){
		UserService us=new UserService();
		User checkUser=us.login(user);
		user.copy(checkUser);
		if (checkUser!=null) {
			ServletActionContext.getRequest().getSession().setAttribute("user", user);
			return "loginSuccess";
		}
		return "loginFail";
	}
	
	public String logout(){
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		return "logout";
	}
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

}
