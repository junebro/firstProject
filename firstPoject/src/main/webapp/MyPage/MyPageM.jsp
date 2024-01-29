<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	text-align: center;
	width: 20%;
}

.Myp1 {
	text-align: center;
	width: 40%;
}

.row {
	margin-top: 50px;
	justify-content: center;
}
.bar{
	width: 20%;
}
.Main{
	width: 80%;
}
.spanbar{
	margin-top:30px;
	font-weight: bolder;
	font-size: 20px;
}
a{
	text-decoration: none;
	color:black;
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
						아이콩
							<span>
								안녕하세요. 고객이름 님!<br> 고객님의 회원등급은 일반회원 입니다.
							</span>
						</td>
						<td class="Myp" style="border-right: 0.5px gray inset">아이콘<br>
							100원<br> 총적립금
						</td>
						<td class="Myp" style="border-right: 0.5px gray inset">아이콘<br>
							0개<br> 쿠폰
						</td>
						<td class="Myp">아이콘<br> 0회<br> 총주문
						</td>
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
			<br><a href="#">적립금 내역</a><br>
			<a href="#">쿠폰 내역</a><br>
			<a href="#">배송 주소록 관리</a><br>
			<a href="#">정기 배송 관리</a><br>
			<div class="spanbar">
			<a href="#">활동 정보</a>
			</div>
			<br><a href="#">최근 본 상품</a><br>
			<a href="#">좋아요한상품</a><br>
			<a href="#">나의게시글</a><br>
			<div class="spanbar">
			<a href="#">나으정보</a>
			</div>
			<br><a href="#">회원정보수정</a><br>
			<a href="#">로그아웃</a><br>
		</div>
		<div class="col-sm-8">
			<p style="margin-top:30px;">나의 주문처리 현황(최근 3개월 기준)</p>
			<hr class="disborder">
		</div>
		</div>
		<div class="col-sm-1"></div>
	</div>
</body>
</html>