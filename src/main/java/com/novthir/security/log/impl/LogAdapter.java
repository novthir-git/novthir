/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.log.LogAdapter.java
 * Class:			LogTemplateAdapter
 * Date:			2013-5-3
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.log.impl;

import java.util.Map;

import com.google.common.collect.Maps;
import com.novthir.security.log.LogAPI;
import com.novthir.security.log.LogLevel;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.1.0
 * @since   2013-5-3 下午5:21:07 
 */

public class LogAdapter implements LogAPI {

	/**   
	 * @param message
	 * @param logLevel  
	 * @see com.novthir.security.log.LogAPI#log(java.lang.String, com.novthir.security.log.LogLevel)  
	 */
	public void log(String message, LogLevel logLevel) {
		log(message, null, logLevel);
	}

	/**   
	 * @param message
	 * @param objects
	 * @param logLevel  
	 * @see com.novthir.security.log.LogAPI#log(java.lang.String, java.lang.Object[], com.novthir.security.log.LogLevel)  
	 */
	public void log(String message, Object[] objects, LogLevel logLevel) {
		
	}
	
	/**   
	 * @return  
	 * @see com.novthir.security.log.LogAPI#getRootLogLevel()  
	 */
	public LogLevel getRootLogLevel() {
		return LogLevel.ERROR;
	}

	/**   
	 * @return  
	 * @see com.novthir.security.log.LogAPI#getCustomLogLevel()  
	 */
	public Map<String, LogLevel> getCustomLogLevel() {
		return Maps.newHashMap();
	}
}
