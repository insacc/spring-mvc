<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
	
	<title>Home</title>
</head>

<body>
	<jsp:include page="menu.jsp" />
	<h1 id="banner">Home</h1>
	<hr/>

	<p>Welcome <span id="username"><%=SecurityContextHolder.getContext().getAuthentication().getName()%></span>!</p>
	
</body>
</html>