<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/headfoot.css">
<link rel="stylesheet" type="text/css" href="../css/join.css">
</head>
<body>

	<jsp:include page="../inc/header.jsp" />

	<main class="main">
	<div class="sv-container clearfix">
		<h2 class="hidden">메인</h2>
		<div class="epl">
			<h1 class="join-logo">회원가입</h1>
			<form action="join" method="post">
				<div class="join-form">
					<p>아이디</p>
					<input name="id" type="text" />

					<p>비밀번호</p>
					<input name="pwds" type="password" />

					<p>비밀번호 재입력</p>
					<input name="pwds" type="password" />

					<p>이름</p>
					<input name="name" type="text" />

					<p>이메일</p>
					<input name="email" type="text" />

					<p>닉네임</p>
					<input name="nickname" type="text" /><br />
				</div>
				<div class="join-right">
					<div class="btn-move">
						<input type="submit" name="btn" class="btn" value="회원 가입" />
					</div>
				</div>
			</form>
		</div>
		<div class="img">
			<img class="bt-survey" src="../images/bg-join.png" />
		</div>
	</div>
	</main>

	<jsp:include page="../inc/footer.jsp" />
</body>
</html>