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
		<h2>1:1 문의 작성</h2>
		<form id="LetterInputForm" method="post">

			<table class="table">
				<tr>
					<th class="w80">순번</th>
					<td>${num}</td>
				</tr>

				<tr>
					<th class="w80">아이디</th>
					<td>${id}</td>
				</tr>

				<tr>
					<th class="w80">제목</th>
					<td><input type="text" name="title" /></td>
				</tr>

				<tr>
					<th class="w80">질문</th>
					<td><textarea cols="50" rows="4" name="content"></textarea></td>
				</tr>


			</table>
			<div class="btn-pad pad2">
				<input type="hidden" name="id" value="${id}" /> <input
					type="hidden" name="num" value="${num}" /> <input class="btn"
					type="submit" value="등록" />
			</div>
		</form>
	</div>
	<!-- footer부분 --> <jsp:include page="../../inc/footer.jsp" /> </main>