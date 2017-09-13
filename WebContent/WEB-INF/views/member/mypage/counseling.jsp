<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/style.css">
<link rel="stylesheet" type="text/css" href="../../css/mypage/counseling.css">
</head>
<body>
	<jsp:include page="../../inc/header.jsp" />

	<main id="body" class="clearfix">
	<div class="content-container">
		<div id="notice-title" class="title">
			<p>My Page</p>
		</div>

		<div class="main">
			<h3>익명 상담</h3>

			<table class="table">
				<tr>
					<th>순번</th>
					<th>선택</th>
					<th>제목</th>
					<th>게시일</th>
				</tr>
				<tr>
					<td class="w50">23</td>
					<td class="w50"><input type="checkbox"></td>
					<td><a href="">항문에 뾰루지가 났어요</a></td>
					<td class="w100">2017.01.02</td>
				</tr>
			</table>
			<div class="btn-padding">
				<input type="checkbox" name="전체 선택" />전체선택 
				<input type="submit" value="삭제" class="btn btn-default" /> 
				<input type="submit" value="글쓰기" class="btn btn-default"/>
			</div>
		</div>
	</div>
	</main>

	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>