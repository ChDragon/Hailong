package cn.itcast.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.junit.Test;

import cn.itcast.entity.User;
import cn.itcast.utils.HibernateUtils;

public class UserDao {

	public User login(User user) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		session.beginTransaction();
		Query query = session.createQuery("from User u where u.username=? and u.password=?");
		query.setParameter(0, user.getUsername());
		query.setParameter(1, user.getPassword());
		User findUser=(User) query.uniqueResult();
		session.getTransaction().commit();
		session.close();
		return findUser;
	}
	@Test
	public void regist(){
		User user=new User();
		user.setUsername("aaa");
		user.setPassword("111");
		user.setNickName("大牛");
		Session session = HibernateUtils.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
}
