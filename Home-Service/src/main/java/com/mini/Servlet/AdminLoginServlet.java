package com.mini.Servlet;
import java.io.IOException;
import java.math.RoundingMode;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mini.Db.DbConnection;
import com.mini.Db.MyDB;
import com.mini.Db.MyDbImpl;
import com.mini.Model.AdminGetandSet;
import com.mini.Model.login;

import java.text.DecimalFormat;

/*
 * Browser sends Http-Request to web server
 * 
 * code in web server => Input:HttpRequest, Output: HttpResponse
 * JEE with Servlet
 * 
 * web server responds with HttpResponse
 */


// Servlet  is a java programming language class
// used to extends the capabilities of servers
// that host applicants accessed by means of
// a request-response programming model.

//1. extends javax.servlet.http.HttpServlet
//2. @webServlet(urlPatterns ="/AdminLoginServlet")
//3. doPost (HttpServletRequest request, HttpServletResponse response)
//4. how is response created?


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	static Connection con;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		login l = new login();
		DecimalFormat df2 = new DecimalFormat(); 
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String n = request.getParameter("emailid");
		String p = request.getParameter("password");
		String submitType = request.getParameter("submit");
		if (submitType.equals("Login")) {
			if (MyDB.validateadmin(n, p)) 
				{
				out.println("<html><body><b>Successfully logged in" + "</b></body></html>");
					request.getRequestDispatcher("adminafterlogin.jsp").forward(request, response);
				} else 
				{
				out.print("<h1 style='color:red;'>Sorry username or password error</h1>");
				}
		} else if (submitType.equals("Register")) {
			String firstname = request.getParameter("fname");
			String lastname = request.getParameter("lname");
			String contactnumber = request.getParameter("phone");
			String email = request.getParameter("email");
			String password = request.getParameter("pass");
			AdminGetandSet a = new AdminGetandSet();
			a.setFirstname(firstname);
			a.setLastname(lastname);
			
			a.setContactnumber(contactnumber);
			a.setEmailid(email);
			a.setPassword(password);
			if (MyDbImpl.adminreg(a) == 1) {
				out.println("<html><body>successfully saved in database</body></html>");
			} else {
				request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
			}

		} else if (submitType.equals("      Services     ")) {
			request.getRequestDispatcher("service.jsp").forward(request, response);
		} else if (submitType.equals(" UPI Payments ")) {
			request.getRequestDispatcher("upipayments.jsp").forward(request, response);
		} else if (submitType.equals("Card Payments")) {
			request.getRequestDispatcher("cardpayments.jsp").forward(request, response);
		} else if (submitType.equals("HOME")) {

			request.getRequestDispatcher("adminafterlogin.jsp").forward(request, response);
		} else if (submitType.equals("LOGOUT")) {

			request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
		}else if (submitType.equals("Discount")) {
			request.getRequestDispatcher("discount.jsp").forward(request, response);
		}
		
		
		
		else if(submitType.equals("Give")) {
			String custemail = request.getParameter("custemail");
			String serv = request.getParameter("cservicetype");
			String cat = request.getParameter("ccategory");
			String cat1 = request.getParameter("ccategory1");
			String dis = request.getParameter("discount");
			String amount3 = request.getParameter("discount1");

			
			if(cat=="") {
				cat=cat1;
			}
//			
			
			ResultSet rs = null;
			try {
				AdminGetandSet a = new AdminGetandSet();
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
						"India@123");
				con=DbConnection.getconnection();
				PreparedStatement ps = con.prepareStatement("select * from discount where customeremail = ?;");
				
				ps.setString(1, custemail);
				rs = ps.executeQuery();
				
				while(rs.next()) {
				request.setAttribute("amount", rs.getString(3));
				l.setAmount(rs.getString(3));
				}
				ps.close();
				con.close();

			} catch (Exception e) {
				System.out.println(e);
			}
			String amount = (String) request.getAttribute("amount");
			String as = l.getAmount();
			if(amount3=="") {
//			Double amount1 = Double.toString(amount);
//			System.out.println("payment from discount"+a);
				double a =Double.parseDouble(amount);
				double discount = Double.parseDouble(dis);
				a = a - (a*(discount/100));
				String amount2 = String.format("%.2f", a);
				System.out.println("amount2"+amount2);
				System.out.println("amount3 :"+amount3);
				l.setAmount(amount2);
				request.setAttribute("amount", amount2);
				if(MyDbImpl.discount(custemail,serv,cat,amount2)>0) {
					request.getRequestDispatcher("discount.jsp").forward(request, response);
				}
			}else {
				if(MyDbImpl.discount(custemail,serv,cat,amount3)>0) {
					request.getRequestDispatcher("discount.jsp").forward(request, response);
				}
			}
		}
		
		
		else if(submitType.equals("Take")) {
			String custemail = request.getParameter("custemail");
			String serv = request.getParameter("cservicetype");
			String cat = request.getParameter("ccategory");
			String cat1 = request.getParameter("ccategory1");
			String dis = request.getParameter("discount");
			String amount3 = request.getParameter("discount1");

			
			if(cat=="") {
				cat=cat1;
			}
//			
			
			ResultSet rs = null;
			try {
				AdminGetandSet a = new AdminGetandSet();
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
						"India@123");
				con=DbConnection.getconnection();
				PreparedStatement ps = con.prepareStatement("select * from discount where customeremail = ?;");
				
				ps.setString(1, custemail);
				rs = ps.executeQuery();
				
				while(rs.next()) {
				request.setAttribute("amount", rs.getString(3));
				l.setAmount(rs.getString(3));
				}
				ps.close();
				con.close();

			} catch (Exception e) {
				System.out.println(e);
			}
			String amount = (String) request.getAttribute("amount");
			String as = l.getAmount();
			if(amount!="") {
//			Double amount1 = Double.toString(amount);
//			System.out.println("payment from discount"+a);
				double a =Double.parseDouble(amount);
				double discount = Double.parseDouble(dis);
				a = a + (a*(discount/100));
				String amount2 = String.format("%.2f", a);
				System.out.println("amount2"+amount2);
				System.out.println("amount3 :"+amount3);
				l.setAmount(amount2);
				request.setAttribute("amount", amount2);
				if(MyDbImpl.discount(custemail,serv,cat,amount2)>0) {
					request.getRequestDispatcher("discount.jsp").forward(request, response);
				}
			}else {
				if(MyDbImpl.discount(custemail,serv,cat,amount3)>0) {
					request.getRequestDispatcher("discount.jsp").forward(request, response);
				}
			}
		}
		
		
		out.close();
	}
}