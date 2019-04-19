package com.yulin.ems.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yulin.ems.entity.Emp;
import com.yulin.ems.service.EmpService;

@Controller
@Scope(value="prototype")
public class EmpController {
	
	@Resource(name="empService")
	private EmpService service;
	
	
	@RequestMapping("emplist.do")
	public String emplist(HttpServletRequest request){
		List<Emp> list=service.emplist();
		request.setAttribute("emplist", list);
		return "emplist.jsp";
	}
	
	@RequestMapping("empadd.do")
	public String empadd(Emp emp){
		System.out.println(emp);
		service.inserEmp(emp);
		return "redirect:/emplist.do";
	}
	
	@RequestMapping("empdelete.do")
	public String empdelete(String empId){
		service.deleteEmp(empId);
		return "redirect:/emplist.do";
	}
	
	
	@RequestMapping("toempupdate.do")
	public String empupdate(String empId,ModelMap map){
		Emp emp=service.findEmp(empId);
		map.put("emp", emp);
		return "updateEmp.jsp";
	}
	
	
	@RequestMapping("empupdate.do")
	public String empupdate(Emp emp){
		service.updateEmp(emp);
		return "redirect:/emplist.do";
	}
	
	@RequestMapping("selectEmpId.do")
	public String findEmpByEmpId(String empId,HttpServletRequest req){
		
	Emp emp=service.findEmp(empId);
		req.setAttribute("emp", emp);
		
		return "emp.jsp";
	}
	
	@RequestMapping("selectEmpName.do")
	public String selectEmpName(String empName,HttpServletRequest req){
		String empName2="%"+empName+"%";
		
		List<Emp> list =service.selectEmpName(empName2);
		req.setAttribute("list", list);
		return "emp2.jsp";
	}
	
	@RequestMapping("selectEmpJob.do")
	public String selectEmpJob(String empJob,HttpServletRequest req){
		String empJob2="%"+empJob+"%";
		
		List<Emp> list=service.selectEmpJob(empJob2);
		req.setAttribute("list", list);
		return "emp2.jsp";
	}
	
}
