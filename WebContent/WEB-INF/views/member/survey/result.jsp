<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../css/reset.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../../css/main/survey.css">
<link rel="stylesheet" type="text/css" href="../../css/headfoot.css">
</head>
<body>

	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="sv-container clearfix">
		<h2 class="hidden">메인</h2>
		<div class="img">
			<img class="bt-survey" src="../../images/bg-sv.jpg" />
		</div>
		<div class="form2">
			<div class="espln">
			<div class="h2">
				<h2>결과</h2>
			</div>
				<c:forEach var="n" items="${list}">
					<form id="DiseaseForm">
						<p>${n.name}</p>
						<p>${n.explanation}</p>
				</form>
				</c:forEach>
			</div>
			<div class="hospital">
				<a class="btn" href="../hospital/list">병원찾기</a>
			</div>
		</div>
		</div>
	</main>

	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>