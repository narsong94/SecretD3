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
<link href="../../css/style.css" type="text/css"
	rel="stylesheet" />
	<link href="../../css/style-counseling.css" type="text/css"
	rel="stylesheet" />

</head>
<body>

	<!-- 헤더부분 -->
	<jsp:include page="../inc/header.jsp" />

	<div class="body clearfix">
		<div class="content-container">
			<h2 class="main title">고민상담</h2>
			
			<!-- 메인부분 -->
			<main id="main">
			<h2 class="main title">HOT 게시글</h2>

			<table class="table table-hot">
				<tr>
					<th class="w80">순번</th>
					<th class="w100">제목</th>
					<th class="w80">조회수</th>
				</tr>

				<c:forEach var="n" items="${list}">
					<tr>
						<td>${n.id}</td>
						<td class="title text-left text-indent"><a
							href="counseling-detail?id=${n.id}">${n.name}</td>
						<td>${n.pwd}</td>
					</tr>
				</c:forEach>
			</table>


			<div class="search-list">
				<h1 class="hidden">선택</h1>
				<ul>
					<li><a href="counseling-list">전체</a></li>
					<li><a href="counseling-list?gender=여성">산부인과</a></li>
					<li><a href="counseling-list?gender=남성">비뇨기과</a></li>
					<li><a href="">항외과</a></li>
					<li><a href="">기타</a></li>
				</ul>
			</div>



			<div class="se">
				<section id="search-form">
				<h1 class="hidden">검색</h1>
				<form>
					<!-- <label>과정검색</label> -->
					<select name="category">
						<option value="전체">전체</option>
						<option value="산부인과">산부인과</option>
						<option value="비뇨기과">비뇨기과</option>
						<option value="항외과">항외과</option>
					</select>

				</form>
				</section>
				<!--  </nav>   -->

				<section id="search-form2">
				<h1 class="hidden">분야검색폼</h1>
				<form>
					<!-- <label>분야검색</label> -->
					<input type="text" /> <input class="btn-img btn btn-search"
						type="submit" value="검색" />
				</form>
				</section>
			</div>

			<!-- <h2 class = "main title">전체 목록</h2> -->
			<table class="table table-list">
				<tr>
					<th class="w80">순번</th>
					<th class="w100">제목</th>
					<th class="w80">조회수</th>
				</tr>

				<c:forEach var="n" items="${list2}">
					<tr>
						<td>${n.id}</td>
						<td class="title text-left text-indent"><a
							href="counseling-detail?id=${n.id}">${n.name}</td>
						<td>${n.pwd}</td>

					</tr>
				</c:forEach>
			</table>




			<!--   <a class="btn btn-default" href="counseling-reg">글쓰기</a>  -->
		</div>

		<!-- footer부분 -->
		<jsp:include page="../../inc/footer.jsp" />

	</div>
	</main>



</body>
</html>