<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<script src="Validator.js"></script>
</head>
<body>
	<h1>Registration</h1>
	<form name="registrationForm" method="post" action="register" onSubmit="return validateForm()">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="25%">&nbsp;</td>				
				<td width="75%">&nbsp;</td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstname"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lastname"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>Address 1:</td>
				<td><input type="text" name="address1"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>Address 2:</td>
				<td><input type="text" name="address2"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>			
			<tr>
				<td>City:</td>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>State:</td>
				<td><input type="text" name="state"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>Zip:</td>
				<td><input type="text" name="zip"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td>
					<select name="country" style="width: 161px; ">
					<option value="U. S.">U. S.</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="Submit"><td>
			</tr>
		</table>		
	</form>
</body>
</html>