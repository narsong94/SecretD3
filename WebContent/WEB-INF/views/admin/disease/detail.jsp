<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		<form method="post"  class="insert-form">
			<table class="table">
				<tr>
					<th> 질병 분류 코드</th>
					<td>${detail.classCode}${detail.number}</td>
				</tr>
				<tr>
					<th> 질병 분류 번호</th>
					<td>${detail.number}</td>
				</tr>
				<tr>
					<th> 질병명</th>
					<td>${detail.name}</td>
				</tr>
				<tr>
					<th> 사진</th>
					<td></td>
				</tr>
				<tr>
					<th> 내용</th>
					<td>${detail.explanation}</td>
				</tr>
			</table>
			<div class="btn-pad3">
				<a href="list" class="btn">목록</a>
				<a href="edit?name=${detail.name}" class="btn">수정</a>
				<a href="delete?name=${detail.name}" class="btn">삭제</a>
			</div>
		</form>
	</div>
	</main>

</body>
</html>