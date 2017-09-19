package cn.itcast.ssm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;


import cn.itcast.ssm.utils.Logger;
import cn.itcast.ssm.utils.Page;
import cn.itcast.ssm.utils.PageData;
import cn.itcast.ssm.utils.UuidUtil;

public class BaseController {

	private static final long serialVersionUID = 6357869213649815390L;
	
	/**
	 * �õ�PageData
	 */
	public PageData getPageData(){
		return new PageData(this.getRequest());
	}
	
	/**
	 * �õ�ModelAndView
	 */
	public ModelAndView getModelAndView(){
		return new ModelAndView();
	}
	
	/**
	 * �õ�request����
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}

	/**
	 * �õ�32λ��uuid
	 * @return
	 */
	public String get32UUID(){
		return UuidUtil.get32UUID();
	}
	
	/**
	 * �õ���ҳ�б����Ϣ 
	 */
	public Page getPage(){
		return new Page();
	}
	
	public static void logBefore(Logger logger, String interfaceName){
		logger.info("");
		logger.info("start");
		logger.info(interfaceName);
	}
	
	public static void logAfter(Logger logger){
		logger.info("end");
		logger.info("");
	}
	//�����־��Ϣ
	public void AddLog(String info) throws Exception{
		
	}
}
