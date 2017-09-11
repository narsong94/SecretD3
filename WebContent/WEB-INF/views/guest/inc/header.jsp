<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<header class="header">
	<div class="head-container">
		<div class="div-content">
			<h1 class="hidden">메인헤더</h1>
			<h1>
				<a href="${path}/index"><img id="logo" src="${path}/images/logo.png"/></a>
			</h1>
		</div>
		<div class="div-content">
			<ul class="menu">
				<li><a href="index">Home</a></li>
				<li>
					<a href="${path}/guest/join">Menu</a>
					<ul>
						<li><a href="${path}/guest/search/list">Disease</a></li>
						<li><a href="${path}/guest/survey/index">Search</a></li>
						<li><a href="${path}/guest/counseling/list">Counseling</a></li>
					</ul>
				</li>
				<li><a href="${path}/guest/login">Login</a></li>
				<li><a href="${path}/guest/join">Join</a></li>
				<li>
					<a href="${path}/guest/join">CS</a>
					<ul>
						<li><a href="${path}/guest/notice/list">공지사항</a></li>
						<li><a href="${path}/guest/faq/list">FAQ</a></li>
						<li><a href="${path}/guest/letter/list">1:1 문의</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	</header>