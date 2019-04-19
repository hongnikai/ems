package com.yulin.ems.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yulin.ems.entity.Dept;
import com.yulin.ems.entity.Emp;
import com.yulin.ems.service.DeptService;
import com.yulin.ems.service.EmpService;

@Controller
@Scope(value="prototype")
public class DeptController {

	@Resource(name="deptService")
	private DeptService service;
	
	@Resource(name="empService")
	private EmpService empservice;
	
	@RequestMapping("addDept.do")
	public String empadd(Dept dept){
		System.out.println(dept);
		service.addDept(dept);
		System.out.println("**********************************");
		return "redirect:/deptlist.do";
	}
	
	@RequestMapping("deptlist.do")//
	public String findAllDept(HttpServletRequest req){
		
		List<Dept> list=service.findAllDept();
		
		req.setAttribute("list", list);
		return "deptlist.jsp";
	}
	@RequestMapping("findDeptByDeptno.do")
	public String findDeptByDeptno(HttpServletResponse res,HttpServletRequest req){
		
		System.out.println("½øÈë£¬do");
		String str=req.getParameter("deptno");
		int deptno=Integer.parseInt(str);
		System.out.println("*****************************"+deptno);
		Dept dept=service.findDeptByDeptno(deptno);
		req.setAttribute("dept", dept);
		System.out.println(dept);
		
		
		int count=empservice.findEmpByDeptno(deptno);
		System.out.println(count);
		req.setAttribute("count", count);
		
		
		return "SelectDeptByDeptNO.jsp";
	}
	
	
}
