<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    <%@ page session="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Set Appointment's Informations</title>
<style>
body{
background-color:  #f2f2f2;
}
</style>
</head>
<body>
<h2>Set Appointment's Informations</h2>
<font color="red">${message}</font>
<form:form method="POST"  modelAttribute="newAppoint" action="/SpringSecurityHelloWorlExample/setAppoint">
   <table>   
   <tr>
        <td><form:label path="amka">Amka</form:label></td>
        <td><form:input path="amka"/></td>
        
    </tr>
     <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
        <td><form:errors path="name" cssClass="error" /></td>
    </tr>
    <tr>
        <td><form:label path="surname">Surname</form:label></td>
        <td><form:input path="surname" />  </td>
        <td><form:errors path="surname" cssClass="error" /></td>
    </tr>
     <tr>
        <td><form:label path="tameio">Tameio</form:label></td>
        <td><form:input path="tameio" />  </td>
    </tr> 
    <tr>
        <td><form:label path="ejetash">Examination</form:label></td>
        <td><form:input path="ejetash" />  </td>
    </tr>
     <tr>
        <td><form:label path="emergency">Emergency</form:label></td>
        <td><form:input path="emergency" />  </td>
    </tr>
    <tr>
        <td><form:label path="date">Date</form:label></td>
        <td><form:input path="date" />  </td>
    </tr>
    <tr>
        <td><form:label path="time">Time</form:label></td>
        <td><form:input path="time" />  </td>
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