package com;

import java.io.*;
import java.net.URI;
import java.net.URISyntaxException;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.Date;
//import java.util.regex.*;

public class Register extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private boolean validateInput(String firstName, String lastName,
			String address1, String address2, String city, String state,
			String zip, String country, HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		PrintWriter out = response.getWriter();
		boolean valid = false;

		// validate input
		if (!firstName.matches("[a-zA-Z]+") || firstName.length() > 30) {
			out.println("<font color=red>FIRST NAME INVALID</font>");
		} else if (!lastName.matches("[a-zA-z]+([ '-][a-zA-Z]+)*") || lastName.length() > 30) {
			out.println("<font color=red>LAST NAME INVALID</font>");
		} else if (!address1.matches("\\d+\\s+([a-zA-Z]+|[a-zA-Z]+\\s[a-zA-Z]+)") || address1.length() > 30) {
			out.println("<font color=red>ADDRESS 1 INVALID</font>");
		} else if (address2.length() > 30) {
			out.println("<font color=red>ADDRESS 2 INVALID</font>");
		} else if (!city.matches("([a-zA-Z]+|[a-zA-Z]+\\s[a-zA-Z]+)") || city.length() > 30) {
			out.println("<font color=red>CITY INVALID</font>");
		} else if (!state.matches("[a-zA-Z]+") || state.length() > 2) {			
			out.println("<font color=red>STATE INVALID</font>");
		} else if (!zip.matches("\\d{5}") || zip.length() > 5) {
			out.println("<font color=red>ZIP INVALID</font>");
		} else if (country.equals("")) {
			out.println("<font color=red>COUNTRY INVALID</font>");
		} else {
			valid = true;
		}

		return valid;
	}
	
	private static Connection getConnection() throws URISyntaxException, SQLException {
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath();

	    return DriverManager.getConnection(dbUrl, username, password);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		//PrintWriter out = response.getWriter();

		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String country = request.getParameter("country");
		Timestamp timestamp = getCurrentJavaSqlTimestamp();

		boolean valid = validateInput(firstName, lastName, address1, address2,
				city, state, zip, country, request, response);

		if (valid) {

			try {

				// loading drivers for postgresql
				Class.forName("org.postgresql.Driver");

				/*// creating connection with the database
				Connection con = DriverManager.getConnection(
						"jdbc:postgresql://localhost:5432/postgres",
						"postgres", "chaching1");*/	
				
				Connection con = getConnection();

				PreparedStatement ps = con
						.prepareStatement("insert into public.users values(?,?,?,?,?,?,?,?,?)");

				ps.setString(1, firstName);
				ps.setString(2, lastName);
				ps.setString(3, address1);
				ps.setString(4, address2);
				ps.setString(5, city);
				ps.setString(6, state);
				ps.setString(7, zip);
				ps.setString(8, country);
				ps.setTimestamp(9, timestamp);

				int i = ps.executeUpdate();

				if (i > 0) {

					RequestDispatcher view = request
							.getRequestDispatcher("registrationConfirm.jsp");
					view.forward(request, response);

				}

			} catch (Exception e2) {
				e2.printStackTrace();
			}

		} else {
			RequestDispatcher view = request
					.getRequestDispatcher("register.jsp");
			// out.println("<font color=red>Either user name or password is wrong.</font>");
			view.include(request, response);

		}

	}

	public static Timestamp getCurrentJavaSqlTimestamp() {
		Date date = new Date();
		return new Timestamp(date.getTime());
	}
}