package com.yulin.ems.entity;

public class Dept {
	private int deptno;
	private String deptname;
	private String dept_person;
	public Dept() {
		super();
	}
	public Dept(int deptno, String deptname, String dept_person) {
		super();
		this.deptno = deptno;
		this.deptname = deptname;
		this.dept_person = dept_person;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getDept_person() {
		return dept_person;
	}
	public void setDept_person(String dept_person) {
		this.dept_person = dept_person;
	}
	@Override
	public String toString() {
		return "Dept [deptno=" + deptno + ", deptname=" + deptname
				+ ", dept_person=" + dept_person + "]";
	}
	
	
	
}
