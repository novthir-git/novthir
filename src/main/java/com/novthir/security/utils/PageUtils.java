/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.utils.SpringDataJpaPageConvert.java
 * Class:			SpringDataJpaPageConvert
 * Date:			2013-8-6
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/

package com.novthir.security.utils;

import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;


/**
 * 
 * @author <a href="mailto:novthir@gmail.com">novthir</a> Version 1.1.0
 * @since 2013-8-6 下午10:03:18
 */

public class PageUtils {

	/**
	 * 生成spring data JPA 对象 描述
	 * 
	 * @param page
	 * @return
	 */
	public static Pageable createPageable(DataTablesReq req) {
		int page = 0 ,  size = DataTablesReq.DEFAULT_PAGE_SIZE;
		if(req != null){
			page = req.getIDisplayStart() / req.getIDisplayLength();
			size = req.getIDisplayLength();
		}
		if (StringUtils.isNotBlank(req.getSSortDir_0())) {
			// 忽略大小写
			if (req.getSSortDir_0().equalsIgnoreCase(DataTablesReq.ORDER_DIRECTION_ASC)) {
				return new PageRequest(page ,size, Sort.Direction.ASC, "username");
			} else {
				return new PageRequest(page,size, 	Sort.Direction.DESC, "username");
			}
		}

		return new PageRequest(page,size);
	}

	
}
