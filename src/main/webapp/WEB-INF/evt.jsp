<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Event's Information</title>
<style>
body{
background-color:  #f2f2f2;
}
.error {
    color: #ff0000;
    font-style: italic;
    font-weight: bold;
}
</style>
</head>
<body>
<h2>Event's Information</h2>
<form:form method="POST"  modelAttribute="newEvent" action="/SpringSecurityHelloWorlExample/addEvent">
   <table>   
   <tr>
        <td><form:label path="id">Id</form:label></td>
        <td><form:input path="id"/></td>
        
    </tr>
     <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
        <td><form:errors path="name" cssClass="error" /></td>
    </tr>
    <tr>
        <td><form:label path="date">Date</form:label></td>
        <td><form:input path="date" />  </td>
        <td><form:errors path="date" cssClass="error" /></td>

    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table> 
</form:form>
</body>
</html>