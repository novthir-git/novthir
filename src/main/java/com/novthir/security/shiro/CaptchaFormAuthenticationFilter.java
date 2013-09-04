/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.shiro.CaptchaFormAuthenticationFilter.java
 * Class:			CaptchaFormAuthenticationFilter
 * Date:			2013-8-7
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/

package com.novthir.security.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.web.util.WebUtils;

import com.novthir.security.SecurityConstants;

/**
 * 
 * @author <a href="mailto:novthir@gmail.com">novthir</a> 
 * Version 1.1.0
 * @since 2013-8-7 上午9:20:26
 */

public class CaptchaFormAuthenticationFilter extends BaseFormAuthenticationFilter {

	private String captchaParam = SecurityConstants.CAPTCHA_KEY;

	public String getCaptchaParam() {
		return captchaParam;
	}

	protected String getCaptcha(ServletRequest request) {
		return WebUtils.getCleanParam(request, getCaptchaParam());
	}

	@Override
	protected AuthenticationToken createToken(ServletRequest request,
			ServletResponse response) {
		String username = getUsername(request);
		String password = getPassword(request);
		String captcha = getCaptcha(request);
		boolean rememberMe = isRememberMe(request);
		String host = getHost(request);
		return new CaptchaUsernamePasswordToken(username, password, rememberMe,
				host, captcha);
	}

}
