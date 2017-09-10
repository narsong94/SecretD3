<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, innitial-scale=1.0, maximum-scale=1.0,user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="../../css/reset.css" type="text/css" rel="stylesheet" />
<link href="../../css/style.css" type="text/css" rel="stylesheet" />
<link href="../../css/id/find.css" type="text/css" rel="stylesheet" />
<title>guest_id-find</title>
</head>
<body>

	<!-- header 부분 -->
	<jsp:include page="../inc/header.jsp" />
	<div class="space"></div>
	
	<!-- main 부분 -->
	<main class="body">
		<div id="id-find-pw-find">
			<a href="../id/find">아이디 찾기</a> <a href="">비밀번호 찾기</a>
		</div>
	<div class="content-container">
		<div id="id-find-form">
			<h2>비밀번호 찾기</h2>
			<h3>비밀번호 찾는 방법을 선택해 주세요.</h3>
			<div class="find-form">
				<input type="radio" name="idfind" class="whatfind" />회원정보에 등록한
				휴대전화로 인증

				<form action="list.jsp" method="post" class="id-find-form clearfix">
					<div class="phone-text">
						<div class="id-find-phone-label">
							<label>이름</label><br> <label>핸드폰 번호</label>
						</div>
						<div class="id-find-phone-input">
							<input type="text" name="name" /> <input type="text"
								name="phone" />
						</div>
					</div>
				</form>
				<input type="radio" name="idfind" class="whatfind" />회원정보에 등록한
				이메일으로 인증

				<form action="list.jsp" method="post" class="id-find-form clearfix">
					<div class="email-text">
						<div class="id-find-email-label">
							<label>이름</label><br> <label>이메일 주소</label>
						</div>
						<div class="id-find-email-input">
							<input type="text" name="name" /> <input type="text"
								name="email" />
						</div>
					</div>
				</form>
				</div>
				<div class="find-next">
				<a href="info"><input type="button" class="btn btn-default btn-pad" value="다음" /></a>
				</div>
		</div>
	</div>
	</main>
	<!-- footer 부분 -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>