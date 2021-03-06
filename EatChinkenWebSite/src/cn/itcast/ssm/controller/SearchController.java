package cn.itcast.ssm.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.bean.User;
import cn.itcast.ssm.service.UserService;
import cn.itcast.ssm.utils.PageData;

/**
 * @author xing
 * @date 2017-9-19
 * @name EatChinkenWebSite
 */
@Controller
@RequestMapping ( "/SearchController" ) 
public class SearchController extends BaseController{
	
	@Resource(name="UserService")
	private UserService userService;
	/*
	 * 普通搜索，对开放信息的用户进行搜索
	 * */
	@RequestMapping ( "/normalSearch" )
	public ModelAndView normalSearch() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		HttpServletRequest request = this.getRequest();
		
		ArrayList<User> ar = (ArrayList<User>) userService.selectUserList(pd);
		for(int i=0;i<ar.size();i++) {
			System.out.println(ar.get(i).getUserName());
		}
		
		mv.addObject("ar",ar);
		mv.setViewName("SearchResult");
		return mv;
	}
	
	
	/*
	 * 点击选择的战友 进入联系战友界面
	 */
	@RequestMapping ( "/enterConnectionPage" )
	public ModelAndView enterConnectionPage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		HttpServletRequest request = this.getRequest();
		
		User user = userService.selectUserAllMessage(pd);
		System.out.println(user.getUserName());
		mv.addObject("ar",user);
		mv.setViewName("SendMessage");
		return mv;
	}
}
