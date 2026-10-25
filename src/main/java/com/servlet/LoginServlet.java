package com.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.service.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/process-login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		super.service(req, resp);
		
		String email = req.getParameter("email");
		
		String password = req.getParameter("password");
		
		EmployeeService service=new EmployeeService();
		
		ResultSet rs = service.login(email, password);
		
		try {
			if(rs.next())
			{
//			return ""
				
				req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
				
				req.setAttribute("email", rs.getString("email"));
				req.setAttribute("name", rs.getString("name"));
				
				req.setAttribute("address", rs.getString("address"));
				req.setAttribute("dep" ,rs.getString("dep"));
				req.setAttribute("gender", rs.getString("gender"));
				
				req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
				
			}else {
				req.setAttribute("errormsg", "invalid msg or password");
				req.getRequestDispatcher("login.jsp").include(req, resp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
