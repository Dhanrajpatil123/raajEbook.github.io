package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDaoImplementation;
import com.entity.User;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


	try {	
		UserDaoImplementation dao = new UserDaoImplementation(DBConnect.getConnection());
		
		HttpSession session = req.getSession();
		
		
		
	
		String email = req.getParameter("email");
		
		String password = req.getParameter("password");
		
		
		
		if ("te@gmail.com".equals(email) && "123".equals(password)) {
			
			User us = new User();
			
			us.setName("Admin");
			
			session.setAttribute("userobj", us);
			
			resp.sendRedirect("admin/home.jsp");
		}
		else {
			
			User us = dao.login(email, password);
			
			
			if(us != null) {
				
				session.setAttribute("userobj", us);
				
				resp.sendRedirect("index.jsp");
			}
			else {
				
				session.setAttribute("failedMsg", "Email & Password Are Invalid");
				
				resp.sendRedirect("login.jsp");
			}


		}
		
	}
	catch (Exception e) {
		// TODO: handle exception
	}
		
		
		
		
	}
	
	

}
