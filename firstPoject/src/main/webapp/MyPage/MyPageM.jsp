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
	function toggleDiv() {
		var mainDiv = document.getElementById("mainDiv");
		var otherDiv = document.getElementById("otherDiv");

		if (mainDiv.style.display !== "none") {
			mainDiv.style.display = "none";
			otherDiv.style.display = "block";
		} else {
			mainDiv.style.display = "block";
			otherDiv.style.display = "none";
		}
	}

	function toggleOrder() {
		var mainDiv = document.getElementById("mainDiv");
		var otherDiv = document.getElementById("otherDiv");

		mainDiv.style.display = "block";
		otherDiv.style.display = "none";

	}
	function toggleReview() {
		var mainDiv = document.getElementById("mainDiv");
		var otherDiv = document.getElementById("otherDiv");

		mainDiv.style.display = "none";
		otherDiv.style.display = "block";

	}
</script>
<style type="text/css">
body {
	font-family: 'Noto Sans KR', sans-serif;
}

h1 {
	text-align: center;
}

.underline {
	border-bottom: 1px solid rgba(128, 128, 128, 0.5);
	margin-top: 10px;
}

.orderTh { /* 주문내역 테이블 스타일 */
	width: 15%;
	height: 15px;
	text-align: center;
	font-size: 14px;
}

.orderTd { /* 주문내역 테이블 스타일 */
	width: 12%;
	height: 150px;
	text-align: center;
}

.orderImg { /* 주문 내역 사진의 스타일*/
	width: 150px;
	height: 150px;
	padding: 5px;
}

.Myt {
	width: 80%;
	margin-top: 70px;
	height: 100px;
}

.Myp {
	text-align: center;
	width: 20%;
}

.Myp1 {
	text-align: center;
	width: 50%;
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

.sideBar {
	position: fixed;
	left: 80px; /* 왼쪽 여백 */
	top: 50%;
	transform: translateY(-50%);
}
</style>
</head>
<body>
	<div class="justify-content-center row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<h1>마이 쇼핑</h1>
			<table class="Myt">
				<tbody>
					<tr>
						<td class="Myp1" style="text-align: center;">
							<div
								style="width: 30%; float: none; display: inline-block; text-align: center;">
								<img style="height: 50px; width: 50px; margin-left: 40px;"
									src="https://cdn-icons-png.flaticon.com/128/4203/4203951.png">
							</div>
							<div
								style="width: 70%; float: none; display: inline-block; text-align: center; font-size: 16px;margin-top:20px;">
								안녕하세요. 고객이름 님!<br> 고객님의 회원등급은 일반회원 입니다.
							</div>
						</td>
						<td class="Myp" style="text-align: center;">
							<div
								style="width: 30%; float: none; display: inline-block; text-align: center;">
								<img style="height: 50px; width: 50px;"
									src="https://cdn-icons-png.flaticon.com/128/65/65998.png">
							</div>
							<div
								style="width: 70%; float: none; display: inline-block; text-align: center;margin-top:20px;">
								0회<br> 총 주문
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<div class="justify-content-center row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10 justify-content-center d-flex">
			<div class="bar col-sm-2 sideBar">
				<div class="spanbar" onclick="toggleReview()">
					<a href="#">리뷰 보기</a>
				</div>
				<div class="spanbar" onclick="toggleOrder()">
					<a href="#">주문 보기</a>
				</div>
				<div class="spanbar">
					<a href="./../Member/MyCart.jsp">장바구니</a>
				</div>
				<div class="spanbar">
					<a href="#">활동 정보</a>
				</div>
				<br> <a href="#">최근 본 상품</a><br> <br> <a href="#">좋아요한상품</a><br>
				<br> <a href="#">나의게시글</a><br>
				<div class="spanbar">
					<a href="#">내 정보</a>
				</div>
				<br> <a href="#">회원정보수정</a><br> <a href="#">로그아웃</a><br>
			</div>
			<div class="col-sm-8" id="mainDiv">
				<p class="maino">나의 구매내역</p>
				<br>
				<table style="width: 100%">
					<tbody>
						<tr class="underline">
							<th class="orderTh">주문번호</th>
							<th class="orderTh">상품</th>
							<th class="orderTh" style="width: 40%;">상품 상세</th>
							<th class="orderTh">옵션</th>
							<th class="orderTh">수량</th>
							<th class="orderTh">가격</th>
						</tr>
						<tr class="underline">
							<td class="orderTd" name="ORDCD">주문번호 ORDCD</td>
							<td class="orderTd"><img class="orderImg "
								src="https://www.wadiz.kr/ft/images/green001/2023/0613/20230613092632647_6.gif"></td>
							<td class="orderTd" style="width: 40%;">진흙 뭍히고 물<br>신발<br>음</td>
							<td class="orderTd">옵션</td>
							<td class="orderTd">QYT 수량</td>
							<td class="orderTd">PRICE 가격<br></td>
						</tr>
						
					</tbody>
				</table>
			</div>
			<div class="col-sm-8" id="otherDiv" style="display: none;">
				<p class="maino">리뷰 관리</p>
				<hr class="disborder">
				<br>
				<div class="crema-product-reviews crema-applied"
					data-product-code="NBPFES152A"
					data-applied-widgets="[&quot;.crema-product-reviews&quot;]"
					style="margin-top: 32px; margin-bottom: 32px;">
					<iframe id="crema-product-reviews-1"
						src="https://review3.cre.ma/nbkorea.com/products/reviews?product_code=NBPFES152A&amp;iframe_id=crema-product-reviews-1&amp;widget_style=&amp;app=0&amp;parent_url=https%3A%2F%2Fwww.nbkorea.com%2Fproduct%2FproductDetail.action%3FstyleCode%3DNBPFES152A%26colCode%3D35%26cIdx%3D1288&amp;nonmember_token=&amp;secure_device_token=V2aad0d0f64d5df91dd038b106de0fde342243abdf9113098edd43e4801dfc77ded19ddc93e6de862532393fbdd9fed86c&amp;iframe=1"
						height="0" width="100%" scrolling="no" allowtransparency="true"
						frameborder="0" name="crema-product-reviews-1-1706574865307"
						style="display: block; visibility: visible; height: 2434px;"></iframe>
				</div>
			</div>
		</div>
		<div class="col-sm-1"></div>
	</div>
</body>
</html>