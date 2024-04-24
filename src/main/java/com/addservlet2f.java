package com;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class addservlet2f extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		addinlist a = new addinlist();
		a.addinlistf(title, content);
		ArrayList<note> list = a.returnListf();
		Session s = new Configuration().configure().buildSessionFactory().openSession();
		Transaction tx;
		for(int i=0;i<list.size();i++) {
			 tx = s.beginTransaction();
			s.save(list.get(i));
			tx.commit();
		}
		s.close();
		response.sendRedirect("popup.jsp");
	}
	
	

}
