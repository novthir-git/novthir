package com.novthir.security.utils;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import net.sf.cglib.beans.BeanGenerator;
import net.sf.cglib.beans.BeanMap;

/**
 * @see http://frank1998819.iteye.com/blog/1939981s
 * 动态为类添加属性
 * 
 * @ClassName: DynamicBean
 * @Description: TODO
 * @author: 1
 * @date:2013年10月10日 下午4:42:41
 */
public class DynamicBean {
	/**
	 * 实体Object
	 */
	private Object object = null;

	/**
	 * 属性map
	 */
	private BeanMap beanMap = null;

	public DynamicBean() {
		super();
	}

	public DynamicBean(Map<String,Object> propertyMap) {
		this.object = generateBean(propertyMap);
		this.beanMap = BeanMap.create(this.object);
	}

	/**
	 * 给bean属性赋值
	 * 
	 * @param property
	 *            属性名
	 * @param value
	 *            值
	 */
	public void setValue(String property, Object value) {
		beanMap.put(property, value);
	}

	/**
	 * 通过属性名得到属性值
	 * 
	 * @param property
	 *            属性名
	 * @return 值
	 */
	public Object getValue(String property) {
		return beanMap.get(property);
	}

	/**
	 * 得到该实体bean对象
	 * 
	 * @return
	 */
	public Object getObject() {
		return this.object;
	}

	/**
	 * @param propertyMap
	 * @return
	 */
	private Object generateBean(Map<String,Object> propertyMap) {
		BeanGenerator generator = new BeanGenerator();
		Set keySet = propertyMap.keySet();
		for (Iterator i = keySet.iterator(); i.hasNext();) {
			String key = (String) i.next();
			generator.addProperty(key, (Class) propertyMap.get(key));
		}
		return generator.create();
	}
}
