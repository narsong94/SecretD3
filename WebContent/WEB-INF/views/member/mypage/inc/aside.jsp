<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<div class="mp-aside">
		<ul>
			<li><a href="${path}/member/mypage/info">개인정보 관리</a></li>
			<li><a href="${path}/member/mypage/repwd">비밀번호 변경</a></li>
			<li><a href="${path}/member/mypage/counseling">익명상담 게시글</a></li>
			<li><a href="${path}/member/mypage/comment">익명상담 댓글</a></li>
			<li><a href="${path}/member/mypage/letter-list">1:1문의 현황</a></li>
		</ul>
	</div>