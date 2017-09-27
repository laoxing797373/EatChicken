package cn.itcast.ssm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.bean.User;
import cn.itcast.ssm.service.UserService;
import cn.itcast.ssm.utils.CookieAndSession;
import cn.itcast.ssm.utils.PageData;


/**
 * 用户信息相关的controller
 * @author xing
 * @date 2017-9-26
 * @name EatChinkenWebSite
 */
@Controller
@RequestMapping ( "/UserMessageController" ) 
public class UserMessageController extends BaseController{
	
	protected HttpServletResponse response;  
	protected HttpServletRequest request;
	
	@Resource(name="UserService")
	private UserService userService;
	
    @ModelAttribute  
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){  
        this.request = request;  
        this.response = response;  
    }
	/*
	 * 进入我的信息界面
	 */
	@RequestMapping ( "/enterMessagePage" )
	public ModelAndView enterMessagePage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		//从cookie中得到当前的用户name
		String userName = CookieAndSession.getUserNameFromCookie(request, response);
		pd.put("userName", userName);
		User nowuser = userService.selectUserAllMessageWithUsername(pd);
		
		mv.addObject("userMessage", nowuser);
		mv.setViewName("MyMessage");
		return mv;
	}
	
	/*
	 * 进入修改基本信息界面
	 * */
	@RequestMapping ( "/changeBaseMessagePage" )
	public ModelAndView changeMessagePage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		//从cookie中得到当前的用户name
		String userName = CookieAndSession.getUserNameFromCookie(request, response);
		pd.put("userName", userName);
		User nowuser = userService.selectUserAllMessageWithUsername(pd);
		
		mv.addObject("userMessage", nowuser);
		mv.setViewName("ChangeBaseMessage");
		return mv;
	}
}
