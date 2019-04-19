package com.yulin.ems.dao;

import java.util.List;

import com.yulin.ems.entity.Dept;

public interface DeptDao {

	public void addDept(Dept dept);
	
	public List<Dept> findAllDept();
	
	public Dept findDeptByDeptno(int deptno);
}
