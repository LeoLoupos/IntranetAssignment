<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>User Requested Information</title>
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
<h2>User Requested Information</h2>
<form:form method="POST"  modelAttribute="newRequest" action="/SpringSecurityHelloWorlExample/addRequest">
   <table>
   <tr>
        <td><form:label path="Id">id</form:label></td>
        <td><form:input path="Id"/></td>
        
    </tr>   
   <tr>
        <td><form:label path="Amka">Amka</form:label></td>
        <td><form:input path="Amka"/></td>
        
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
        <td><form:errors path="tameio" cssClass="error" /></td>

    </tr> 
    <tr>
        <td><form:label path="email">Email</form:label></td>
        <td><form:input path="email" />  </td>
        <td><form:errors path="email" cssClass="error" /></td>
        
    </tr>
    <tr>
        <td><form:label path="username">Username</form:label></td>
        <td><form:input path="username" />  </td>
    </tr>     <tr>
        <td><form:label path="password">Password</form:label></td>
        <td><form:input path="password" />  </td>
    </tr>
     <tr>
        <td><form:label path="approve">Approve</form:label></td>
        <td><form:input path="approve" />  </td>
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