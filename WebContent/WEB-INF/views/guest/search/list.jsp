<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Disease search list</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/main/search.css"> 
<link rel="stylesheet" type="text/css" href="../../css/headfoot.css"> 
</head>
<body>

	<jsp:include page="../inc/header.jsp" />
	
	<main class="main">
		<div class="title">
			<img src="../../images/bg-search.png"/>
		</div>
	<div class="sr-container">
		<div>
			<div class="search-list">
				<h1 class="hidden">선택</h1>
				<ul>
					<li><a href="counseling-list">전체</a></li>
					<li><a href="counseling-list?gender=여성">산부인과</a></li>
					<li><a href="counseling-list?gender=남성">비뇨기과</a></li>
					<li><a href="">항외과</a></li>
					<li><a href="">기타</a></li>
				</ul>
			</div>
			<div class="search-form">
			<h1 class="hidden">강좌검색 폼</h1>
			<form>
				<select name="category" class="ctg">
					<option value="전체">전체</option>
					<option value="산부인과">산부인과</option>
					<option value="비뇨기과">비뇨기과</option>
					<option value="항외과">항외과</option>
				</select> <input type="text" class="input-text" /> <input class="btn btn-default"
					type="submit" value="검색" />
			</form>
			</div>
		</div>
	</div>
	</main>

	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>