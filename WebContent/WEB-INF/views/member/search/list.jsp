<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Disease search list</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/main/disease.css">
<link rel="stylesheet" type="text/css" href="../../css/headfoot.css">
</head>
<body>

	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-search.png" />
	</div>
	<div class="sr-container">
		<div>
			<div class="search-list">
				<h1 class="hidden">선택</h1>
				<c:set var="num1" value="감염성 및 기생충 질환"/>
				<c:set var="num2" value="항문,장 질환"/>
				<c:set var="num3" value="비뇨기 질환"/>
				<c:set var="num4" value="기타 질환"/>
				<c:set var="cate" value="${param.c}"/>
				<c:set var="t" value="${param.t}"/>
				<ul>
					<li><a href="list">전체</a></li>
					<li><a href="list?c=${num1}">감염성 및 기생충 질환</a></li>
					<li><a href="list?c=${num2}">항문, 장 질환</a></li>
					<li><a href="list?c=${num3}">비뇨기 질환</a></li>
					<li><a href="list?c=${num4}">기타 질환</a></li>
				</ul>
			</div>
			<c:set var="d1" value="감염성 및 기생충 질환"></c:set>
			<div class="search-form2">
				<h1 class="hidden">강좌검색 폼</h1>
				<form>
					<select name="c" class="ctg">
						<option value="">전체</option>
						<option value="${num1}">감염성 및 기생충 질환</option>
						<option value="${num2}">항문, 장 질환</option>
						<option value="${num3}">비뇨기질환</option>
						<option value="${num4}">기타 질환</option>
					</select> <input type="text" id="ttt" class="input-text" /> <input
						class="btn btn-default" type="submit" name="searchBtn" value="검색" />
				</form>
			</div>
		</div>

		<c:forEach var="d" items="${list}">
			<div class="box">
				<div class="img"></div>
				<div class="info">
					<div class="pad-t">분류 번호 : ${d.classCode}-${d.number} &nbsp; &nbsp; &nbsp; &nbsp; 질병명 : ${d.name}</div>
					<div>설명 : ${d.explanation}</div>
				</div>
			</div>
		</c:forEach>

		<c:set var="page" value="${param.p}" />
		<c:set var="startNum" value="${page-((page-1)%5) }" />
		<c:set var="lastNum"
			value="${fn:substringBefore((count%10 == 0 ? count/10 : count/10 +1),'.')}" />

		<div class="num">
			<div><c:if test="${startNum != 1}">
				<a href="?p=${startNum != 1}">이전</a>
				</c:if>
			</div>
			<ul>
				<c:forEach var="i" begin="0" end="4">

					<c:set var="strong" value="" />
					<c:if test="${page == startNum+i }">
						<c:set var="strong" value="text-strong" />
					</c:if>

					<c:if test="${startNum+i <= lastNum}">
						<li><a class="${strong}" href="?p=${startNum+i}">${startNum+i}</a></li>
					</c:if>


					<!-- 	목록이 더이상 없으면 하이퍼링크 지움 -->
					<c:if test="${startNum+i > lastNum}">
						<li>${startNum+i}</li>
					</c:if>
				</c:forEach>
			</ul>
			<div>
				<c:if test="${lastNum >= startNum+5 }">
					<a href="?p=${startNum+5}">다음</a>
				</c:if>
			</div>
		</div>
	</div>
	</main>

	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>