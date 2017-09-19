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
		//��ǰ�û���ip��ַ
		String ip = "";
		
		ip = request.getRemoteAddr();
		System.out.println("������������������������������������·��Ȩ����֤����ʼִ�С�����������������������������������");
		System.out.println("AuthorityProvingInterceptorCookie-preHandle()-TIME : " + new Date());
		//System.out.println(contextPath);
		System.out.println(url);
		System.out.println("�����ip��ַΪ��" + ip);
		//
		Cookie[] cookies = request.getCookies();
		if (cookies == null || cookies.length <= 0)  {
			/*
			 * ��ǰû�е�½�û�
			 * false
			 * */
			System.out.println("cookieΪ��");
		}
		for(int n=0;n<cookies.length;n++){
			Cookie newCookie= cookies[n];
			nowUser = newCookie.getName();
			System.out.println(newCookie.getName());
			if(newCookie.getName().equals("NowUserAuthority")) {
				/*����ǰ���Ѿ���½���û����ó���Ӧ��Ȩ��
				 *��Ϊ�����Ȩ��normal������ֻҪ��ǰ���û���½���Ϳ�����
				 */
				authority = newCookie.getValue();
				System.out.println("��cookie���õ���Ȩ����~~~��" + authority);
				return true;
			}
		}
		
		response.sendRedirect(contextPath+"/AuthorityFailure.jsp");
		
		return false;		
	}
	
}
