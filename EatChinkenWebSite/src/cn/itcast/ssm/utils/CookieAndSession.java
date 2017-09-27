package cn.itcast.ssm.utils;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 对cookie和session进行操作的工具类
 * @author xing
 * @date 2017-9-18
 * @name EatChinkenWebSite
 */
public class CookieAndSession {
	//对用户的权限进行插入
	/*
	 * 普通用户——normal
	 * 管理员用户——manager
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
		System.out.println("------------cookie插入完成---------");
	}
	
	//一个是删除当前登录用户的权限，一个是删除当前的用户的name
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
		System.out.println("------------cookie删除完成---------");
	}
	
	//从cookie中得到当前的用户name
	public static String getUserNameFromCookie(HttpServletRequest request,HttpServletResponse response) {
		String nowUserName = null;
		Cookie[] cookies = request.getCookies();
		if (cookies == null || cookies.length <= 0)  {
			System.out.println("cookie为空");
		}
		for(int n=0;n<cookies.length;n++){
			Cookie newCookie= cookies[n];
			if(newCookie .getName().equals("nowUsername")) {
				//代表当前有已经登陆的用户
				nowUserName = newCookie.getValue();
			}
		}
		return nowUserName;
	}
}
