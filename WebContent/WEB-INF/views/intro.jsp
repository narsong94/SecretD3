<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/main/intro.css">
<script src="js/jquery-1.11.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="body">
		<div class="intro-wrap">
			<div class="bgwrap">
				<div style="display: block;">
					<img alt="image_1" src="images/bg_intro_1.jpg" />
				</div>
				<div style="display: none;">
					<img alt="image_2" src="images/bg_intro_2.jpg" />
				</div>
				<div style="display: none;">
					<img alt="image_3" src="images/bg_intro_3.jpg" />
				</div>
			</div>
		</div>
		<div class="box">
		<div class="text">
			<p>스스로의 건강을 확인하고<p> 궁금했던 질병에 대해 알아가며<p> 고민을 다른사람과 나누는 공간<p> Secret D에 당신을 환영합니다.</p>
		</div>
			<div class="btn-enter">
				<a href="login">ENTER</a>
			</div>

		</div>
		<script type="text/javascript">
			var $imgList = $('.bgwrap>div'); // bgwrap div 안에 있는 div 자식들을 가져옴
			var nImgCount = $imgList.children().length; // 위에서 가져온 div 자식들의 개수
			var nDuration = 4500; // 이미지를 변경할 시간 (3000 = 3초)
			var bAuto = true; // 자동으로 변경할 지 여부
			var nIndex = 0; // 변경할 이미지의 Index

			if (bAuto == true) {
				setInterval(autoSlide, nDuration); // Javascript setInterval 함수 호출
			}

			function autoSlide() {
				/* 3초마다 이 함수에 들어오게 됨 */
				// % 연산은 나누기를 한 후 나머지 값을 가져오는 연산입니다.
				// nImgCount = 4
				/*
					nIndex = 0
					++nIndex = 1
					(++nIndex % nImageCount) = (1 % 4 = 1)
					$($imgList.get(0)).fadeOut(1000);	// 0 Index에 있는 이미지를 fadeOut
					$($imgList.get(1)).fadeIn(1000);	// 1  Index에 있는 이미지를 fadeIn
				 */
				/*
					nIndex = 1
					++nIndex = 2
					(++nIndex % nImageCount) = (2 % 4 = 2)
					$($imgList.get(1)).fadeOut(1000);	// 1 Index에 있는 이미지를 fadeOut
					$($imgList.get(2)).fadeIn(1000);	// 2 Index에 있는 이미지를 fadeIn
				 */
				var next = (++nIndex % nImgCount);
				$($imgList.get(next - 1)).fadeOut(1000);
				$($imgList.get(next)).fadeIn(1000);
			}
		</script>
</body>
</html>