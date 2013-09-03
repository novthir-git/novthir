/**
 * <pre>
 * Copyright:		Copyright(C) 2013-2013, novthir.com
 * Filename:		com.novthir.security.dao.PermissionDao.java
 * Class:			PermissionDao
 * Date:			2013-4-16
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.0.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.novthir.security.entity.Permission;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.0.0
 * @since   2013-4-16 下午2:10:16 
 */

public interface PermissionDAO extends JpaRepository<Permission, Long> {

}
