<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>


<% Class.forName("org.postgresql.Driver"); %>

<html>
    <head>
        <title>Registered User Report</title>
    </head>

    <body>
        <h1>Registered User Report</h1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:postgresql://localhost:5432/postgres", "postgres",
					"chaching1");
			
			Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from public.users order by date desc") ; 
        %>

        <table BORDER="1">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address 1</th>
                <th>Address 2</th>
                <th>City</th>
                <th>State</th>
                <th>Zip</th>
                <th>Country</th>
                <th>Date</th>
            </tr>
            <% while(resultset.next()){ %>
            <tr>
                <td> <%= resultset.getString(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>
                <td> <%= resultset.getString(4) %></td>
                <td> <%= resultset.getString(5) %></td>
                <td> <%= resultset.getString(6) %></td>
                <td> <%= resultset.getString(7) %></td>
                <td> <%= resultset.getString(8) %></td>
                <td> <%= resultset.getString(9) %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>