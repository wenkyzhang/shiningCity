package com.shiningcity.entity;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 分页对象 
 * @author wenky
 *
 * @param <T>
 */
public class Pager<T> {

	/**
	 * 条件 
	 */
	private T condition;
	/**
	 * 当前页
	 */
	private int curPage;
	/**
	 * 总页数
	 */
	private int countPage;
	/**
	 * 总记录数 
	 */
	private int sumTotal;
	/**
	 * 当前页记录集合
	 */
	private List<T> data;
	
	/**
	 * 页码
	 */
	private List<Integer> pageNums;
	
	/**
	 * 每页大小 
	 */
	private int pageSize;
	
	public T getCondition() {
		return condition;
	}
	public void setCondition(T condition) {
		this.condition = condition;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getCountPage() {
		return countPage;
	}
	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}
	public int getSumTotal() {
		return sumTotal;
	}
	public void setSumTotal(int sumTotal) {
		this.sumTotal = sumTotal;
		this.countPage = sumTotal/this.pageSize + (sumTotal%this.pageSize == 0? 0:1);
		if(curPage > countPage)
		{
			curPage = countPage;
		}
		
		pageNums = new ArrayList<Integer>();
		
		//总页数不超过5页时，按实际页数显示 
		if(countPage < 6)
		{
			for(int i=1;i<=countPage;i++)
			{
				pageNums.add(i);
			}
		}
		// 当前页不超过4时，固定写入1,2,3,4,5 
		else if(curPage < 4)
		{
			pageNums.addAll(Arrays.asList(new Integer[]{1,2,3,4,5}));
		}
		// 当前页大于总页数-2，即处于最后2页时，从后往前推5个数 
		else if(curPage > (countPage - 2))
		{
			for(int i=countPage - 4;i<=countPage;i++)
			{
				pageNums.add(i);
			}
		}
		// 标准页码计算，当前页往前推2，往后推2
		else
		{
			pageNums.addAll(Arrays.asList(new Integer[]{curPage-2, curPage-1, curPage,curPage + 1,curPage + 2}));
		}
	}
	public List<Integer> getPageNums() {
		return pageNums;
	}
	public void setPageNums(List<Integer> pageNums) {
		this.pageNums = pageNums;
	}
	public Pager(int pageSize) {
		super();
		this.pageSize = pageSize;
		this.curPage = 0;
	}
	
	
	
	public Pager() {
		super();
		/**
		 * 默认每页20条记录 
		 */
		this.pageSize = 20;
	}
	public Pager(T condition, int curPage, int countPage, int sumTotal,
			List<T> data, int pageSize) {
		super();
		this.condition = condition;
		this.curPage = curPage;
		this.countPage = countPage;
		this.sumTotal = sumTotal;
		this.data = data;
		this.pageSize = pageSize;
	}
	
	
}
