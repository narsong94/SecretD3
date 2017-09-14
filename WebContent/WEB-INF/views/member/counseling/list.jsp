<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css"
	href="../../css/main/counseling.css">
<link rel="stylesheet" type="text/css" href="../../css/headfoot.css">

</head>
<body>

	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-counseling.png" />
	</div>
	<div class="sr-container">
		<div class="sub-title">
			<p>Hot 게시글</p>
		</div>
		<div class="table">
			<table class="table line-red">
				<tr>
					<th class="w80">순번</th>
					<th class="w100">제목</th>
					<th class="w80">조회수</th>
				</tr>

				<c:forEach var="n" items="${list}">
					<tr>
						<td>${n.number}</td>
						<td class=""><a
							href="detail?number=${n.number}">${n.title}[${n.count}]</td>
						<td>${n.hit}</td>

					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="pad">
			<div class="search-list">
				<h1 class="hidden">선택</h1>
				<ul>
					<li><a href="list">전체</a></li>
					<li><a href="list?category=산부인과">산부인과</a></li>
					<li><a href="list?category=비뇨기과">비뇨기과</a></li>
					<li><a href="list?category=항외과">항외과</a></li>
					<li><a href="list?category=기타">기타</a></li>
				</ul>
			</div>
		</div>

		<div>
			<section class="search-form">
			<h1 class="hidden">검색</h1>
			<form method="get">
				<!-- <label>과정검색</label> -->
				<select name="category2" class="ctg">
					<option value="전체">전체</option>
					<option value="산부인과">산부인과</option>
					<option value="비뇨기과">비뇨기과</option>
					<option value="항외과">항외과</option>
				</select>

				<h1 class="hidden">분야검색폼</h1>
				<!-- <label>분야검색</label> -->
				<input type="text" name="content" class="input-text"/> <input class="btn btn-default"
					type="submit" name="sub" value="검색" />
			</form>
			<div class="write">
			 <a href="reg">글쓰기</a> 
			</div>
			</section>
		</div>

		<!-- <h2 class = "main title">전체 목록</h2> -->
		<div class="table">
			<table class="table line-navy">
				<tr>
					<th class="w80">순번</th>
					<th class="w100">제목</th>
					<th class="w80">조회수</th>
				</tr>

				<c:if test="${a == 1}">
					<c:forEach var="n" items="${list3}">
						<tr>
							<td>${n.number}</td>
							<td class=""><a
								href="detail?number=${n.number}">${n.title}[${n.count}]</td>
							<td>${n.hit}</td>

						</tr>
					</c:forEach>
				</c:if>

				<c:if test="${a == 0}">
					<c:forEach var="n" items="${list2}">
						<tr>
							<td>${n.number}</td>
							<td class=""><a
								href="detail?number=${n.number}">${n.title}[${n.count}]</td>
							<td>${n.hit}</td>

						</tr>
					</c:forEach>

				</c:if>
			</table>
			<c:set var="page" value="${param.p}" />
			<c:set var="startNum" value="${page-((page-1)%5) }" />
			<c:set var="lastNum"
				value="${fn:substringBefore((count%10 == 0 ? count/10 : count/10 +1),'.')}" />

			<div class="num">
				<div>
					<a href="?p=1">이전</a>
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
		</div>
	</main>

	<jsp:include page="../../inc/footer.jsp" />

</body>
</html>