package com.novthir.security.controller;

import java.util.List;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.transaction.annotation.Transactional;

import com.novthir.security.entity.User;
import com.novthir.security.service.UserService;
import com.novthir.security.utils.Page;

@ContextConfiguration({"/applicationContext.xml","/applicationContext-shiro-test.xml"}) //指定Spring的配置文件 /为classpath下  
public class UserServiceImplTest extends AbstractTransactionalJUnit4SpringContextTests {
	  //  @Autowired  
    //  private ApplicationContext appplicationContext; //自动注入applicationContext，这样就可以使用appli*.getBean("beanName")  
		@Autowired 
        private UserService userService;  

        @Before //在每个测试用例方法之前都会执行  
        public void init(){
        	
        }  
          
        @After //在每个测试用例执行完之后执行  
        public void destory(){  
        }  
          
        /*@Test
        @Transactional  //使用该注释会使用事务，而且在测试完成之后会回滚事务，也就是说在该方法中做出的一切操作都不会对数据库中的数据产生任何影响  
        @Rollback(false) //这里设置为false，就让事务不回滚  
        public void testAdd(){  
            Assert.assertNotNull(userService);  
            User user = new User();
            user.setCreateTime(new Date());
            user.setEmail("nssssso@test.com");
            user.setUsername("testTtestTtest");
            user.setPassword("123456");
            user.setRealname("毛s s");
            user.setPlainPassword("123456");
            user.setPhone("13518109993");
            user.setStatus("enabled");
            userService.save(user);
           // userService.registerUser(new User("UserService1","world!"));  
        }  */
          
        @Test
        @Transactional
        public void testFindAll() {  
            Assert.assertNotNull(userService); 
            Page page = new Page();
            List<User> users = userService.findAll(page);
            
            Assert.assertNotNull(users);
            System.out.println(users.size());
            
            User u = users.get(0);
            Assert.assertNotNull(u.getUsername());
            System.out.println(u.getUsername());
            Assert.assertNull(u.getPassword());
        }  
}























