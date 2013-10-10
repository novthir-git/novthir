package com.novthir.security.utils;


/**
 * 用于dataTables.js分页的实体类
 * 此类用于接受dataTables传递的查询参数
 * @ClassName: CustomPage
 * @author: NovThir
 * @date:2013年10月9日 下午3:53:54
 */
public class DataTablesReq {

	public final static String ORDER_DIRECTION_ASC = "ASC"; 
	public final static String ORDER_DIRECTION_DESC = "DESC";
	/**
	 * 默认每页记录数
	 */
	public static final int DEFAULT_PAGE_SIZE = 15;
	
	private int iSortCol_0; // 排序字段所对应的索引号
	private String sSortDir_0; // 排序字段的排序方式，升、降序
	private int iDisplayLength; // 默认显示的记录数
	private int iDisplayStart; // 当前页的第一条纪录的索引号
	private String sSearch; // 用于搜索的关键字
	private int sEcho; // 当前页面的第N次请求数据
	private String iSortingCols;
	private String iSortCol_;

	public int getISortCol_0() {
		return iSortCol_0;
	}

	public void setISortCol_0(int iSortCol_0) {
		this.iSortCol_0 = iSortCol_0;
	}

	public String getSSortDir_0() {
		return sSortDir_0;
	}

	public void setSSortDir_0(String sSortDir_0) {
		this.sSortDir_0 = sSortDir_0;
	}

	public int getIDisplayLength() {
		return iDisplayLength;
	}

	public void setIDisplayLength(int iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}

	public int getIDisplayStart() {
		return iDisplayStart;
	}

	public void setIDisplayStart(int iDisplayStart) {
		this.iDisplayStart = iDisplayStart;
	}

	public String getSSearch() {
		return sSearch;
	}

	public void setSSearch(String sSearch) {
		this.sSearch = sSearch;
	}

	public int getSEcho() {
		return sEcho;
	}

	public void setSEcho(int sEcho) {
		this.sEcho = sEcho;
	}

	public String getiSortingCols() {
		return iSortingCols;
	}

	public void setiSortingCols(String iSortingCols) {
		this.iSortingCols = iSortingCols;
	}

	public String getiSortCol_() {
		return iSortCol_;
	}

	public void setiSortCol_(String iSortCol_) {
		this.iSortCol_ = iSortCol_;
	}

}
