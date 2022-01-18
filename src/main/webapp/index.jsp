<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body>

<%!
	String today(){
		java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	}
	%>
	
<h1><c:set var="variavel" value="Primeira p�gina JSP utilizando JSTL"/>
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje �: <c:out value="${d1}"/></h1>
	<h1>A data de hoje �: <fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${d1}"/></h1>
	<c:if test="${formatar == true}">
		<p>Vari�vel formatar = <c:out value="${formatar}"/><p>
	</c:if>
	<h1>A data de hoje �: <c:choose>
							<c:when test="${formatar == true}">
								<c:out value="<%=today() %>"/>
							</c:when>
							<c:otherwise>
								<c:out value="${d1}"/>
							</c:otherwise>
						  </c:choose></h1>

						  
			<!--PARTE2- -->
			
	 <c:set var="idade" value="20"/>
			<c:out value="${idade}"/>
			
			
			
 	<br>
	<h1> <c:set var="num" value="26"/>
	<c:choose>  
	<c:when test="${num%2==0}">  
	<c:out value="${num} � par"/>  
	</c:when>  
	<c:otherwise>  
	<c:out value="${num}� impar"/> 
	</c:otherwise>  
	</c:choose> 

	</h1>
 	 <br>

	
	 


</body>
</html>