package com.novthir.security.utils;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import net.sf.cglib.beans.BeanGenerator;
import net.sf.cglib.beans.BeanMap;

import org.junit.Test;

/**
 * 测试为类 动态添加属性
 * @ClassName: DynamicBeanTest  
 * @Description: TODO 
 * @author: 1 
 * @date:2013年10月10日 下午4:51:56
 */
public class DynamicBeanTest {
	
	DataTablesReq dataTable = null;

	BeanMap beanMap = null;
	
	@Test
	public void Test() {
		try {
			 // 设置类成员属性  
	        HashMap propertyMap = new HashMap();  
	        propertyMap.put("id", Class.forName("java.lang.Integer"));  
	        propertyMap.put("name", Class.forName("java.lang.String"));  
	        propertyMap.put("address", Class.forName("java.lang.String"));
			this.dataTable = this.generateBean(propertyMap);
			this.beanMap = BeanMap.create(this.dataTable);
			
			   // 获得bean的实体
	        Object object = dataTable;

	        System.out.println("start...");
	        // 通过反射查看所有方法名
	        Class clazz = object.getClass();
	        Method[] methods = clazz.getDeclaredMethods();
	        for (int i = 0; i < methods.length; i++) {
	            System.out.println(methods[i].getName());
	        }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	private DataTablesReq generateBean(Map<String,Object> propertyMap) {
		BeanGenerator generator = new BeanGenerator();
		Set keySet = propertyMap.keySet();
		for (Iterator i = keySet.iterator(); i.hasNext();) {
			String key = (String) i.next();
			generator.addProperty(key, (Class) propertyMap.get(key));
		}
		return (DataTablesReq) generator.create();
	}
	
}
