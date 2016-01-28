<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Events</title>
<style>
body{
background-color:  #f2f2f2;
}
</style>
</head>
<style>
table{
border: 2px solid black;
}
</style>
<body>
<h1>
	Events
</h1>
<section>
<table>
	<tr>
	<th> Id </th>
	<th> Date </th>
	<th> Name </th>
	</tr>
	<c:forEach items="${events}" var="event"> 
  <tr>
    <td>${event.id}</td>
    <td>${event.date}</td>
    <td>${event.name}</td>
    <td> <a href="/SpringSecurityHelloWorlExample/Event/edit/${event.id}">Edit </a></td>
    <td><a href="<c:url value='/Event/remove/${event.id}'/> " > Delete </a></td>
    
  </tr>
</c:forEach>
</table>
</section>
<a href="<c:url value='/Event'/>">Add Event</a>
<a href="<c:url value='/admin'/>">Admin's Protected Page</a>
</body>
</html>