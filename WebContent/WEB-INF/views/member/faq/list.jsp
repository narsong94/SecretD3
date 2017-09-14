<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/headfoot.css">
<link rel="stylesheet" type="text/css" href="../../css/cscenter/faq.css">
</head>
<body>

	<jsp:include page="../../inc/header.jsp" />

	<main class="main">

	<div class="title">
		<img src="../../images/bg-cscenter.jpg" />
	</div>
	<div class="nt-container">
		<div class="tap">
			<!--  <label for="toggle_button" class="toggle_button">toggle
					button</label> <input type="checkbox" id="toggle_button">
				<div id="toggle_contents">
					Contents 
				</div>  -->
			<c:forEach var="f" items="${faqList}">
			<div class="">
				<label for="toggle_button${f.number}"
					class="toggle_button${f.number}">${f.title}</label>
				<input type="checkbox" id="toggle_button${f.number}">
				<div id="toggle_contents${f.number}">${f.content}</div>
			</div>
			</c:forEach>
		</div>
	</div>
	</main>
	<!-- 
	<label for="toggle_button" class="toggle_button">toggle button</label>
	<input type="checkbox" id="toggle_button">
	<div id="toggle_contents">
		Contents <label for="toggle_button" class="close_button">X</label>
	</div>
 -->


	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>