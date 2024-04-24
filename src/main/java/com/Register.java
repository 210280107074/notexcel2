package com;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("addnotes" , "addnotes.jsp");
		session.setAttribute("allnotes", "allnotes.jsp");
		String uname = (String)request.getParameter("uname");
		String pass = (String)request.getParameter("password");
		String city = (String)request.getParameter("city");
		String email = (String)request.getParameter("email");
		Session s = new Configuration().configure().buildSessionFactory().openSession();
		RegisterEntity r = new RegisterEntity();
		r.setUname(uname);
		r.setPassword(pass);
		r.setCity(city);
		r.setEmail(email);
		
		login l = new login();
		l.setuname(uname);
		l.setPassword(pass);
		l.setUid();
		
		Transaction tx = s.beginTransaction();
		s.save(r);
		s.save(l);
		
		tx.commit();
		s.close();
		response.sendRedirect("addnotes.jsp");
	}

}
