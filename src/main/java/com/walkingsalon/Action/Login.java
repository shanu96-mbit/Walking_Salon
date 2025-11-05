package com.walkingsalon.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletSecurityElement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.walkingsalon.DAO.LoginDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter(); 
	    String uname = request.getParameter("username");
		String password = request.getParameter("password");
			try{
				 if(LoginDAO.LoginUser(uname, password)){ 
				       RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp"); 
				       rd.forward(request,response);  
				    }  
				    else{  
				        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
				        rd.include(request,response);  
				    } 
				 out.close();
				         
			}catch(Exception e) {
				e.printStackTrace();
			}	
	}

}
