package com.yulin.ems.dao;

import java.util.List;

import com.yulin.ems.entity.Emp;

public interface EmpDao {
	public List<Emp> findAll();
	public void addEmp(Emp emp);
	public void deleteEmp (String empId);
	public void updateEmp(Emp emp);
	public Emp findById(String empId);
	public int findEmpByDeptno(int deptno);
	public List<Emp> selectEmpName(String empName);
	public List<Emp> selectEmpJob(String empJob);
}
