<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/id/join.css">
</head>
<body>

<%-- 	<jsp:include page="inc/header.jsp" /> --%>

	<div class="space"></div>

	<main id="body" class="clearfix">
	<div class="content-container">
		<h1 class="join-logo">회원가입</h1>
		<div class="join-form">
			<form method="post">
				<p>아이디</p>
				<input type="text" />

				<p>비밀번호</p>
				<input type="password" />

				<p>비밀번호 재입력</p>
				<input type="password" />

				<p>이름</p>
				<input type="text" />

				<p>이메일(선택)</p>
				<input type="text" />

				<p>닉네임</p>
				<input type="text" /><br />
				<!-- <div class="btn-move">
					<input type="submit" class="btn btn-default btn-pad" value="가입하기" />
				</div> -->
			</form>
		</div>
		<div class="join-right">
			<a><img class="icon" src="../images/joinLogo.png" /></a><br />
			<div class="btn-move">
			<input type="submit" class="btn btn-default btn-pad" />
			</div>
		</div>
	</div>
	</main>

	<%-- <jsp:include page="../inc/footer.jsp" /> --%>
</body>
</html>