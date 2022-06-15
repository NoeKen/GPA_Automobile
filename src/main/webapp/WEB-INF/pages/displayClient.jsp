<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%-- <jsp:useBean id='client' scope='session' class='com.clientel.beans.Client'/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<link rel="stylesheet" href="<c:url value='/resources/theme1/css/display.css'/>"></link>
<%-- <jsp:setProperty name='client' property='firstName' value='Jean' />
<jsp:setProperty name='client' property='lastName' value='Claude' />
<jsp:setProperty name='client' property='phoneNumber' value='656862809' /> --%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Client</title>
</head>
<body>
	<h1>Fiche client</h1>
	 <%-- <table>
		<tr>
			<td>
				First Name
			</td>
			<td>
				<c:out value="${client.firstName}"/>
				<jsp:getProperty property='firstName' name='client'/>
			</td>
		</tr>
		<tr>
			<td>
				Last Name
			</td>
			<td>
				${client.lastName}
				<c:out value="${client.lastName}"/>
				<jsp:getProperty property='lastName' name='client'/>
			</td>
		</tr>
		<tr>
			<td>
				Phone Number
			</td>
			<td>
				${client.phoneNumber}
				<c:out value="${client.phoneNumber}"/>
				<jsp:getProperty property='phoneNumber' name='client'/>
			</td>
		</tr>
	</table>
	  --%>
	<table class="responstable">
  
  <tr>
    <th>Main driver</th>
    <th data-th="Driver details"><span>First name</span></th>
    <th>Last Name</th>
    <th>Phone Number</th>
  </tr>
  <c:forEach var="admins" items="${admins}">
  <tr>
    <td><input type="radio"/></td>
    <td><c:out value="${admins.firstName}"/></td>
    <td><c:out value="${admins.lastName}"/></td>
    <td><c:out value="${admins.tel}"/></td>
  </tr>
  </c:forEach>
  
 
  
</table>

</body>
</html>