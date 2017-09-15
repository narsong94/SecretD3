<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
						<li><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/counseling/list">Counseling</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/member/counseling/list">Counseling</a>
							</c:if></li>
						<li class="none"><c:if test="${ empty sessionScope.id }">
								<a href="${path}/guest/hospital/list">Hospital</a>
							</c:if> <c:if test="${ not empty sessionScope.id }">
								<a href="${path}/admin/hospital/list">Hospital</a>
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
						<li><c:if test="${ empty sessionScope.id }">
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