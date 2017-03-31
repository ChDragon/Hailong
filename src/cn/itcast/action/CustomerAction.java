package cn.itcast.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.entity.Customer;
import cn.itcast.service.CustomerService;

public class CustomerAction extends ActionSupport implements ModelDriven<Customer>{
	private Customer customer=new Customer();
	public String list(){
		CustomerService cs=new CustomerService();
		List<Customer> list = cs.findAll();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "list";
	}
	public String add(){
		
		CustomerService cs=new CustomerService();
		cs.addCustomer(customer);
		return "add";
	}
	
	public String edit(){
		CustomerService cs=new CustomerService();
		customer.copy(cs.edit(customer));
		return "edit";
	}
	@Override
	public Customer getModel() {
		// TODO Auto-generated method stub
		return customer;
	}
}
