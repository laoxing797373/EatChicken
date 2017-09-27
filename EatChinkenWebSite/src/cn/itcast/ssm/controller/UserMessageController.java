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
 * �û���Ϣ��ص�controller
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
	 * �����ҵ���Ϣ����
	 */
	@RequestMapping ( "/enterMessagePage" )
	public ModelAndView enterMessagePage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		//��cookie�еõ���ǰ���û�name
		String userName = CookieAndSession.getUserNameFromCookie(request, response);
		pd.put("userName", userName);
		User nowuser = userService.selectUserAllMessageWithUsername(pd);
		
		mv.addObject("userMessage", nowuser);
		mv.setViewName("MyMessage");
		return mv;
	}
	
	/*
	 * �����޸Ļ�����Ϣ����
	 * */
	@RequestMapping ( "/changeBaseMessagePage" )
	public ModelAndView changeMessagePage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		//��cookie�еõ���ǰ���û�name
		String userName = CookieAndSession.getUserNameFromCookie(request, response);
		pd.put("userName", userName);
		User nowuser = userService.selectUserAllMessageWithUsername(pd);
		
		mv.addObject("userMessage", nowuser);
		mv.setViewName("ChangeBaseMessage");
		return mv;
	}
}
