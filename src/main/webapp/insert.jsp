<%@page import="com.main.person.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="home.jsp" %>
<form method="post">
	
	<table border=1 align="center">
		<tr>
			<th colspan="2">Insert Person Details</th>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" /></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" /></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" /></td>
		</tr>
			<tr>
			<td>Address</td>
			<td><input type="text" name="add" /></td>
		</tr>
			<tr>
			<td>Contact No.</td>
			<td><input type="text" name="contact_no" /></td>
		</tr>

		<tr>
			<td><td><input type="submit" name="submit" value="insert" />
			<input type="reset" name="reset" value="reset" /></td>

		</tr>
	</table>
	</form>
</body>
</html>

<%
if(request.getParameter("submit")!=null)
{
	
		
	Person per=new Person();
	per.setFname(request.getParameter("fname"));
	per.setLname(request.getParameter("lname"));
	per.setAdd(request.getParameter("add"));
	per.setEmail(request.getParameter("email"));
	per.setContactno(request.getParameter("contact_no"));
	
	
	PersonService pservice = PersonServiceProvider.getPersonService();
	
	pservice.InsertData(per);
	
	out.println("<script>alert('person added successful')</script>");
	
}
%>