package com.novthir.security;

import java.sql.Driver;

import org.junit.BeforeClass;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;
import org.springside.modules.utils.PropertiesLoader;

public class BaseTestCase {

	protected static SimpleDriverDataSource dataSource;

	protected static PropertiesLoader propertiesLoader = new PropertiesLoader("classpath:/jdbc.properties");

	private static Logger logger = LoggerFactory.getLogger(BaseTestCase.class);

	@BeforeClass
	public static void initFunctionalTestEnv() throws Exception {
		buildDataSourceOnce();
	}


	/**
	 * 构造数据源，仅构造一次.
	 * 连接参数从配置文件中读取，可指向本地的开发环境，也可以指向远程的测试服务器。
	 */
	protected static void buildDataSourceOnce() throws ClassNotFoundException {
		if (dataSource == null) {
			dataSource = new SimpleDriverDataSource();
			dataSource.setDriverClass((Class<? extends Driver>) Class.forName(propertiesLoader
					.getProperty("jdbc.driver")));
			dataSource.setUrl(propertiesLoader.getProperty("jdbc.url"));
			dataSource.setUsername(propertiesLoader.getProperty("jdbc.username"));
			dataSource.setPassword(propertiesLoader.getProperty("jdbc.password"));
		}
	}

	
}
