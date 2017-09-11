<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<header class="header">
	<div class="head-container">
		<div class="div-content">
			<h1 class="hidden">메인헤더</h1>
			<h1>
				<img id="logo" src="${page}/images/logo.png" alt="SecretD" />
			</h1>
		</div>
		<div class="div-content">
			<ul class="menu">
				<li><a href="index">Home</a></li>
				<li>
					<a href="${page}/guest/join">Menu</a>
					<ul>
						<li><a href="${page}/guest/search/list">Disease</a></li>
						<li><a href="${page}/guest/survey/index">Search</a></li>
						<li><a href="${page}/guest/counseling/list">Counseling</a></li>
					</ul>
				</li>
				<li><a href="${page}/guest/login">Login</a></li>
				<li><a href="${page}/guest/join">Join</a></li>
				<li>
					<a href="${page}/guest/join">CS</a>
					<ul>
						<li><a href="${page}/guest/notice/list">공지사항</a></li>
						<li><a href="${page}/guest/faq/list">FAQ</a></li>
						<li><a href="${page}/guest/letter/list">1:1 문의</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	</header>