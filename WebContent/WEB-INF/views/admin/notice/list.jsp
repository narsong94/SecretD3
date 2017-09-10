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
<link rel="stylesheet" type="text/css" href="../../css/style.css">
<link rel="stylesheet" type="text/css"
	href="../../css/cscenter/notice.css">
</head>

<jsp:include page="../inc/header.jsp" />

<div class="space"></div>

<main id="body" class="clearfix">
<div class="content-container">
	<div id="notice-title" class="title">
		<p>CS CENTER</p>
	</div>
	<h2 class="hidden">메인 화면</h2>

	<jsp:include page="../inc/aside.jsp" />

	<div class="main pad-bt">
		<h2 >공지사항</h2>
		<div class="hidden">
			<h3>공지사항 검색 폼</h3>
			<form method="get" class="search">
				<input type="text" name="title" placeholder="검색어 입력" /> <input
					type="submit" value="검색" />
			</form>
		</div>
		<table class="table">
			<tr>
				<th class="w100">번호</th>
				<th>제목</th>
				<th class="w115">작성자</th>
				<th class="w130">작성일</th>
				<th class="w100">조회수</th>
			</tr>
			<c:forEach var="n" items="${list}">
				<tr>
					<td>${ n.id }</td>
					<td class="text-left"><a href="detail?id=${n.id}">${ n.title }</a></td>
					<td>${n.writerId}</td>
					<td>${ n.regDate }</td>
					<td>${ n.hit }</td>
				</tr>
			</c:forEach>
		</table>
		<div class="num">
			<c:set var="page" value="${param.p}" />
			<c:set var="startNum" value="${page-(page-1)%5}" />
			<c:set var="lastNum"
				value="${fn:substringBefore((count/10)==0? count/10: count/10+1,'.')}" />
			<div>
				<a href="?p=1">이전</a>
			</div>
			<div>
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
			</div>
			<div>
				<%-- <c:if test="${lastNum>= startNum+5}">
						<a href="?p=${startNum+5}">다음</a>
					</c:if> --%>
				<a href="?p=${startNum+5}">다음</a>
			</div>
		</div>
		<div class="pad">
			<a class="btn btn-default" href="reg">글쓰기</a>
		</div>
	</div>
</div>
</main>

<jsp:include page="../../inc/footer.jsp" />

</body>
</html>