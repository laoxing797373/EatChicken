package cn.itcast.ssm.utils;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

/**
 * ��cookie��session���в����Ĺ�����
 * @author xing
 * @date 2017-9-18
 * @name EatChinkenWebSite
 */
public class CookieAndSession {
	//���û���Ȩ�޽��в���
	/*
	 * ��ͨ�û�����normal
	 * ����Ա�û�����manager
	 * 
	 * */
	public static void writeUserCookie(HttpServletResponse response,String role,String userName) {
		System.out.println("DoCookieAndSession-writeCookie()-TIME : " + new Date());
		Cookie username_Cookie = new Cookie("NowUserAuthority",role);
		username_Cookie.setMaxAge(360000);
		username_Cookie.setPath("/"); 
		response.addCookie(username_Cookie);
		Cookie username = new Cookie("nowUsername", userName);
		username.setMaxAge(360000);
		username.setPath("/"); 
		response.addCookie(username);
		System.out.println("------------cookie�������---------");
	}
	
	//һ����ɾ����ǰ��¼�û���Ȩ�ޣ�һ����ɾ����ǰ���û���name
	public static void removeCookie(HttpServletResponse response) {		
		System.out.println("DoCookieAndSession-writeCookie()-TIME : " + new Date());
		
		Cookie username_Cookie = new Cookie("NowUserAuthority",null);
		
		username_Cookie.setMaxAge(0);
		username_Cookie.setPath("/"); 
		response.addCookie(username_Cookie);
		Cookie username = new Cookie("nowUsername", null);
		username.setMaxAge(0);
		username.setPath("/"); 
		response.addCookie(username);
		System.out.println("------------cookieɾ�����---------");
	}
}
