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

<script type="text/javascript">
	//회원가입 화면의입력값을 검사
	function checkValue() {
		//var form = document.userInfo;
		if (document.getElementById("idDuplication").value != "idCheck") {
			alert("아이디 중복체크를 해주세요.");
			history.go(-1);
		}
	}
	// 아이디 중복체크 화면open
	function openIdChk() {
		 var id = document.getElementById("userId").value;
		window.open("check-id?id="+id);
		document.getElementById("idDuplication").value = "idCheck";
	}
	// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
	// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
	// 다시 중복체크를 하도록 한다.
	function inputIdChk() {
		document.getElementById("idDuplication").value = "idUncheck";
	}
</script>
</head>
<body>

	<jsp:include page="../inc/header.jsp" />

	<main class="main">
	<div class="sv-container clearfix">
		<h2 class="hidden">메인</h2>
		<div class="epl">
			<h1 class="join-logo">회원가입</h1>
			<form action="join" name="userInfor" method="post">
				<div class="join-form">
					<p>아이디</p>
					<input id="userId" name="id" type="text" onkeydown="inputIdChk()" />
					<input type="button" value="중복확인" onclick="openIdChk()"> <input
						type="hidden" id="idDuplication" value="idUncheck">
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
						<input type="submit" name="btn" class="btn" value="회원 가입" onclick="checkValue()"/>
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