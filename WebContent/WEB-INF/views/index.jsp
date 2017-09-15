<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/main/index.css">
<title>Index</title>
</head>
<body>
	<header class="header">
	<div class="head-container">
		<div class="div-content">
			<h1 class="hidden">메인헤더</h1>
			<h1>
				<a href="${path}/index"><img id="logo"
					src="${path}/images/logo.png" /></a>
			</h1>
		</div>
		<div class="div-content">
			<ul class="menu">
				<li><a href="${path}/index">Home</a></li>
				<li><a>Menu</a>
					<ul class="submenu">
						<li><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/search/list">Disease</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/search/list">Disease</a>
							</c:if></li>
						<li><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/survey/index">Survey</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/survey/index">Survey</a>
							</c:if></li>
						<li class="none"><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/counseling/list">Counseling</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/counseling/list">Counseling</a>
							</c:if></li>
						<li class="none"><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/hospital/list">Hospital</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/hospital/list">Hospital</a>
							</c:if></li>
					</ul></li>
				<li><c:if test="${ empty sessionScope.id }">
						<a href="${path}/login">Login</a>
					</c:if> <c:if test="${ not empty sessionScope.id }">
						<a href="${path}/logout">Logout</a>
					</c:if></li>
				<li><c:if test="${ empty sessionScope.id }">
						<a href="${path}/guest/join">Join</a>
					</c:if> <c:if test="${ not empty sessionScope.id }">
						<a href="${path}/member/mypage/info">My Page</a>
					</c:if></li>
				<li><a>CS Center</a>
					<ul class="submenu">
						<li><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/notice/list">공지사항</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/notice/list">공지사항</a>
							</c:if></li>
						<li><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/faq/list">FAQ</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/faq/list">FAQ</a>
							</c:if></li>
						<li class="none"><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/letter/insert">1:1 문의</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/letter/insert">1:1 문의</a>
							</c:if></li>
						<li class="none"><c:if test="${ empty sessionScope.id }">
								<a href="${path}/admin/page">ADMIN</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/admin/page">ADMIN</a>
							</c:if></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</header>

	<main class="main">
	<div class="main-container">
		<h1 class="hidden">메인</h1>
		<div class="pad-r">
			<div class="first">
				<img src="images/first.png" />
				<div class="text">
					<h2>Search</h2>
					<div class="pad-t">
						<a href="guest/search/list">view</a>
					</div>
				</div>
			</div>
		</div>
		<div class="pad-r">
			<div class="second">
				<img src="images/second.png" />
				<div class="text">
					<h2>Survey</h2>
					<div class="pad-t">
						<a href="guest/survey/index">view</a>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div class="third">
				<img src="images/third.png" />
				<div class="text">
					<h2>Counseling</h2>
					<div class="pad-t">
						<a href="guest/counseling/list">view</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>

	<footer class="footer">
	<h2 class="hidden">회사정보</h2>
	<p>Le criblé merde addr : 서울시 용산구 강지원네집 tel : 010-1234-5678</p>
	</footer>
</body>
</html>