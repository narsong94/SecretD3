<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../css/reset.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../../css/main/survey.css">
<link rel="stylesheet" type="text/css" href="../../css/headfoot.css">
</head>
<body>

	<jsp:include page="../../inc/header.jsp" />

	<main class="main">
	<div class="sv-container clearfix">
		<h2 class="hidden">메인</h2>
		<div class="img">
			<img class="bt-survey" src="../../images/bg-sv.jpg" />
		</div>
		<div class="form">
			<form id="SurveyForm">

					<div class="question">
						<p class="w140" colspan="2">${s.queNum}</p>
						<p>${s.question}</p>
					</div>
				<table class="table">


					<c:if test="${empty list2}">

						<c:forEach var="n" items="${list}">
							<tr class="select">
								<td class="w70">${n.ansNum}</td>
								<td class="w70"><input type="checkbox" name="nextNum"
									value="${n.nextNum}"></td>
								<td class="text-left">${n.ans}</td>

							</tr>
						</c:forEach>

						<input type="hidden" name="nextNum" value="${n.nextNum}" />
						<input class="btn" name="button" type="submit" value="다음" />

					</c:if>

					<c:if test="${not empty list2}">
						<c:forEach var="m" items="${list2}">
							<tr class="select">
								<td class="w70">1</td>
								<td class="w70"><input type="checkbox" name="number" value="${m.num}"></td>
								<td class="text-left">${m.content}</td>
							</tr>
						</c:forEach>
						<c:set var="ansNum" value="${param.ansNum}" />
				 		<fmt:parseNumber var="i" type="number" value="${ansNum}" />
						<input type="hidden" name="ansNum" value="${i+1}" />
						<input type="hidden" name="nextNum" value="${s.queNum}" />

						<input class="btn" name="button" type="submit" value="다음" />

					</c:if>
				</table>

			</form>
		</div>
	</div>
	</main>

	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>