/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2012, novthir.com
 * Filename:		com.novthir.security.dao.ModuleDao.java
 * Class:			ModuleDao
 * Date:			2013-8-6
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.dao;

import java.util.List;

import javax.persistence.QueryHint;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;

import com.novthir.security.entity.Module;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  1.1.0
 * @since   2013-8-6 上午9:31:03 
 */

public interface ModuleDAO extends JpaRepository<Module, Long> {
	Page<Module> findByParentId(Long parentId, Pageable pageable);
	
	Page<Module> findByParentIdAndNameContaining(Long parentId, String name, Pageable pageable);
	
	@QueryHints(value={
			@QueryHint(name="org.hibernate.cacheable",value="true"),
			@QueryHint(name="org.hibernate.cacheRegion",value="com.novthir.security.entity.main")
		}
	)
	@Query("from Module m order by m.priority ASC")
	List<Module> findAllWithCache();
	
	/**
	 * 根据sn，查找Module
	 * 描述
	 * @param sn
	 * @return
	 */
	List<Module> findBySn(String sn);
}
