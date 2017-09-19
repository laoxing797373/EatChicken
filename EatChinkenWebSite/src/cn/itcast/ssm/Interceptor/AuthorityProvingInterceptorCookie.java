package cn.itcast.ssm.Interceptor;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.utils.PageData;

public class AuthorityProvingInterceptorCookie implements HandlerInterceptor{

	
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		String contextPath=request.getContextPath();
		String url=request.getServletPath().toString();
		String authority = "visiter";
		String nowUser = "";
		String adminAuthority = "";
		String adminTypeId = "";
		//当前用户的ip地址
		String ip = "";
		
		ip = request.getRemoteAddr();
		System.out.println("——————————————————路径权限验证器开始执行——————————————————");
		System.out.println("AuthorityProvingInterceptorCookie-preHandle()-TIME : " + new Date());
		//System.out.println(contextPath);
		System.out.println(url);
		System.out.println("传入的ip地址为：" + ip);
		//
		Cookie[] cookies = request.getCookies();
		if (cookies == null || cookies.length <= 0)  {
			/*
			 * 当前没有登陆用户
			 * false
			 * */
			System.out.println("cookie为空");
		}
		for(int n=0;n<cookies.length;n++){
			Cookie newCookie= cookies[n];
			nowUser = newCookie.getName();
			System.out.println(newCookie.getName());
			if(newCookie.getName().equals("NowUserAuthority")) {
				/*代表当前有已经登陆的用户，拿出对应的权限
				 *因为是最低权限normal，所以只要当前有用户登陆，就可以了
				 */
				authority = newCookie.getValue();
				System.out.println("从cookie中拿到的权限是~~~：" + authority);
				return true;
			}
		}
		
		response.sendRedirect(contextPath+"/AuthorityFailure.jsp");
		
		return false;		
	}
	
}
