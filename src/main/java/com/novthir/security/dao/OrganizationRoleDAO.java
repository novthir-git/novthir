/**
 * <pre>
 * Copyright:		Copyright(C) 2013-2013, novthir.com
 * Filename:		com.novthir.security.dao.OrganizationRoleDao.java
 * Class:			OrganizationRoleDao
 * Date:			2013-4-15
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.0.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.novthir.security.entity.OrganizationRole;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.0.0
 * @since   2013-4-15 下午4:11:05 
 */

public interface OrganizationRoleDAO extends JpaRepository<OrganizationRole, Long> {
	List<OrganizationRole> findByOrganizationId(Long organizationId);
}
