<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../../css/reset.css" type="text/css" rel="stylesheet" />
<link href="../../css/headfoot.css" type="text/css" rel="stylesheet" />
<link href="../../css/main/mypage.css" type="text/css" rel="stylesheet" />
</head>
<body>

	<!-- 헤더부분 -->
	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-mypage2.png" />
	</div>

	<jsp:include page="inc/aside.jsp" />

	<div class="mp-container">
		<h2>1:1 문의 현황</h2>

		<form id="LetterForm" method="post">
			<table class="list-table">
				<tr>
					<th class="w70">순번</th>
					<th class="text-left">제목</th>
					<th class="w70">날짜</th>
					<th class="w70">답변여부</th>
				</tr>

				<c:forEach var="n" items="${list}">
					<tr>
						<td>${n.number}</td>
						<c:if test="${n.chk eq 'Y'}">
							<td class="text-left text-indent"><a
								href="letter-detail?number=${n.number}">${n.title}</a></td>
						</c:if>
						<c:if test="${n.chk eq 'N'}">
							<td class="text-left text-indent">${n.title}</td>
						</c:if>
						<td>${n.date}</td>
						<td>${n.chk}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="btn-pad pad">
				<input type="submit" class="btn" value="1:1 문의하기" />
			</div>
		</form>
	</div>
	<jsp:include page="../../inc/footer.jsp" /> </main>
</body>