package com.winods;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;

public class MyServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		PrintWriter out = response.getWriter();
		//response.setContentType("text/html");
		out.print("Hi ");
		
		ServletConfig cg = getServletConfig();
		
		String str = cg.getInitParameter("Phone");
		out.println(str);
		
	}

}
