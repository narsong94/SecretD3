<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, innitial-scale=1.0, maximum-scale=1.0,user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="../css/reset.css" type="text/css" rel="stylesheet" />
<link href="../css/id/login.css" type="text/css" rel="stylesheet" />
<link href="../css/style.css" type="text/css" rel="stylesheet" />
<title>guest_login</title>
</head>
<body>

	<!-- header 부분 -->
	<jsp:include page="inc/header.jsp" />

	<div class="space"></div>

	<!-- main 부분 -->
	<main class="body">
	<div class="login-main">
		<h1 class="login-logo">LOGIN</h1>
		<div>
			<div class="login-form">
				<div class="login-form-inner">
					<form action="$" method="post">

						<div class="login-label">
							<label>ID</label><br> <label>PW</label>
						</div>
						<div>
							<input type="text" name="id" /> <input type="text" name="pw" />
						</div>
						<input type="submit" name="login" value="로그인" />
					</form>
				</div>
			</div>
			<div class="login-subbtn">
				<a class="btn btn-default" href="join">회원가입</a> <a
					class="btn btn-default" href="id/find">아이디/비밀번호 찾기</a>
			</div>
		</div>
	</div>
	</main>

	<!-- footer 부분 -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
