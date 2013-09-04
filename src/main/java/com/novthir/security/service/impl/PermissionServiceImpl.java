/**
 * <pre>
 * Copyright:		Copyright(C) 2013-2013, novthir.com
 * Filename:		com.novthir.security.service.impl.RolePermissionImpl.java
 * Class:			RolePermissionImpl
 * Date:			2013-4-16
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.0.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.novthir.security.dao.PermissionDAO;
import com.novthir.security.entity.Permission;
import com.novthir.security.service.PermissionService;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.0.0
 * @since   2013-4-16 下午2:12:41 
 */
@Service
@Transactional
public class PermissionServiceImpl implements PermissionService{
	
	@Autowired
	private PermissionDAO permissionDAO;

	/**   
	 * @param permission  
	 * @see com.novthir.security.service.PermissionService#save(com.novthir.security.entity.main.Permission)  
	 */
	
	public void save(Permission permission) {
		permissionDAO.save(permission);
	}

	/**   
	 * @param id
	 * @return  
	 * @see com.novthir.security.service.PermissionService#get(java.lang.Long)  
	 */
	
	public Permission get(Long id) {
		return permissionDAO.findOne(id);
	}

	/**   
	 * @param permission  
	 * @see com.novthir.security.service.PermissionService#update(com.novthir.security.entity.main.Permission)  
	 */
	
	public void update(Permission permission) {
		permissionDAO.save(permission);
	}

	/**   
	 * @param id  
	 * @see com.novthir.security.service.PermissionService#delete(java.lang.Long)  
	 */
	
	public void delete(Long id) {
		permissionDAO.delete(id);
	}
}
