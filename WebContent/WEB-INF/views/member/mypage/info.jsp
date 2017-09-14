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
<link href="../../css/headfoot.css" type="text/css" rel="stylesheet" />
<link href="../../css/main/mypage.css" type="text/css" rel="stylesheet" />

</head>
<body>

	<!-- 헤더부분 -->
	<jsp:include page="../../inc/header.jsp" />



	<main class="main">
	<div class="title">
		<img src="../../images/bg-cscenter.jpg" />
	</div>
	
	<jsp:include page="inc/aside.jsp" />
	
	<div class="mp-container">
		<h2>개인 정보 관리</h2>
		<form id="InfoForm" method="post">
			<table class="table">
				<tr>
					<th class="w80">아이디</th>
					<td>${m.id}</td>
				</tr>

				<tr>
					<th class="w80">비밀번호</th>
					<td>*******</td>
				</tr>

				<tr>
					<th class="w80">이름</th>
					<td>${m.name}</td>
				</tr>

				<tr>
					<th class="w80">이메일</th>
					<td><input name="email" value="${m.email}"></td>
				</tr>

				<tr>
					<th class="w80">닉네임</th>
					<td><input name="nickname" value="${m.nickname}"></td>
				</tr>


			</table>
			<div class="btn-pad">
				<input type="submit" class="btn" value="변경" />
			</div>
		</form>

	</div>
	<jsp:include page="../../inc/footer.jsp" /> </main>
</body>
</html>