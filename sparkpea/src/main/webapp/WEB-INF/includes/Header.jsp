<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/nav.css"/>" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/nav.js"></script>
</head>
<body>
	<!-- Navigation bar Common to all pages -->
	<nav class="navbar navbar-inverse navbar-fixed-top" >
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand " style="color: white ;font-family:old english text mt">SPARKPEA</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="${pageContext.request.contextPath}/blog" style="color: white;font-family:algerian">Blog</a></li>
					<li><a href="${pageContext.request.contextPath}/forum" style="color: white;font-family:algerian">Forum</a></li>
					<li><a href="${pageContext.request.contextPath}/chat" style="color: white;font-family:algerian">Chat</a></li></ul>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="isAuthenticated()">
					<li><a style="color: white;font-family:algerian">Hello  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="${pageContext.request.contextPath}/perform_logout"><span
								class="glyphicon glyphicon-log-out" style="color: white"> LOGOUT</span></a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
					
					<form action="perform_login" method="post">
                <div class="navbar-form navbar-right" role="search">
                    <div class="form-group" style="color: white">
                        <input type="text" class="form-control" name="username" placeholder="Username">
                    </div>
                    <div class="form-group" style="color: white">
                        <input type="password" class="form-control" name="password" placeholder="Password" >
                    </div>
                    <button type="submit" class="btn btn-secondary" style="font-family:algerian">Sign In</button>
                    <a   href="#reg" data-toggle="modal"
							data-target="#registration"  class="btn btn-secondary" style="font-family:algerian">SIGN UP</a></div>
                </form>
           
					
					
					
					
					
					
					
						<!-- <li><a href="#log" data-toggle="modal"
							data-target="#login" ><span
								class="glyphicon glyphicon-log-in" style="color: white">SIGN IN</span></a></li> -->
						<!-- <li><a href="#reg" data-toggle="modal"
							data-target="#registration"><span
								class="glyphicon glyphicon-user"style="color: white">SIGH UP</span>
						</a></li> -->
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>


	<!-- ModalRegistration Form -->
	<div><%@include file="/WEB-INF/includes/ModalRegistration.jsp"%></div>
	<div><%@include file="/WEB-INF/includes/ModalLogin.jsp"%></div>
</body>
</html>

