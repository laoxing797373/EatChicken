package cn.itcast.ssm.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.itcast.ssm.bean.User;
import cn.itcast.ssm.dao.DaoSupport;
import cn.itcast.ssm.utils.PageData;

/**
 * UserService 包含User表的增删改查
 * 
 * @author xing
 * @date 2017-9-17
 * @name EatChinkenWebSite
 */
@Service("UserService")
public class UserService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	public void insertUser(PageData pd)throws Exception{
		dao.save("cn.itcast.ssm.bean.UserMapper.insertUser", pd);
	}
	
	public String selectUser(PageData pd)throws Exception{
		return (String) dao.findForObject("cn.itcast.ssm.bean.UserMapper.selectUser", pd);
	}
	
	public List selectUserList(PageData pd)throws Exception{ 
		return (List) dao.findForList("cn.itcast.ssm.bean.UserMapper.selectUserList", pd);
	}
	
	public User selectUserAllMessage(PageData pd)throws Exception{
		return (User) dao.findForObject("cn.itcast.ssm.bean.UserMapper.selectUserAllMessage", pd);
	}
	
	public User selectUserAllMessageWithUsername(PageData pd)throws Exception{
		return (User) dao.findForObject("cn.itcast.ssm.bean.UserMapper.selectUserAllMessageWithUsername", pd);
	}
	
	public void updateUserMessage(PageData pd) throws Exception {
		dao.update("cn.itcast.ssm.bean.UserMapper.updateUserMessage", pd);
	}
}
