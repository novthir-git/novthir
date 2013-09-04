/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.service.impl.LogEntityServiceImpl.java
 * Class:			LogEntityServiceImpl
 * Date:			2013-5-3
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.novthir.security.dao.LogEntityDAO;
import com.novthir.security.entity.LogEntity;
import com.novthir.security.log.LogLevel;
import com.novthir.security.service.LogEntityService;
import com.novthir.security.utils.Page;
import com.novthir.security.utils.PageUtils;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.1.0
 * @since   2013-5-3 下午5:08:05 
 */
@Service
@Transactional
public class LogEntityServiceImpl implements LogEntityService {
	
	@Autowired
	private LogEntityDAO logEntityDAO;

	/**   
	 * @param logEntity  
	 * @see com.novthir.security.service.LogEntityService#save(com.novthir.security.entity.main.LogEntity)  
	 */
	public void save(LogEntity logEntity) {
		logEntityDAO.save(logEntity);
	}

	/**   
	 * @param id
	 * @return  
	 * @see com.novthir.security.service.LogEntityService#get(java.lang.Long)  
	 */
	public LogEntity get(Long id) {
		return logEntityDAO.findOne(id);
	}

	/**   
	 * @param logEntity  
	 * @see com.novthir.security.service.LogEntityService#update(com.novthir.security.entity.main.LogEntity)  
	 */
	public void update(LogEntity logEntity) {
		logEntityDAO.save(logEntity);
	}

	/**   
	 * @param id  
	 * @see com.novthir.security.service.LogEntityService#delete(java.lang.Long)  
	 */
	public void delete(Long id) {
		logEntityDAO.delete(id);
	}

	/**
	 * 
	 * @param logLevel
	 * @param page
	 * @return  
	 * @see com.novthir.security.service.LogEntityService#findByLogLevel(com.novthir.security.log.LogLevel, com.novthir.security.util.dwz.Page)
	 */
	public List<LogEntity> findByLogLevel(LogLevel logLevel, Page page) {
		org.springframework.data.domain.Page<LogEntity> springDataPage = 
				logEntityDAO.findByLogLevel(logLevel, PageUtils.createPageable(page));
		page.setTotalCount(springDataPage.getTotalElements());
		return springDataPage.getContent();
	}

	/**   
	 * @return  
	 * @see com.novthir.security.service.LogEntityService#findAll()  
	 */
	public List<LogEntity> findAll() {
		return logEntityDAO.findAll();
	}

	/**
	 * 
	 * @param specification
	 * @param page
	 * @return  
	 * @see com.novthir.security.service.LogEntityService#findByExample(org.springframework.data.jpa.domain.Specification, com.novthir.security.util.dwz.Page)
	 */
	public List<LogEntity> findByExample(
			Specification<LogEntity> specification, Page page) {
		org.springframework.data.domain.Page<LogEntity> springDataPage = 
				logEntityDAO.findAll(specification, PageUtils.createPageable(page));
		page.setTotalCount(springDataPage.getTotalElements());
		return springDataPage.getContent();
	}
}
