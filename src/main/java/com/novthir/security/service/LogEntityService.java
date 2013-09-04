/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.service.LogEntityService.java
 * Class:			LogEntityService
 * Date:			2013-5-3
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.service;

import java.util.List;

import org.springframework.data.jpa.domain.Specification;

import com.novthir.security.entity.LogEntity;
import com.novthir.security.log.LogLevel;
import com.novthir.security.utils.Page;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.1.0
 * @since   2013-5-3 下午5:07:53 
 */

public interface LogEntityService {
	void save(LogEntity logEntity);
	
	LogEntity get(Long id);
	
	void update(LogEntity logEntity);
	
	void delete(Long id);
	
	List<LogEntity> findByLogLevel(LogLevel logLevel, Page page);
	
	List<LogEntity> findAll();
	
	List<LogEntity> findByExample(Specification<LogEntity> specification, Page page);
}
