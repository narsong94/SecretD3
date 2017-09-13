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
<jsp:include page="../../inc/header.jsp" />
<div class="space"></div>
<main class="main">
<div class="title">
	<img src="../../images/bg-cscenter.jpg" />
</div>
<div class="nt-container">
		<table class="dt-table">
			<tr>
				<th>제목</th>
				<td class="text-left">${detail.title }</td>
			</tr>
			<tr>
				<td colspan="2">${detail.content }</td>
		</table>
		<div class="btn-pad2">
			<a href="list" class="btn btn-default">목록</a> <a
				href="edit?id=${detail.number }" class="btn btn-default">수정</a> <a
				href="delete?id=${detail.number }" class="btn btn-default">삭제</a>
		</div>
	</div>
</main>
<jsp:include page="../../inc/footer.jsp" />
</body>
</html>