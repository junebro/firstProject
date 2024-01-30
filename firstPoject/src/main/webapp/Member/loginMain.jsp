<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


<!-- 상단 -->
<!--  font-family: 'Kanit', sans-serif;  -->
<link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300&display=swap" rel="stylesheet">
	
<!--  헤더 / 탭 메뉴 / 배너,썸네일 등 소개 문구 / 상품소개 타이틀 문구 -->
<!-- font-family: 'Noto Sans KR', sans-serif; -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<!-- 상품 상세 페이지 -->
<!-- font-family: 'Noto Sans KR', sans-serif; -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<!-- 이용약관, 개인정보처리방침, 개인정보 수집 이용동의 박스 -->
<!-- font-family: 'Gothic A1', sans-serif; -->
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200&display=swap" rel="stylesheet">

<!-- 버튼 -->
<!-- font-family: 'Black Han Sans', sans-serif; -->
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">


<title>Insert title here</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	border: none;
}

body {
	font-size: 14px;
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
}

.login-wrapper {
	width: 400px;
	height: 350px;
	padding: 40px;
	box-sizing: border-box;
	margin:0 auto;
	margin-top: 100px;
}

.login-wrapper>h2 {
	font-family: 'Kanit', sans-serif;
	font-size: 50px;
	font-weight: bolder;
	color: #000000;
	margin-bottom: 30px;
	margin-top: 100px;
}

#login-form>input {
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	border-radius: 6px;
	background-color: #F8F8F8;
}

#login-form>input::placeholder {
	color: #D2D2D2;
}

#login-form>.login-default {
	color: #fff;
	font-size: 16px;
	background-color: #000000;
	margin-top: 20px;
}

#login-form>.login-kakao {
	color: #000000;
	font-size: 16px;
	background-color: #FEE500;
	margin-top: 20px;
}

#login-form>.login-naver {
	color: #fff;
	font-size: 16px;
	background-color: #1EC800;
	margin-top: 20px;
}

#login-form>.login-apple {
	color: #000000;
	font-size: 16px;
	background-color: #fff;
	margin-top: 20px;
	border: 1px solid black;
}

#login-form>input[type="checkbox"] {
	display: none;
}

#login-form>label {
	color: #999999;
}

#login-form input[type="checkbox"]+label {
	cursor: pointer;
	padding-left: 26px;
	background-image: url("checkbox.png");
	background-repeat: no-repeat;
	background-size: contain;
}

#login-form input[type="checkbox"]:checked+label {
	background-image: url("checkbox-active.png");
	background-repeat: no-repeat;
	background-size: contain;
}

#login-form .alink {
	color: #999999;
	margin-left: 70px;
	text-decoration-line: none;
}

#login-form .blink {
	color: #999999;
}

#login-form .nonMembers_txt {
	margin-top: 30px;
	font-size: 20px;
}

.header {
	height: 75px;
	padding: 1rem;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	font-family: 'Noto Sans KR', sans-serif;
}

.header a {
	color: #000000;
	text-decoration-line: none;
	font-size: 20px;
}

.header .customer {
	text-align: right;
}
.header .customer a{
	margin-right: 30px;
}
li {
	list-style-type: none;
	list-style: none;
}
.header .collapse{
	margin-left: 70px;
}
.header .collapse li{
	margin-left: 50px;
}
</style>
</head>
<body>
	<div class="header">
		<nav class="navbar navbar-expand-sm fixed-top">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">늒발란스</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Men</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">링크1</a></li>
								<li><a class="dropdown-item" href="#">링크2</a></li>
								<li><a class="dropdown-item" href="#">링크3</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Women</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">링크1</a></li>
								<li><a class="dropdown-item" href="#">링크2</a></li>
								<li><a class="dropdown-item" href="#">링크3</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Kid</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">링크1</a></li>
								<li><a class="dropdown-item" href="#">링크2</a></li>
								<li><a class="dropdown-item" href="#">링크3</a></li>
							</ul>
						</li>
						<li class="nav-search dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">검색</a>
							<ul class="dropdown-menu">
								<input class="form-control me-2" type="text" placeholder="검색">
							</ul>
						</li>
					</ul>
				</div>
				<div class="customer">
					<li class="nav-menu">
						<a href="#">로그인</a>
						<a href="#">회원가입</a>
						<a href="#">
							<span class="blind">장바구니</span>
						</a>
					</li>
				</div>
			</div>
		</nav>
	</div>
	<div class="login-wrapper">
		<h2>LOG IN</h2>
		<form method="post" action="서버의url" id="login-form">
			<input type="text" name="userName" placeholder="아이디"> <input
				type="password" name="userPassword" placeholder="비밀번호"> <label
				for="remember-check"> <input type="checkbox"
				id="remember-check">아이디 저장하기 <a
				href="/customer/direct.FindID.action" class="alink">아이디/비밀번호 찾기</a>
			</label>
			<input type="submit" value="로그인" class="login-default">
			<div class="nonMembers_txt">
				<a href="/noncustomer/findNonCustomerOrder.action" class="blink">비회원
					주문조회</a>
			</div>
		</form>
	</div>
</body>
</html>