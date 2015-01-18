<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

<c:url value="/" var="homeUrl"/>
<c:url value="user" var="userUrl"/>
<c:url value="admin" var="adminUrl"/>
<c:url value="logout" var="logoutUrl"/>
<c:url value="/login" var = "loginUrl"/>

<div class="menu">
	<ul>
		<li><a href="${homeUrl}">Home</a></li>
		<sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
		<li><a href="${userUrl}">User</a></li>
		</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<li><a href="${adminUrl}">Admin</a></li>
		</sec:authorize>
		<sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
		<li><a href="${logoutUrl}">Logout</a></li>
		</sec:authorize>
	</ul>
	<sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
	<span id="menu-username"><%=SecurityContextHolder.getContext().getAuthentication().getName()%></span>
	</sec:authorize>
	<span id="not logged in">"You are not logged in," <li><a href="${loginUrl}">Log-in</a></li> </span>
	<br style="clear:left"/>
</div>