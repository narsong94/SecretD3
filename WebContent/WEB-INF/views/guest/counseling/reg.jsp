<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<!-- 헤더부분 -->
	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-counseling.png" />
	</div>
	<div class="dt-container">
<!-- 		<div class="introduce">
			<a>본인의 고민을 자유롭게 작성해 주세요.</a>
		</div> -->
		<form method="post">
			<table class="rg-table">

				<tr>
					<th>분류</th>
					<td>
					<select name="Category" class="ctg">
					<option value="">전체</option>
					<option value="산부인과">산부인과</option>
					<option value="비뇨기과">비뇨기과</option>
					<option value="항외과">항외과</option>
				</select>
					</td>
				</tr>

				<tr>
					<th>제목</th>
					<td style="text-align: left;"><input class="input" name="title" /></td>
				</tr>


				<tr>
					<th>첨부파일</th>
					<td style="text-align: left;" colspan="3"><input class="input" name="file" /></td>
				</tr>

				<tr>
					<td colspan="10"><textarea class="input" name="content" rows="10" cols="125"></textarea></td>
				</tr>
			</table>
			<div>
				<input type="submit" class="btn btn-default" value="등록">
			</div>

		</form>
	</div>
	</main>

	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>