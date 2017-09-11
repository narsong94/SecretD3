<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/headfoot.css">
<link rel="stylesheet" type="text/css"
	href="../../css/cscenter/notice.css">
</head>

<jsp:include page="../inc/header.jsp" />

<div class="space"></div>

<main class="main">
<div class="title">
	<img src="../../images/bg-search.png" />
</div>
<div class="sr-container">
	<table class="dt-table">
		<tr>
			<th>제목</th>
			<td class="text-left" colspan="3">${detail.title }</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td colspan="3">${detail.regDate}</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${detail.writerId }</td>
			<th>조회수</th>
			<td>${detail.hit}</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td colspan="3"></td>
		</tr>
		<tr>
			<td colspan="4">${detail.content }</td>
	</table>
	<div class="btn-pad3">
		<a href="list" class="btn btn-default">목록</a>
	</div>
</div>

</main>

<jsp:include page="../../inc/footer.jsp" />

</body>
</html>