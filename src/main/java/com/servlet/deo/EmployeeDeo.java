package com.servlet.deo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.connection.MySQLConnection;
import com.servlet.entity.Employee;

public class EmployeeDeo {
	
	Connection con=MySQLConnection.createConnection();
	
	public String saveEmployee(Employee employee)
	{
		String sql="insert into employee values(?,?,?,?,?,?)";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1, employee.getName());
			pst.setString(2, employee.getEmail());
			pst.setString(3, employee.getPassword());
			pst.setString(4, employee.getDep());
			pst.setString(5, employee.getGender());
			pst.setString(6, employee.getAddress());
			
			int s = pst.executeUpdate();
			
			if(s>0)
			{
				return "Employee Registered Successfully";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
//	
//	public void getByEmailAndPassword(String email,String password)
//	{
////		String sql="select email ,password where "
////		con.prepareStatement()
//	}

	
	
	public ResultSet loginEmployee(String email,String password)
	{
		
		ResultSet rs=null;
		String sql="select email,password from employee where email=? and password=?";
		
		try {
			PreparedStatement spt = con.prepareStatement(sql);
			
			spt.setString(1, email);
			spt.setString(2, password);
			
			 rs = spt.executeQuery();
			
			if(rs.next())
			{
				return rs;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
}
