<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../css/reset.css" type="text/css" rel="stylesheet" />
<link href="../../css/headfoot.css" type="text/css" rel="stylesheet" />
<link href="../../css/cscenter/notice.css" type="text/css"
	rel="stylesheet" />
</head>
<body>
	<!-- header 부분 -->
	<jsp:include page="../../inc/header.jsp" />

	<div class="space"></div>

	<main class="main">
	<div class="title">
		<img src="../../images/bg-cscenter.jpg" />
	</div>
	<div class="nt-container">
		<form method="post">
			<table class="dt-table">

				<tr>
					<th>제목</th>
					<td class="text-left"><input
						class="w321 h45 none-border" name="title" value="${detail.title}"></td>
				</tr>
				<tr>
					<td><textarea class="w850 h104 none-border"
							name="content">${detail.content }</textarea></td>
			</table>


			<div class="btn-pad">
				<input type="hidden" name="id" value=${ detail.number }>
				<!-- 어떠한 값을 업데이트 할지 -->
				<input type="submit" id="btn" class="btn btn-default" value="저장" />
				<!-- input에 있는 값, key가 있는 값만 전달 -->
				<a href="detail?id=${detail.number }" class="btn btn-default">취소</a>

			</div>
		</form>
	</div>
	</main>

	<!-- footer부분 --> <jsp:include page="../../inc/footer.jsp" />
</body>
</html>