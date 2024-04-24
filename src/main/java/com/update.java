package com;

import java.io.IOException;

import java.io.PrintWriter;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class update extends HttpServlet {
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Session s = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Transaction tx = s.beginTransaction();	
		int id = Integer.parseInt(request.getParameter("id"));
		PrintWriter out = response.getWriter();
		note note = s.get(note.class, id);
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		out.println(id );
		out.println(title);
		out.println(content);
		note.setTitle(title);
		note.setContent(content);
		tx.commit();
		s.save(note);
		s.close();
		response.sendRedirect("allnotes.jsp");
	}
	
	

}
