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
		<form method="post">
			<table class="table">
				<tr>
					<th> 질병 분류 코드</th>
					<td><input class="none" type="text" name="code"/></td>
				</tr>
				<tr>
					<th> 질병 분류 번호</th>
					<td><input class="none" type="text" name="number"/></td>
				</tr>
				<tr>
					<th> 질병명</th>
					<td><input class="none" type="text" name="name"/></td>
				</tr>
				<tr>
					<th> 사진</th>
					<td><input class="none" type="text" name=""/></td>
				</tr>
				<tr>
					<th> 내용</th>
					<td><textarea class="none" type="text" name="explanation"></textarea></td>
				</tr>
			</table>
			<div class="btn-pad">
				<input type="submit" value="등록" class="btn"/>
			</div>
		</form>
	</div>
	</main>

</body>
</html>