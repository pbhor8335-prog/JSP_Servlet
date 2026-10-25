package com.servlet.service;

import java.sql.ResultSet;

import com.servlet.deo.EmployeeDeo;
import com.servlet.entity.Employee;

public class EmployeeService {
	
	EmployeeDeo deo=new EmployeeDeo();
	
	public String savedata(Employee employee)
	{
		return deo.saveEmployee(employee);
	}

	
	public ResultSet login(String email,String password)
	{
		return deo.loginEmployee(email, password);
	}
}
