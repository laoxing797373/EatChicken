package cn.itcast.ssm.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.itcast.ssm.dao.DaoSupport;
import cn.itcast.ssm.utils.PageData;

/** Õ¾ÄÚÐÅService
 * @author xing
 * @date 2017-9-25
 * @name EatChinkenWebSite
 */
@Service("WebUserMessageService")
public class WebUserMessageService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	public void insertMessage(PageData pd)throws Exception{
		dao.save("cn.itcast.ssm.bean.WebUserMessage.insertMessage", pd);
	}
	
	
}
