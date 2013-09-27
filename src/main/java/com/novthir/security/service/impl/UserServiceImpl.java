/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.service.impl.UserServiceImpl.java
 * Class:			UserServiceImpl
 * Date:			2013-8-7
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.service.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;
import com.novthir.security.dao.UserDAO;
import com.novthir.security.entity.User;
import com.novthir.security.exception.ExistedException;
import com.novthir.security.exception.ServiceException;
import com.novthir.security.service.UserService;
import com.novthir.security.shiro.ShiroDbRealm;
import com.novthir.security.shiro.ShiroDbRealm.HashPassword;
import com.novthir.security.utils.Page;
import com.novthir.security.utils.PageUtils;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  1.1.0
 * @since   2013-8-7 下午3:14:29 
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private UserDAO userDAO;
	
	@Autowired
	private ShiroDbRealm shiroRealm;
	
	/**  
	 * 构造函数
	 * @param jpaRepository  
	 */ 
	@Autowired
	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	
	public User get(Long id) {
		return userDAO.findOne(id);
	}

	
	public List<User> findAll(Page page) {
		List<User> users = Lists.newArrayList();
		org.springframework.data.domain.Page<Object[]> dataPage = userDAO.queryAll(PageUtils.createPageable(page));
		page.setTotalCount(dataPage.getTotalElements());
		if(dataPage.getContent().size() > 0){
			for (Object[] o : dataPage.getContent()) {
				User user = new User();
				user.setId(Long.parseLong(o[0].toString()));
				user.setCreateTime((Date) o[1]);
				users.add(user);
			}
		}
		return users;
	}
	
	/**
	 * 
	 * @param user
	 * @throws ExistedException  
	 * @see com.novthir.security.service.UserService#save(com.novthir.security.entity.main.User)
	 */
	public void save(User user) throws ExistedException {		
		if (userDAO.findByUsername(user.getUsername()) != null) {
			throw new ExistedException("用户添加失败，登录名：" + user.getUsername() + "已存在。");
		}
		
		if (userDAO.findByRealname(user.getRealname()) != null) {
			throw new ExistedException("用户添加失败，真实名：" + user.getRealname() + "已存在。");
		}
		
		//设定安全的密码，使用passwordService提供的salt并经过1024次 sha-1 hash
		if (StringUtils.isNotBlank(user.getPlainPassword()) && shiroRealm != null) {
			HashPassword hashPassword = ShiroDbRealm.encryptPassword(user.getPlainPassword());
			user.setSalt(hashPassword.salt);
			user.setPassword(hashPassword.password);
		}
		
		userDAO.save(user);
		shiroRealm.clearCachedAuthorizationInfo(user.getUsername());
	}

	/**   
	 * @param user  
	 * @see com.novthir.security.service.UserService#update(com.novthir.security.entity.main.User)  
	 */
	public void update(User user) {
		userDAO.save(user);
		shiroRealm.clearCachedAuthorizationInfo(user.getUsername());
	}
	
	/**
	 * 
	 * @param user
	 * @param newPwd
	 * @throws ServiceException  
	 * @see com.novthir.security.service.UserService#updatePwd(com.novthir.security.entity.main.User, java.lang.String)
	 */
	
	public void updatePwd(User user, String newPwd) throws ServiceException {
		//if (isSupervisor(user.getId())) {
		//	logger.warn("操作员{},尝试修改超级管理员用户", SecurityUtils.getSubject().getPrincipal());
		//	throw new ServiceException("不能修改超级管理员用户");
		//}
		//设定安全的密码，使用passwordService提供的salt并经过1024次 sha-1 hash
		boolean isMatch = ShiroDbRealm.validatePassword(user.getPlainPassword(), user.getPassword(), user.getSalt());
		if (isMatch) {
			HashPassword hashPassword = ShiroDbRealm.encryptPassword(newPwd);
			user.setSalt(hashPassword.salt);
			user.setPassword(hashPassword.password);
			
			userDAO.save(user);
			shiroRealm.clearCachedAuthorizationInfo(user.getUsername());
			
			return; 
		}
		
		throw new ServiceException("用户密码错误！");
	}

	/**   
	 * @param id  
	 * @see com.novthir.security.service.UserService#delete(java.lang.Long)  
	 */
	public void delete(Long id) throws ServiceException {
		if (isSupervisor(id)) {
			logger.warn("操作员{}，尝试删除超级管理员用户", SecurityUtils.getSubject()
					.getPrincipal() + "。");
			throw new ServiceException("不能删除超级管理员用户。");
		}
		User user = userDAO.findOne(id);
		userDAO.delete(user.getId());
		
		shiroRealm.clearCachedAuthorizationInfo(user.getUsername());
	}

	/**   
	 * @param username
	 * @return  
	 * @see com.novthir.security.service.UserService#get(java.lang.String)  
	 */
	public User get(String username) {
		return userDAO.findByUsername(username);
	}

	/**   
	 * @param page
	 * @param name
	 * @return  
	 * @see com.novthir.security.service.UserService#find(com.novthir.security.util.dwz.Page, java.lang.String)  
	 */
	public List<User> find(Page page, String name) {
		org.springframework.data.domain.Page<User> springDataPage = 
				userDAO.findByUsernameContaining(name, PageUtils.createPageable(page));
		page.setTotalCount(springDataPage.getTotalElements());
		return springDataPage.getContent();
	}

	/**
	 * 判断是否超级管理员.
	 */
	private boolean isSupervisor(Long id) {
		return id == 1;
	}
}
