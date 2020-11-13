package com.winods;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;


@WebServlet("/add")
public class AddServlet extends HttpServlet 
{

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		
		
		//used to accept request from user
		//use parseInt to turn string passed by the user to an integer
		int i = Integer.parseInt(req.getParameter("num1"));
		int j = Integer.parseInt(req.getParameter("num2"));
		
		int k = i + j;
		

		Cookie cookie = new Cookie("k", k + "");
		res.addCookie(cookie);
		
		res.sendRedirect("sq");
		
//		HttpSession session = req.getSession();
//		session.setAttribute("k", k);
		
		
//		res.sendRedirect("sq?k=" +k); //URL rewriting : can use cookies or session management
		
		
/*		req.setAttribute("k", k);
		
		PrintWriter out = res.getWriter();
		out.println("Result is " + k);
*/		
//		//to call servlet you can request dispatcher of defer
//		RequestDispatcher rd = req.getRequestDispatcher("sq");
//		rd.forward(req, res);
		
	}
	
}
