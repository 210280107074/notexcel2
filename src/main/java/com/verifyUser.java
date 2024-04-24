package com;

import java.io.IOException;



import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import java.util.*;

public class verifyUser extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("uname");
		String pass = request.getParameter("pass");
		Session s = new Configuration().configure().buildSessionFactory().openSession();
		
		 try {
	            Query<login> query = s.createQuery("FROM login WHERE uname = :uname AND password = :password", login.class);
	            query.setParameter("uname", name);
	            query.setParameter("password", pass);
	            List<login> users = query.list();
	            if (!users.isEmpty()) {
	            	HttpSession session = request.getSession();
	        		session.setAttribute("addnotes" , "addnotes.jsp");
	        		session.setAttribute("allnotes", "allnotes.jsp");
	                
	                response.sendRedirect("success.jsp");
	            } else {
	            	response.sendRedirect("error.jsp");
	            }
	        } finally {
	            s.close();
	        }
	}

}
