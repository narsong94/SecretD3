<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>1:1 상담</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/style.css">
<link rel="stylesheet" type="text/css"
	href="../../css/cscenter/letter.css">
</head>
<jsp:include page="../inc/header.jsp" />
<div class="space"></div>
<main id="body" class="clearfix">
<div class="content-container">
	<div class="title">
		<p>CS CENTER</p>
	</div>
	<h2 class="hidden">메인 화면</h2>

	<jsp:include page="../inc/aside.jsp" />

	<div class="main">
		<h3>1: 1 문의</h3>
		<form method="post">
			<table class="table">
				<tr>
					<th scope="row">제목</th>
					<td><input class="w321 h45 none-border" type="text"
						name="title" /></td>
					<th scope="row">작성자</th>
					<td><input class="w321 h45 none-border" type="text" value=""
						name="writerId" /></td>
				</tr>
				<tr>
					<th scope="row">첨부파일</th>
					<td class="w850 h45" colspan="3">파일</td>
				</tr>
				<tr>
					<th scope="row">내용</th>
					<td colspan="3"><textarea class="w850 h104 none-border"
							rows="5" cols="100" name="content"></textarea></td>
				</tr>
			</table>
			<div class="btn-padding"">
				<input type="submit" value="등록" class="btn btn-default"/>
			</div>
		</form>
	</div>


</div>
</main>

<jsp:include page="../../inc/footer.jsp" />

</body>
</html>