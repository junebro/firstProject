<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 정보</title>
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$(document).ready(function() {
		$("input").addClass("form-control");
	});
	$(function() {
		$("#tabs").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");
		$("#tabs li").removeClass("ui-corner-top").addClass("ui-corner-left");
	});

	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById('zip-code').value = data.zonecode;
				document.getElementById('address-1').value = data.address;
			}
		}).open();
	}
</script>
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}

tr, input, select {
	height: 50px;
	width: 100%;
}

.distinct {	/* 구분선 스타일 */
	 border-bottom: 1px solid rgba(128, 128, 128, 0.5);
        margin-top: 10px;
}

.info {
	background-color: #9999FF;
	opacity: 0.5;
	font-weight: bold;
}

.icon {
	width: 30px;
	height: 30px;
}

.mar {
	margin-left: 15px;
}

.dark-nav {
	color: white;
	font-size: 30px;
}

.dark-nav1 {
	color: white;
	font-size: 20px;
}

.ui-tabs-vertical {
	width: 55em;
}

.ui-tabs-vertical .ui-tabs-nav {
	padding: .2em .1em .2em .2em;
	float: left;
	width: 12em;
}

.ui-tabs-vertical .ui-tabs-nav li {
	clear: left;
	width: 100%;
	border-bottom-width: 1px !important;
	border-right-width: 0 !important;
	margin: 0 -1px .2em 0;
}

.ui-tabs-vertical .ui-tabs-nav li a {
	display: block;
}

.ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active {
	padding-bottom: 0;
	padding-right: .1em;
	border-right-width: 1px;
}

.ui-tabs-vertical .ui-tabs-panel {
	padding: 1em;
	float: right;
	width: 40em;
}

button {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 1em;
	cursor: pointer;
	border-width: thin;
}

.btn_black {
	padding: 5px 10px;
	background-color: #000000;
	color: #ffffff;
}

.paymentbar {
	text-align: center;
}
</style>

</head>
<body>

	<div style="background-color: white;"
		class="justify-content-center row">
		<div class="col-1">
			<nav class="navbar navbar-expand-sm">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="./../Member/MyCart.jsp"><img
							class="icon"
							src="https://cdn-icons-png.freepik.com/256/10009/10009107.png?ga=GA1.1.1582875918.1706248960&semt=ais">
					</a></li>
				</ul>
			</nav>
		</div>
		<div class="col-6">
			<nav class="navbar navbar-expand-sm">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#"> <img
							class="icon"
							src="https://cdn-icons-png.freepik.com/256/12718/12718662.png">
					</a></li>
					<li class="nav-item"><a class="nav-link" href="./../MyPage/MyPageM.jsp"> <img
							class="icon"
							src="https://cdn-icons-png.freepik.com/256/747/747376.png?ga=GA1.1.1582875918.1706248960&semt=ais">
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<div class="justify-content-center row">
		<div class="col-7">
			<nav class="navbar navbar-expand-sm bg-dark text-center">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><p class="nav-link dark-nav">주문/결제</p></li>
				</ul>
			</nav>
		</div>

	</div>

	<div class="justify-content-center row">
		<div class="container col-7">
			<table class="col-12">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr>
						<td>
							<h3 style="margin: 20px;">회원정보</h3>
						</td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">주문자 </span></td>
						<td><input placeholder="회원 정보를 통해 입력" size="15" value=""
							type="text" style="width: 100%;"></td>
					</tr>
					<tr>
						<td><span class="mar">이메일</span></td>
						<td>
							<div class="input-group mt-3 mb-3 input-group-prepend">
								<input style="width: 70%" type="text" class="form-control"
									placeholder="회원 정보를 통해 입력"> <select
									class="form-select select-toggle" id="messageC"
									style="width: 30%; margin: auto;">
									<option>--메일 선택--</option>
									<option>@naver.com</option>
									<option>@gmail.com</option>
									<option>@daum.net</option>
								</select>
							</div>
						</td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">휴대 전화</span></td>
						<td>
							<div class="input-group mt-3 mb-3 input-group-prepend">
								<select class="form-select select-toggle" id="messageC"
									style="width: 30%; margin: auto;">
									<option>--번호 선택--</option>
									<option>010</option>
									<option>011</option>
									<option>070</option>
								</select> <input style="width: 70%" type="text" class="form-control"
									placeholder="회원 정보를 통해 입력">
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<hr class="distinct">
			<table class="col-12">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr style="margin: 20px;">
						<td>
							<h3 style="margin: 20px;">배송정보</h3>
						</td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">받는사람 </span></td>
						<td><input placeholder="받는분 성함" size="15" value=""
							type="text""></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">주소</span></td>
						<td><input type="button" onclick="execDaumPostcode()"
							value="우편번호 찾기"> <input type="text" id="zip-code"
							placeholder="우편번호" disabled="disabled"></td>
					</tr>
					<tr style="height: 50px">
						<td><span></span></td>
						<td><input id="address-1" placeholder="도로명주소" size="15"
							type="text" style="width: 100%;" disabled="disabled"></td>
					</tr>
					<tr style="height: 50px">
						<td><span></span></td>
						<td><input id="address-2" placeholder="상세주소" size="15"
							type="text""></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">휴대 전화</span></td>
						<td>
							<div class="input-group mt-3 mb-3 input-group-prepend">
								<select class="form-select select-toggle" id="messageC"
									style="width: 30%; margin: auto;">
									<option>--번호 선택--</option>
									<option>010</option>
									<option>011</option>
									<option>070</option>
								</select> <input style="width: 70%" type="text" class="form-control"
									placeholder="-없이 번호를 입력해주세요.">
							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<div>
				<form>
					<select class="form-select" id="messageC"
						style="width: 100%; margin: auto;">
						<option>--배송 메세지(선택사항)--</option>
						<option>부재 시 경비실에 맡겨주세요.</option>
						<option>부재 시 문 앞에 놓아주세요.</option>
						<option>택배함에 보관해주세요.</option>
					</select>
					<div class="form-check" style="margin-top: 10px">
						<input class="form-check-input" type="checkbox" id="op1"
							name="op1" value="something" checked> <label
							class="form-check-label">&nbsp;기본 배송지로 저장</label>
					</div>
				</form>
			</div>
			<hr class="distinct">
			<div>
				<table class="col-12" style="padding: 20px; border-bottom: none;">
					<tr>
						<td>
							<h4 style="margin: 20px;">주문 상품</h4>
						</td>
					</tr>
					<tr>
						<td width="150px"><img
							style="margin-left: 10px; margin-top: 10px; margin-bottom: 5px;"
							width="120px" height="120px"
							src="https://post-phinf.pstatic.net/MjAxOTA4MTNfMjIg/MDAxNTY1NjYwNDE4NjY3.l7xSqzLFBIojMAa8xxfY_OzKucZb4FimEDq2eS2WHkYg.tyeXLu39J6qYdxke7FTEnSdxuKWEf2jM5BRdk5Ronowg.GIF/1565623714.gif?type=w500_q75"></img>
						</td>
						<td><span>주문상품 이름</span><br> <span>주문옵션</span><br>
							<span>주문수량</span><br></td>
					</tr>
					<tr style="height: 50px">
						<td colspan="2">
							<nav
								class="navbar navbar-expand-sm bg-light border justify-content-between">
								<ul class="navbar-nav">
									<li class="nav-item" style="margin-left: 10px;">배송비</li>

								</ul>
								<ul class="navbar-nav">

									<li class="nav-item" style="margin-right: 20px;">0원(무료)</li>
								</ul>
							</nav>
						</td>
					</tr>
				</table>
			</div>
			<br>
			<hr class="distinct">
			<br>
			<table class="col-12">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar">주문 상품</span></td>
						<td><input name="rname" class="form-control"
							placeholder="주문 상품 코드를 받아와서 입력될 예정" size="15" value=""
							type="text" style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">배송비</span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="배송비 정보를 받아와서 입력될 예정" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">할인/부가결제</span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="회원 정보에 따른 할인량을 계산하여 입력될 예정" size="15" value=""
							type="text" style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td colspan="2">
							<nav
								class="navbar navbar-expand-sm bg-light border justify-content-between">
								<ul class="navbar-nav">
									<li class="nav-item" style="margin-left: 10px;">최종 결제 금액</li>

								</ul>
								<ul class="navbar-nav">

									<li class="nav-item" style="margin-right: 20px;">? 원</li>
								</ul>
							</nav>
						</td>
					</tr>
				</tbody>
			</table>
			<hr class="distinct">
			<table>
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar"
							style="font-size: 24px; font-weight: bold;">결제 수단</span></td>
					</tr>
					<tr>
						<td id="tabs" colspan="2">
							<ul style="width: 100%;">
								<li class="paymentbar"><a href="#tabs-1">무통장 입금</a></li>
								<li class="paymentbar"><a href="#tabs-2">카카오 페이</a></li>
								<li class="paymentbar"><a href="#tabs-3">신용 카드</a></li>
							</ul>
							<div id="tabs-1" style="width: 100%;">
								<h3>무통장입금</h3>
								<table class="col-12" style="">
									<colgroup>
										<col style="width: 20%;">
										<col style="width: 80%">
									</colgroup>
									<tbody>
										<tr style="height: 50px">
											<td><span class="mar">입금은행 </span></td>
											<td><form>
													<select class="form-select" id="messageC"
														style="width: 100%; margin: auto;">
														<option>--입금 은행을 선택해주세요--</option>
														<option>쓰레기은행 20240126</option>
														<option>바보은행 32432432423432</option>
														<option>뜨아악은행 67212212</option>
													</select>
												</form></td>
										</tr>
										<tr style="height: 50px">
											<td><span class="mar">입금자명 </span></td>
											<td><input name="rname" class="form-control"
												placeholder="입금자 이름" size="15" value="" type="text"
												style="width: 100%; height: 50px;"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div id="tabs-2" style="width: 100%;">
								<h3>카카오 페이 결제</h3>
								<p>-카카오톡 앱을 설치한 후, 최초 1회 카드 정보를 등록하셔야 사용 가능합니다.</p>
								<p>-인터넷 익스플로러는 지원하지 않습니다.</p>
								<p>-카카오머니로 결제 시, 현금영수증 방급은 (주)카카오페이에서 발급가능합니다..</p>
							</div>
							<div id="tabs-3" style="width: 100%;">
								<h3>신용 카드 결제</h3>
								<p>-소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</p>
								<p>-결제 버튼을 누르시면 팝업 창이 생성됩니다.</p>
							</div>
						</td>
					</tr>
					<tr>
						<td></td>
					</tr>
				</tbody>
			</table>
			<div class="justify-content-center row">
				<div class="col-12">
					<nav class="navbar navbar-expand-sm bg-dark text-center">
						<ul class="navbar-nav mx-auto">
							<li class="nav-item"><a class="nav-link dark-nav1" href="#">?원
									결제하기</a></li>
						</ul>
					</nav>
				</div>

			</div>
			<div class="info">
				<br>
				<p>- 무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에
					대해 무이자할부가 적용되지 않습니다. 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기
					바랍니다.</p>
				<br>
				<p>- 최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</p>
				<br>
			</div>

		</div>
	</div>



</body>
</html>