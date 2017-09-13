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

	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-counseling.png" />
	</div>
	<div class="dt-container">
		<table class="dt-table">

			<tr>
				<th>분류</th>
				<td colspan="3">${detail.category}</td>
				<th>날짜</th>
				<td colspan="3">${detail.date}</td>
			</tr>

			<tr>
				<th>제목</th>
				<td colspan="3">${detail.title}</td>

				<th>작성자</th>
				<td>${detail.writer_id}</td>
			</tr>

			<tr>
				<th>첨부파일</th>
				<td colspan="7"></td>
			</tr>

			<tr>
				<td colspan="8" class="content">${detail.content}</td>
			</tr>

		</table>
		<div class="comment">
			<div class="cm-sub1">
				<table class="cm-table">
					<c:forEach var="co" items="${list}">
						<form id="CommentForm">
							<tr>
								<td class="nick">${co.nickname}</td>
								<td class="cont">${co.content}</td>
							</tr>
						</form>
					</c:forEach>
				</table>
			</div>

			<div class="cm-sub2">
				<table class="reg-table">
					<h2 class="hidden">COMMENTS</h2>
					<form method="post">
						<tr>
							<td class="nick">${m}</td>
							<td>
								<div>
									<textarea name="content" rows="4" cols="100"></textarea>
								</div>
							</td>
							<td style="float: right;">
								<div>
									<input type="hidden" name="number" value="${detail.number}" />
									<input type="hidden" name="nickname" value="${m}" /> <input
										type="submit" class="save-btn com" value="저장">
								</div>
							</td>
						</tr>
					</form>
				</table>
			</div>
		</div>
	</div>
	</main>
	<jsp:include page="../../inc/footer.jsp" />

</body>
</html>