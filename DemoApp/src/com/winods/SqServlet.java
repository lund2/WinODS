package com.winods;

import java.io.IOException;
import java.io.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sq")
public class SqServlet extends HttpServlet 
{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	{

//      Using cookies instead		
//		int k = Integer.parseInt(req.getParameter("k"));
	
//		HttpSession session = req.getSession();
		int k = 0;
		Cookie cookies[] = req.getCookies();
		
		for(Cookie c : cookies)
		{
			if(c.getName().equals("k"))
				k = Integer.parseInt(c.getValue());
		}
			
		
//      session.removeAttribute("k");
//  	int k = (int) session.getAttribute("k");
	
		k = k * k;
		
		PrintWriter out = res.getWriter();
		out.println("Result is " + k);

		
		System.out.println("sq called");
	}
}
