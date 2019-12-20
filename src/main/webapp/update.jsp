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

<%
PersonService pservice= PersonServiceProvider.getPersonService();
Person person  =pservice.FindPerson(Integer.parseInt(request.getParameter("person_id")));
if(person!=null)
{
%>


<form method="post">
<%@include file="home.jsp"%>
	<table border=1 width="500px" align="center">
		<tr>
			<th colspan="2">Update Person Details</th>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value ="<%out.print(person.getFname()); %>" /></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" value ="<% out.print(person.getLname()); %>" /></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value ="<% out.print(person.getEmail()); %>" /></td>
		</tr>
			<tr>
			<td>Address</td>
			<td><input type="text" name="add" value ="<% out.print(person.getAdd()); %>" /></td>
		</tr>
			<tr>
			<td>Contact No.</td>
			<td><input type="text" name="contact_no" value ="<% out.print(person.getContactno()); %>" /></td>
		</tr>

		<tr>
			<td><td><input type="submit" name="submit" value="Update" />
			<input type="reset" name="reset" value="reset" /></td></td>

		</tr>
	</table>
	</form>

</body>
</html>


<% 
}
if(request.getParameter("submit")!=null)
{
	pservice= PersonServiceProvider.getPersonService();
	Person per=pservice.FindPerson(Integer.parseInt(request.getParameter("person_id")));
	per.setFname(request.getParameter("fname"));
	per.setLname(request.getParameter("lname"));
	per.setAdd(request.getParameter("add"));
	per.setEmail(request.getParameter("email"));
	per.setContactno(request.getParameter("contact_no"));
	
	pservice.UpdateData(per);
	out.println("<script>alert('person updated successful')</script>");
	response.sendRedirect("display.jsp");
	
	
}
%>