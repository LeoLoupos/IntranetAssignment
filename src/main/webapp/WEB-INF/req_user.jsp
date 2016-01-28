<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Requested Application </title>
<style>
body{
background-color:  #f2f2f2;
}
</style>
<style>
table{
border: 2px solid black;
}
</style>	
</head>
<body>
<h1>
	Requested Application 
</h1>
<section>
<table>
	<tr>
	<th> Id </th>
	<th> Amka </th>
	<th> Name </th>
	<th> Surname </th>
	<th> Tameio </th>
	<th> Email </th>
	<th> Approved </th>
	</tr>
	<c:forEach items="${requests}" var="request"> 
  <tr>    
    <td>${request.id}</td>
    <td>${request.amka}</td>
    <td>${request.name}</td>
    <td>${request.surname}</td>
    <td>${request.tameio}</td>
    <td>${request.email}</td>
    <td>${request.approve}</td>
        
    <td> <a href="/SpringSecurityHelloWorlExample/Request/edit/${request.amka}">Edit </a></td>
    <td><a href="<c:url value='/Request/remove/${request.amka}'/> " > Delete </a></td>
    
  </tr>
</c:forEach>
</table>
</section>
<p>
<a href="<c:url value='/Request'/>">Add Request</a>
</p>
<p>
<a href="<c:url value='/admin'/>">Admin's Protected Page</a>
</p>
</body>
</html>