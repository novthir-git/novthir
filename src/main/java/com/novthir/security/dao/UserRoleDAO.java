/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2012, novthir.com
 * Filename:		com.novthir.security.dao.UserRoleDao.java
 * Class:			UserRoleDao
 * Date:			2013-8-7
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.novthir.security.entity.UserRole;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  1.1.0
 * @since   2013-8-7 下午5:08:15 
 */

public interface UserRoleDAO extends JpaRepository<UserRole, Long> {
	List<UserRole> findByUserId(Long userId);
}
