/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.log.LogAPI.java
 * Class:			LogInterface
 * Date:			2013-5-5
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          2.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.log;

import java.util.Map;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  2.1.0
 * @since   2013-5-5 下午12:01:45 
 */

public interface LogAPI {
	void log(String message, LogLevel logLevel);
	
	void log(String message, Object[] objects, LogLevel logLevel);
	
	/**
	 * 
	 * 得到全局日志等级
	 * @return
	 */
	LogLevel getRootLogLevel();
	
	/**
	 * 
	 * 得到自定义包的日志等级
	 * @return
	 */
	Map<String, LogLevel> getCustomLogLevel();
}
