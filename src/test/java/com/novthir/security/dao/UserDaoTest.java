package com.novthir.security.dao;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
@ContextConfiguration({"/applicationContext.xml","/applicationContext-shiro-test.xml"}) //指定Spring的配置文件 /为classpath下
public class UserDaoTest extends AbstractTransactionalJUnit4SpringContextTests{

}
