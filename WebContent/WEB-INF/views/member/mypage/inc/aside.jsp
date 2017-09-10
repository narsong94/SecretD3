<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<div id="mypage-aside" class="as-list aside">
		<ul>
			<li class="aside-title"><a id="top" href="">개인정보 관리</a></li>
			<li><a id="sub" href="${path}/member/mypage/info">개인정보 관리</a></li>
			<li><a id="sub" href="${path}/index">비밀번호 변경</a></li>
			<li class="aside-title"><a id="top" href="">게시물 관리</a></li>
			<li><a id="sub" href="${path}/index">익명상담 게시글</a></li>
			<li><a id="sub" href="${path}/index">익명상담 댓글</a></li>
			<li class="aside-title"><a id="top" href="">1:1문의 관리</a></li>
			<li><a id="sub" href="${path}/member/mypage/counseling">1:1문의 현황</a></li>
		</ul>
	</div>