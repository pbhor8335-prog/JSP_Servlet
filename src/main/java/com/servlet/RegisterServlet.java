package com.servlet;

import java.io.IOException;

import com.servlet.entity.Employee;
import com.servlet.service.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		super.service(req, resp);
		
//		System.out.println("Method Called");
//		resp.setContentType("text/html");
//		resp.getWriter().print("<h1 style='color:red'>Registration Successfully</h1>");
		
		String name = req.getParameter("name");
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		String dep = req.getParameter("department");
		
		String gender = req.getParameter("gender");
		
		String address = req.getParameter("address");
		
//		System.out.println(name);
//		
//		System.out.println(password);
//		
//		System.out.println(dep);
//		
//		System.out.println(gender);
//		
//		System.out.println(address);
		Employee employee=new Employee(name,email,password,dep,gender,address);
		EmployeeService service=new EmployeeService();
		String msg = service.savedata(employee);
		
		req.setAttribute("Succesmag", msg);
		
		req.getRequestDispatcher("login.jsp").forward(req, resp);
		
//		System.out.println();
	}

}
