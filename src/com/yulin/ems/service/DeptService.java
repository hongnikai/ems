package com.yulin.ems.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yulin.ems.dao.DeptDao;
import com.yulin.ems.entity.Dept;

@Service
public class DeptService {

	@Resource(name="deptDao")
	private DeptDao dao;
	
	public void addDept(Dept dept){
		dao.addDept(dept);
	}
	
	public List<Dept> findAllDept(){
		
		List<Dept> list=dao.findAllDept();
		return list;
	}
	
	public Dept findDeptByDeptno(int deptno){
		Dept dept=dao.findDeptByDeptno(deptno);
		
		return dept;
	}
}
