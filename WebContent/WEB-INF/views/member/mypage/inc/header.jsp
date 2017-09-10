<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<header class="header">
	<div class="content-container">
		<h1>
			<a href="${path}/index"><img id="logo" src="${path}/images/logo.png"
				alt="SecretD logo" /></a>
		</h1>
		<div id="notice-header">
			<h2 class="hidden">머릿말</h2>
			<div id="head-menu" class="hr-list head-menu">
				<!-- <h3 class="hidden">사용자메뉴</h3> -->
				<ul>
					<li><a id="home" href="${path}/index">Home</a></li>
					<li><a href="${path}/logout">Logout</a></li>
					<li><a href="${path}/myPage">My Page</a></li>
				</ul>
			</div>

			<div id="head-main-menu" class="hr-list head-main-menu">
				<!-- <h3 class="hidden">메인선택메뉴</h3> -->
				<ul>
					<li><a id="select-survey" href="${path}/member-survey-index">자가진단</a></li>
					<li><a id="select-disease" href="${path}/member-search-list">질병검색</a></li>
					<li><a id="select-counseling" href="${path}/member-counseling-list">고민상담</a></li>
					<li><a id="select-notice" href="${path}/member-faq-list">공지사항</a></li>
				</ul>
			</div>
		</div>
	</div>
</header>