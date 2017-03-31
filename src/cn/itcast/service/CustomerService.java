package cn.itcast.service;

import java.util.List;

import cn.itcast.dao.CustomerDao;
import cn.itcast.entity.Customer;

public class CustomerService {

	public void addCustomer(Customer customer) {
		CustomerDao dao = new CustomerDao();
		dao.addCustomer(customer);
	}

	public List<Customer> findAll() {
		CustomerDao dao = new CustomerDao();
		return dao.findAll();
	}

	public Customer edit(Customer customer) {
		CustomerDao dao = new CustomerDao();
		return dao.edit(customer);
	}

}
