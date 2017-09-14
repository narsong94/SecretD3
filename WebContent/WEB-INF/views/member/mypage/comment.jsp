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
	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="title">
		<img src="../../images/bg-cscenter.jpg" />
	</div>

	<jsp:include page="inc/aside.jsp" />

	<div class="mp-container">
		<h2>익명상담 댓글</h2>

		<form id="CommentForm" method="post">
			<table class="list-table">
				<tr>
					<th class="w70">순번</th>
					<th class="w70"><input type="checkbox" id="allcheck"
						onclick="allChk(this);" /></th>

					<th class="text-left">댓글</th>

					<th class="w100">날짜</th>
				</tr>

				<c:forEach var="n" items="${list}">
					<tr>
						<td>${n.number}</td>
						<td><input type="checkbox" name="deleteCheck"
							value="${n.number}"></td>
						<td class="text-left text-indent">${n.content}<a
							href="../member/counseling/detail?number=${n.textnumber}">원문보기
								▶</a></td>
						<td>${n.date}</td>

					</tr>
				</c:forEach>


			</table>
			<div class="btn-pad pad">
				<input class="btn" name="button" type="submit" value="삭제" />
			</div>


		</form>
	</div>
	<jsp:include page="../../inc/footer.jsp" /> </main>
	<!-- footer부분 -->
</body>

<script type="text/javascript">
	function allChk(obj) {
		var chkObj = document.getElementsByName("deleteCheck");
		var rowCnt = chkObj.length - 1;
		var check = obj.checked;
		if (check) {
			for (var i = 0; i <= rowCnt; i++) {
				if (chkObj[i].type == "checkbox")
					chkObj[i].checked = true;
			}
		} else {
			for (var i = 0; i <= rowCnt; i++) {
				if (chkObj[i].type == "checkbox") {
					chkObj[i].checked = false;
				}
			}
		}
	}
</script>



</html>