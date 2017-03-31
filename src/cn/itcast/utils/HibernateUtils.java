package cn.itcast.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {

	static Configuration cfg = null;
	static SessionFactory sessionFactory = null;
	//静态代码块
	static {
		//加载核心配置文件
		cfg = new Configuration();
		cfg.configure();
		//创建sessionFactory
		sessionFactory = cfg.buildSessionFactory();
	}
	
	//提供对外获取sessionFactory的方法
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public static Session getSession(){
		return sessionFactory.openSession();
	}
}
