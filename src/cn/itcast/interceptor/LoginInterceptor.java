package cn.itcast.interceptor;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import cn.itcast.entity.User;

public class LoginInterceptor extends MethodFilterInterceptor{

	protected String doIntercept(ActionInvocation invocation) throws Exception {
		//获得session中的User
		User user=(User) ServletActionContext.getRequest().getSession().getAttribute("user");
		if (user!=null) {
			return invocation.invoke();
		}
		return "loginFail";
	}

}
