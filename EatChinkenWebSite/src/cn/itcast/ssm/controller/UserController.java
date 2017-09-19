package cn.itcast.ssm.controller;

import java.util.List;
import cn.itcast.ssm.utils.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.controller.BaseController;
import cn.itcast.ssm.service.UserService;
import cn.itcast.ssm.utils.PageData;

/**
 * 与用户有关的Controller
 * 包含注册，登陆
 * 
 * @author xing
 * @date 2017-9-17
 * @name EatChinkenWebSite
 */
@Controller
@RequestMapping ( "/UserController" ) 
public class UserController extends BaseController {
	
	protected HttpServletResponse response;  
	protected HttpServletRequest request;
	
	@Resource(name="UserService")
	private UserService userService;
    @ModelAttribute  
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){  
        this.request = request;  
        this.response = response;  
    }
	
	@RequestMapping ( "/userRegister" )
	public ModelAndView userRegister() throws Exception {
		
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		HttpServletRequest request = this.getRequest();
		
		userService.insertUser(pd);
		
		mv.setViewName("MainPage");
		return mv;
	}
	
	@RequestMapping ( "/userLogin" )
	public ModelAndView userLogin() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		HttpServletRequest request = this.getRequest();
		
		String userInputPassword = pd.getString("userPassword");
		String userPassword = userService.selectUser(pd);
		if(userInputPassword.equals(userPassword)) {
			System.out.println("登陆成功");
			/*
			 * 写入cookie
			 * */
			CookieAndSession.writeUserCookie(response, "normal", pd.getString("userName"));
			mv.setViewName("MainPage");
		} else {
			System.out.println("登陆失败");
		}
		
		return mv;
	}
}
