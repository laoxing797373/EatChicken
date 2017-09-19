package cn.itcast.ssm.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.itcast.ssm.dao.DaoSupport;
import cn.itcast.ssm.utils.PageData;

/**
 * UserService ����User�����ɾ�Ĳ�
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
}
