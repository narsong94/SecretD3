<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/style.css">
</head>
<body>


<jsp:include page="../inc/header.jsp"/>

<main id="body" class="clearfix">
<div class="content-container">
	<div id="notice-title" class="title">
		<p>My Page</p>
	</div>
	
	<jsp:include page="inc/aside.jsp"/>
	
	<h2 class="hidden">메인 화면</h2>	
	<div id="notice-main" class="main">
		개인정보
	</div>


</div>
</main>

<jsp:include page="../../inc/footer.jsp"/>
</body>
</html>