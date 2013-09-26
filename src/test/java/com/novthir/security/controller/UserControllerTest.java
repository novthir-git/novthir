package com.novthir.security.controller;

import java.util.Map;

import org.junit.After;
import org.junit.Assert;
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
public class UserControllerTest extends
		AbstractTransactionalJUnit4SpringContextTests {
	@Autowired
	public RequestMappingHandlerAdapter handlerAdapter;
	@Autowired
	private UserController userController;
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
		ModelAndView mv = null;
		try {
			request.setRequestURI("/management/security/user/test");
			mv = handlerAdapter.handle(request, response, new HandlerMethod(
					userController, "test"));
			System.out.println(response.getOutputStream());
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		///Assert.assertNotNull(mv);
		///Assert.assertEquals(response.getStatus(), 200);
	////	System.out.println(mv.getViewName());
		//Map m = mv.getModel();
	////	System.out.println(m);
		////Assert.assertEquals(mv.getViewName(),"management/security/user/test");
	}

	/*@Test
	public void postUpdateTeamPhotoEditWithStringParameter() throws Exception {
		MockMultipartHttpServletRequest request = new MockMultipartHttpServletRequest();
		String strTEAMPHOTOCLASSID = String.valueOf(TEAMPHOTOCLASSID);
		String strSPECIFICATIONID = String.valueOf(SPECIFICATIONID);
		final FileInputStream fis = new FileInputStream("c://ff3.jpg");
		MockMultipartFile multipartFile = new MockMultipartFile("photopath",
				"ff3.jpg", "image/jpeg", fis);
		request.addFile(multipartFile);
		request.setMethod("POST");
		request.setContentType("multipart/form-data");
		request.addHeader("Content-type", "multipart/form-data");
		request.setRequestURI("/teamphoto/edit/" + TEAMPHOTOID + "/");
		request.addParameter("leader", "lzj update");
		request.addParameter("STeamphotoclass", strTEAMPHOTOCLASSID);
		request.addParameter("SSpecification", strSPECIFICATIONID);
		int countTeamphoto = teamPhotoDao.getTeamphotoCount();
		int countTeamphotoclass = teamPhotoDao.getSTeamphotoclassCount();
		int countSpecification = teamPhotoDao.getSSpecificationCount();
		new AnnotationMethodHandlerAdapter().handle(request,
				new MockHttpServletResponse(), teamPhotoController);
		assertEquals(teamPhotoDao.getSTeamphotoById(TEAMPHOTOID).getLeader(),
				"lzj update");
		assertEquals(teamPhotoDao.getTeamphotoCount(), countTeamphoto);
		assertEquals(teamPhotoDao.getSTeamphotoclassCount(),
				countTeamphotoclass);
		assertEquals(teamPhotoDao.getSSpecificationCount(), countSpecification);
	}*/
}
