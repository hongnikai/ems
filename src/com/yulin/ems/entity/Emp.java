package com.yulin.ems.entity;

public class Emp {
	private String empId;
	private String empName;
	private int salary;
	private String job;
	private int dept_id;
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public Emp(String empId, String empName, int salary, String job, int dept_id) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.salary = salary;
		this.job = job;
		this.dept_id = dept_id;
	}
	public Emp() {
		super();
	}
	@Override
	public String toString() {
		return "Emp [empId=" + empId + ", empName=" + empName + ", salary="
				+ salary + ", job=" + job + ", dept_id=" + dept_id + "]";
	}
	
	
	
	

	


	
}
