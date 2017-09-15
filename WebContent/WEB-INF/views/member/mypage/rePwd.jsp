<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-mypage2.png" />
	</div>

	<jsp:include page="inc/aside.jsp" />

	<div class="mp-container">
		<h2>비밀번호 변경</h2>
		<form method="post">
				<table class="table">
					<tbody>
						<tr>
							<th><label>현재 비밀번호</label></th>
							<td><input name="pwd" value="" /></td>
						</tr>
						<tr>
							<th><label>새 비밀번호</label></th>
							<td><input name="newPwd" /></td>
						</tr>
						<tr>
							<th><label>새 비밀번호확인</label></th>
							<td><input name="newPwd" /></td>
						</tr>

					</tbody>
				</table>
				<div class="btn-pad">				
				<input class="btn" type="submit" name="btn" value="확인" />
				</div>
		</form>
	</div>
	<jsp:include page="../../inc/footer.jsp" /> 
	</main>

</body>
</html>