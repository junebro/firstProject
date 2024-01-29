<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
	
</script>
<style type="text/css">
body {
	font-family: 'Noto Sans KR', sans-serif;
}

h1 {
	text-align: center;
}

.Myt {
	width: 100%;
	margin-top: 70px;
	border: 0.5px gray inset;
	height: 230px;
}

.Myp {
	text-align:center;
	width: 20%;
}

.Myp1 {
	width: 40%;
}

.row {
	margin-top: 50px;
	justify-content: center;
}

.bar {
	width: 20%;
}

.Main {
	width: 80%;
}

.spanbar {
	margin-top: 30px;
	font-weight: bolder;
	font-size: 20px;
}

a {
	text-decoration: none;
	color: black;
}

.maino {
	margin-top: 30px;
	text-align: center;
	font-size: 18px;
	font-weight: bold;
}

.mainicon {
	width: 30px;
	height: 30px;
	margin-left: 60px;
}

.maintd {
	width: 20%;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="justify-content-center row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<h1>마이 쇼핑</h1>
			<table class="Myt">
				<tbody>
					<tr>
						<td class="Myp1" style="border-right: 0.5px gray inset">
							<div style="width: 30%; float: left; text-align: center;">
								<img style="height: 50px; width: 50px; margin-left: 40px;"
									src="https://cdn-icons-png.flaticon.com/128/4203/4203951.png">
							</div>
							<div style="width: 70%; float: left; font-size: 16px;">
								안녕하세요. 고객이름 님!<br> 고객님의 회원등급은 일반회원 입니다.
							</div>
						</td>
						<td class="Myp" style="border-right: 0.5px gray inset">
							<div style="width: 30%; float: left;">
								<img style="height: 50px; width: 50px;"
									src="https://cdn-icons-png.flaticon.com/128/4789/4789956.png">
							</div>
							<div style="width: 70%; float: left;">
								100원<br>총적립금
							</div>
						</td>
						<td class="Myp" style="border-right: 0.5px gray inset">
							<div style="width: 30%; float: left;">
								<img style="height: 50px; width: 50px;"
									src="https://cdn-icons-png.flaticon.com/128/8396/8396551.png">
							</div>
							<div style="width: 70%; float: left;">
								0개<br> 쿠폰
							</div>
						</td>
						<td class="Myp"><div style="width: 30%; float: left;">
								<img style="height: 50px; width: 50px;"
									src="https://cdn-icons-png.flaticon.com/128/65/65998.png">
							</div>
							<div style="width: 70%; float: left;">
								0회<br> 총주문
							</div></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<div class="justify-content-center row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10 justify-content-center d-flex">
			<div class="bar col-sm-2">
				<div class="spanbar">
					<a href="#">주문내역 조회</a>
				</div>
				<br> <a href="#">적립금 내역</a><br> <a href="#">쿠폰 내역</a><br>
				<a href="#">배송 주소록 관리</a><br> <a href="#">정기 배송 관리</a><br>
				<div class="spanbar">
					<a href="#">활동 정보</a>
				</div>
				<br> <a href="#">최근 본 상품</a><br> <a href="#">좋아요한상품</a><br>
				<a href="#">나의게시글</a><br>
				<div class="spanbar">
					<a href="#">나으정보</a>
				</div>
				<br> <a href="#">회원정보수정</a><br> <a href="#">로그아웃</a><br>
			</div>
			<div class="col-sm-8">
				<p class="maino">
					나의 주문처리 현황 <span style="font-size: 12px; font-weight: normal;">(최근
						3개월 기준)</span>
				</p>
				<hr class="disborder">
				<br>
				<table class="justify-content-center" style="width: 100%;">
					<tbody>
						<tr>
							<td style="width: 10%;"></td>
							<td class="maintd justify-content-center"><br> 입금전 <img
								class="mainicon"
								src="https://cdn-icons-png.flaticon.com/128/6423/6423875.png">
							</td>
							<td class="maintd"><br> 준비중 <img class="mainicon"
								src="https://cdn-icons-png.flaticon.com/128/6423/6423875.png">
							</td>
							<td class="maintd"><br> 배송중 <img class="mainicon"
								src="https://cdn-icons-png.flaticon.com/128/6423/6423875.png">
							</td>
							<td class="maintd"><br> 배송완료</td>
						</tr>
					</tbody>
				</table>
				<br> <br>
				<p class="maino">나의 주문내역 조회</p>
				<hr class="disborder">
				<br>
			</div>
		</div>
		<div class="col-sm-1"></div>
	</div>
</body>
</html>