package cn.itcast.dao;

import org.junit.Test;

import cn.itcast.entity.Customer;
import cn.itcast.service.CustomerService;

public class MyTest {
	@Test
	public void addCustomer(){
		CustomerService cs=new CustomerService();
		for (int i = 0; i < 10; i++) {
			Customer customer=new Customer();
			customer.setCustLevel("高级VIP");
			customer.setCustLinkman("文涛");
			customer.setCustName("Ym"+i);
			customer.setCustSource("JaveEE10");
			cs.addCustomer(customer);
		}
	}
}
