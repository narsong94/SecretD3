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
<link href="../../css/main/hospital.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header 부분 -->
	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-search.png" />
	</div>
	<div class="sr-container">
		<h2 class="hidden">공지사항</h2>

		<div class="search-form2">
			<a class="btn" href="../../admin/hospital/reg">병원추가</a>
			<h3 class="hidden">병원 검색 폼</h3>
			<form method="get">
				<input type="text" class="input-text"  name="name" placeholder="병원명을 입력하세요" /> <input
					type="submit" class="btn" />
			</form>
		</div>
		<form method="post">
			<table class="list-table">
				<tr>
					<th>진료과목</th>
					<th>병원명</th>
					<th>주소</th>
					<th>전화번호</th>
					<th><input type="submit" class="btn" name=del value="삭제"></th>

				</tr>
				<c:forEach var="h" items="${list}">
					<tr>
						<td>${ h.subject }</td>
						<td class="text-left"><a href="edit?h_id=${h.id}">${h.name}</a></td>
						<td>${h.address}</td>
						<td>${ h.phone_number }</td>
						<td><input type="checkbox" name="check" value=${h.id}>
					</tr>
				</c:forEach>
			</table>
		</form>
		<div class="num">
			<c:set var="page" value="${param.p}" />
			<c:set var="startNum" value="${page-(page-1)%5}" />
			<c:set var="lastNum"
				value="${fn:substringBefore((count/10)==0? count/10: count/10+1,'.')}" />
			<div>
				<a href="?p=1">이전</a>
			</div>
			<ul>
				<c:forEach var="i" begin="0" end="4">
					<c:set var="strong" />
					<c:if test="${page==(startNum+i)}">
						<c:set var="strong" value="text-strong" />
					</c:if>
					<c:if test="${startNum+i<=lastNum}">
						<li><a class="${strong}" href="?p=${startNum+i}">${startNum+i}</a></li>
					</c:if>
					<c:if test="${startNum+i>lastNum}">
						<li>${startNum+i}</li>
					</c:if>
				</c:forEach>
			</ul>
			<div>
				<c:if test="${lastNum>= startNum+5}">
					<a href="?p=${startNum+5}">다음</a>
				</c:if>
			</div>
		</div>
	</main>
	<!-- footer부분 -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>