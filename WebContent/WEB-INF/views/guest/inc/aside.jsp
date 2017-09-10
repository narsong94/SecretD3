<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<div id="notice-aside" class="as-list aside">
		<ul>
			<li><a id="aside-FAQ" href="${path}/guest/faq/list">FAQ</a></li>
			<li><a id="aside-notice" href="${path}/guest/notice/list">공지사항</a></li>
			<li><a id="aside-1on1" href="${path}/guest/letter/insert">1:1문의</a></li>
		</ul>
	</div>