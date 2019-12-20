<%@page import="com.main.person.*"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Data</title>
</head>
<body>
<%@include file="home.jsp" %>
	<table border=1 align="center">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Middle Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Contact No</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>

		<%
			List<Person> per=PersonServiceProvider.getPersonService().Getallperson();
		
		
		for (Person person : per) {
			out.println("<tr>");
			out.println("<td>"+person.getPid()+"</td>");
			out.println("<td>"+person.getFname()+"</td>");
			out.println("<td>"+person.getLname()+"</td>");
			out.println("<td>"+person.getEmail()+"</td>");
			out.println("<td>"+person.getAdd()+"</td>");
			out.println("<td>"+person.getContactno()+"</td>");
			out.println("<td><a href='update.jsp?person_id="+person.getPid()+"' >Update</td>");
			out.println("<td><a href='delete.jsp?person_id="+person.getPid()+"' >Delete</td>");
			out.println("</tr>");
				
			
			
		}
		%>


	</table>

</body>
</html>
