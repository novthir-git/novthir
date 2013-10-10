package com.novthir.security.utils;

import java.util.List;

import com.google.common.collect.Lists;

/**
 * 用于dataTables.js分页的实体类 此类用于响应dataTables
 * 
 * @ClassName: CustomPage
 * @author: NovThir
 * @date:2013年10月9日 下午3:53:54
 */
public class DataTablesResp<T> {

	private int sEcho;
	private int iTotalRecords;
	private int iTotalDisplayRecords;
	private List<T> aaData = Lists.newArrayList();

	public int getsEcho() {
		return sEcho;
	}

	public void setsEcho(int sEcho) {
		this.sEcho = sEcho;
	}

	public int getiTotalRecords() {
		return iTotalRecords;
	}

	public void setiTotalRecords(int iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}

	public int getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}

	public void setiTotalDisplayRecords(int iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}

	public List<T> getAaData() {
		return aaData;
	}

	public void setAaData(List<T> aaData) {
		this.aaData = aaData;
	}

}
