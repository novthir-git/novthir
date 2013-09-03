/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2012, novthir.com
 * Filename:		com.novthir.security.dao.RoleDao.java
 * Class:			RoleDao
 * Date:			2013-8-7
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.novthir.security.entity.Role;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  1.1.0
 * @since   2013-8-7 下午5:03:07 
 */

public interface RoleDAO extends JpaRepository<Role, Long> {
	Page<Role> findByNameContaining(String name, Pageable pageable);
}
