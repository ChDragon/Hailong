package cn.itcast.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import cn.itcast.entity.Customer;
import cn.itcast.utils.HibernateUtils;

public class CustomerDao {

	//实现添加功能
	public void addCustomer(Customer customer) {
		// 得到sessionFactory
		SessionFactory sessionFactory = HibernateUtils.getSessionFactory();
		// 创建session
		Session session = sessionFactory.openSession();
		// 开启事务
		Transaction tx = session.beginTransaction();
		
		//写逻辑
		session.save(customer);
		
		//提交事务
		tx.commit();
		//关闭
		session.close();
		//sessionFactory不需要关闭
	}

	//查询所有记录
	public List<Customer> findAll() {
		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction tx = null;
		try {
			sessionFactory = HibernateUtils.getSessionFactory();
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			
			//查询操作
			//1 创建对象
			Criteria criteria = session.createCriteria(Customer.class);
			//2 调用方法得到结果
			List<Customer> list = criteria.list();
			//提交事务
			tx.commit();
			return list;
		}catch(Exception e) {
			tx.rollback();
		}finally {
			session.close();
		}
		return null;
	}

	public Customer edit(Customer customer) {
		Session session = HibernateUtils.getSession();
		session.beginTransaction();
		
		Query query = session.createQuery("from Customer where cid=?");
		query.setParameter(0, customer.getCid());
		Customer find = (Customer) query.uniqueResult();
		session.getTransaction().commit();
		session.close();
		return find;
	}

}
