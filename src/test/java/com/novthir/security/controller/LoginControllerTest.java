package com.novthir.security.controller;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;

@ContextConfiguration({ "/applicationContext.xml",
		"/applicationContext-shiro-test.xml", "/spring-mvc-test.xml" })
// 指定Spring的配置文件 /为classpath下
public class LoginControllerTest extends
		AbstractTransactionalJUnit4SpringContextTests {
	@Autowired
	public RequestMappingHandlerAdapter handlerAdapter;
	@Autowired
	private LoginController loginController;

	private static MockHttpServletRequest request;

	private static MockHttpServletResponse response;

	@BeforeClass
	// 在每个测试用例方法之前都会执行
	public static void init() {
		request = new MockHttpServletRequest();
		request.setCharacterEncoding("UTF-8");
		response = new MockHttpServletResponse();
	}

	@After
	// 在每个测试用例执行完之后执行
	public void destory() {
	}

	@Test
	public void testLogin() {
		request.setRequestURI("/login");
		request.setMethod(HttpMethod.POST.name());
		request.setContentType("multipart/form-data");
		request.addHeader("Content-type", "multipart/form-data");
		request.addParameter("username", "admin");
		request.addParameter("password", "123456");
		ModelAndView mv = null;
		try {
			mv = handlerAdapter.handle(request, response, new HandlerMethod(
					loginController, "login"));
		} catch (Exception e) {
			e.printStackTrace();
		}

		Assert.assertNotNull(mv);
		Assert.assertEquals(response.getStatus(), 200);
		System.out.println(mv.getViewName());
		//Assert.assertEquals(mv.getViewName(), "/login");
	}

	public void testTest() {

	}
}
