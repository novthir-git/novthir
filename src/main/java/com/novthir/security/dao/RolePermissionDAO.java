/**
 * <pre>
 * Copyright:		Copyright(C) 2013-2013, novthir.com
 * Filename:		com.novthir.security.dao.RolePermissionDao.java
 * Class:			RolePermissionDao
 * Date:			2013-4-16
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.0.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.novthir.security.entity.RolePermission;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.0.0
 * @since   2013-4-16 下午2:10:57 
 */

public interface RolePermissionDAO extends JpaRepository<RolePermission, Long> {
	List<RolePermission> findByRoleId(Long roleId);
}
