<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>E-mails</title>
<style>
table{
border: 2px solid black;
}

body{
background-color:  #f2f2f2;
}

</style>
</head>
<body>
<h1>
	Newsletter's E-mails
</h1>
<section>
<table>
	<tr>
	<th> Id </th>
	<th> Name </th>
	<th> E-mail </th>
	</tr>
	<c:forEach items="${emails}" var="eemail"> 
  <tr>
    <td>${eemail.id}</td>
    <td>${eemail.name}</td>
    <td>${eemail.email}</td>        
    <td><a href="<c:url value='/Email/remove/${eemail.id}'/> " > Delete </a></td>
    
  </tr>
</c:forEach>
</table>
</section>
<p>
<a href="<c:url value='/Email'/>">Add E-mail</a>
</p>
<p>
<a href="<c:url value='/admin'/>">Admin's Protected Page</a>
</p>
</body>
</html>