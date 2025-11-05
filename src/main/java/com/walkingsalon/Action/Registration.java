package com.walkingsalon.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.walkingsalon.DAO.LoginDAO;
import com.walkingsalon.DAO.RegistrationDAO;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		
//		 if(m.equals("1")) {
//		if(RegistrationDAO.SaveCustomer(fname,lname,address1,address2,address3,city,zipcode,email,tele,username,password1)){
//			response.setContentType("text/html");  
//	        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
//	        rd.include(request,response); 
//		}
//		 
//	}
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    String m = request.getParameter("method");
		 String fname = request.getParameter("fname");
		 String lname = request.getParameter("lname");
		 String address1 = request.getParameter("address1");
		 String address2 = request.getParameter("address2");
		 String address3 = request.getParameter("address3");
		 String city = request.getParameter("city");
		 int zipcode = Integer.parseInt(request.getParameter("zipcode"));
		 String email = request.getParameter("email");
		 int tele = Integer.parseInt(request.getParameter("tele"));
		 String username = request.getParameter("username");
		 String password1 = request.getParameter("password1");
			try{
				 if(RegistrationDAO.SaveCustomer(fname,lname,address1,address2,address3,city,zipcode,email,tele,username,password1)){ 
				        RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
				        rd.forward(request,response);  
				    }  
				    else{  				         
				        RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");  
				        rd.forward(request,response);  
				    } 
				          
			}catch(Exception e) {
				e.printStackTrace();
			}	
	}

}
