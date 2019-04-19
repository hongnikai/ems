package com.yulin.ems.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yulin.ems.dao.EmpDao;
import com.yulin.ems.entity.Emp;

@Service
public class EmpService {
	@Resource(name="empDao")
	private EmpDao dao;
	
	public List<Emp> emplist(){
		return dao.findAll();
	}
	
	
	public void inserEmp(Emp emp){
		dao.addEmp(emp);
	}
	
	public void deleteEmp(String empId){
		dao.deleteEmp(empId);
	}
	
	public void updateEmp(Emp emp){
		dao.updateEmp(emp);
	}
	
	public Emp findEmp(String empId){
		return dao.findById(empId);
	}
	
	public int findEmpByDeptno(int deptno){
		
		System.out.println("½øÈëservice²ã");
		System.out.println(deptno);
		return dao.findEmpByDeptno(deptno);
	}
	
	public List<Emp> selectEmpName(String empName){
		
		return dao.selectEmpName(empName);
	}
	
	public List<Emp> selectEmpJob(String empJob){
		
		return dao.selectEmpJob(empJob);
	}
	
}
