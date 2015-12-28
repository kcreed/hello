<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String firstNameInJSP = request.getParameter("firstname");
String lastNameInJSP = request.getParameter("lastname");
String address1InJSP = request.getParameter("address1");
String address2InJSP = request.getParameter("address2");
String cityInJSP = request.getParameter("city");
String stateInJSP = request.getParameter("state");
String zipInJSP = request.getParameter("zip");
String countryInJSP = request.getParameter("country");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Registration Confirmation</title>
</head>
<body>
	<h1>Registration Confirmation</h1>
	<h2>Thank you for registering <%=firstNameInJSP%>!</h2>
	<h3>We have received the following information: </h3>
	<h3>First Name : <%=firstNameInJSP%></h3>
	<h3>Last Name : <%=lastNameInJSP%></h3>
	<h3>Address 1 : <%=address1InJSP%></h3>
	<h3>Address 2 : <%=address2InJSP%></h3>
	<h3>City : <%=cityInJSP%></h3>
	<h3>State : <%=stateInJSP%></h3>
	<h3>Zip : <%=zipInJSP%></h3>
	<h3>Country : <%=countryInJSP%></h3>
		
</body>
</html>