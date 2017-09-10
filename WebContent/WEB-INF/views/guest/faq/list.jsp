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
<link rel="stylesheet" type="text/css" href="../../css/style.css">
<link rel="stylesheet" type="text/css" href="../../css/cscenter/faq.css">
</head>
<body>

	<jsp:include page="../inc/header.jsp" />
	<div class="space"></div>
	<main id="body" class="clearfix">
	<div class="content-container">
		<div id="notice-title" class="title">
			<p>CS CENTER - FAQ</p>
		</div>
		<h2 class="hidden">메인 화면</h2>

		<jsp:include page="../inc/aside.jsp" />

		<div class="main">
			<h2>자주하는 질문</h2>
			<div class="tap">
				<!-- <label for="toggle_button" class="toggle_button">toggle
					button</label> <input type="checkbox" id="toggle_button">
				<div id="toggle_contents">
					Contents 
				</div> -->
				<c:forEach var="n" items="${list}">
					<label for="toggle_button${n.number}"
						class="toggle_button${n.number}">${n.title}</label>
					<input type="checkbox" id="toggle_button${n.number}">
					<div id="toggle_contents${n.number}">${n.content}</div>
					
					<%-- <label for="${n.number}" class="toggle_label">a${n.title}</label>
					<input type="checkbox" id="${n.number}">
					<div id="${n.number}_contents">
						${n.content} <br />
						<br />
						<br /> ${n.answer}
					</div> --%>
				</c:forEach>
			</div>
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