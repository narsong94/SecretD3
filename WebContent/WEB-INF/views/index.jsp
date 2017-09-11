<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/main/index.css">
<title>Index</title>
</head>
<body>
	<header class="header">
	<div class="head-container">
		<div class="div-content">
			<h1 class="hidden">메인헤더</h1>
			<h1 class="head-pad">
				<img id="logo" src="images/logo.png" alt="SecretD" />
			</h1>
		</div>
		<div class="div-content">
			<ul class="menu">
				<li><a href="index">Home</a></li>
				<li><a href="guest/login">Login</a></li>
				<li><a href="guest/join">Join</a></li>
				<li>
					<a href="guest/join">CS</a>
					<ul>
						<li><a href="pageB1.html">공지사항</a></li>
						<li><a href="pageB2.html">FAQ</a></li>
						<li><a href="pageB3.html">1:1 문의</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	</header>

	<main class="main">
	<div class="main-container">
		<h1 class="hidden">메인</h1>
		<div class="pad-r">
			<div class="first">
				<img src="images/first.png" />
				<div class="text">
					<h2>Search</h2>
					<div class="pad-t">
						<a href="guest/search/list">view</a>
					</div>
				</div>
			</div>
		</div>
		<div class="pad-r">
			<div class="second">
				<img src="images/second.png" />
				<div class="text">
					<h2>Survey</h2>
					<div class="pad-t">
						<a href="guest/survey/index">view</a>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div class="third">
				<img src="images/third.png" />
				<div class="text">
					<h2>Counseling</h2>
					<div class="pad-t">
						<a href="guest/counseling/list">view</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>

	<footer class="footer">
	<h2 class="hidden">회사정보</h2>
	<p>Le criblé merde addr : 서울시 용산구 강지원네집 tel : 010-1234-5678</p>
	</footer>
</body>
</html>