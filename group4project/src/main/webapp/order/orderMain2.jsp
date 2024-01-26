<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 정보</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
	$(document).ready(function() {
		$("input").addClass("form-control");
	});
	$(function() {
		$("#tabs").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");
		$("#tabs li").removeClass("ui-corner-top").addClass("ui-corner-left");
	});
</script>
<style>
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
</style>

</head>
<body>

	<div class="justify-content-center row">
		<div class="col-1">
			<nav class="navbar navbar-expand-sm">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#"><img
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
					<li class="nav-item"><a class="nav-link" href="#"> <img
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
					<li class="nav-item"><a class="nav-link dark-nav">주문/결제</a></li>
				</ul>
			</nav>
		</div>

	</div>

	<div class="justify-content-center row">
		<div class="container col-7">
			<table class="col-12" style="border: 1px solid; border-bottom: none;">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar">받는사람 </span></td>
						<td><input name="rname" class="form-control"
							placeholder="받는분 성함" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">주소 </span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="우편 번호" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span></span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="기본 주소" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span></span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="나머지 주소(선택 입력 가능)" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">일반 전화</span></td>
						<td><input name="rname" class="inputTypeText" placeholder=""
							size="15" value="" type="text" style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">휴대 전화</span></td>
						<td><input name="rname" class="inputTypeText" placeholder=""
							size="15" value="" type="text" style="width: 100%; height: 50px;"></td>
					</tr>
				</tbody>
			</table>

			<div style="border: 1px solid; padding: 25px; border-bottom: none;">
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

			<div>
				<table class="col-12"
					style="border: 1px solid; padding: 20px; border-bottom: none;">
					<tr>
						<td>
							<h4 style="margin-left: 10px; margin-top: 5px;">주문 상품</h4>
						</td>
					</tr>
					<tr>
						<td width="150px">상품 사진 <img
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
			<table class="col-12" style="border: 1px solid;">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar">주문 상품</span></td>
						<td><input name="rname" class="form-control"
							placeholder="주문 상품 코드를 받아와서 입력될 예정" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
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
							placeholder="회원 정보에 따른 할인량을 계산하여 입력될 예정" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
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
			<table style="border: 1px solid; border-top: none;">
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar">결제 수단</span></td>
					</tr>
					<tr>
						<td id="tabs" colspan="2">
							<ul style="width: 100%;">
								<li><a href="#tabs-1">무통장 입금</a></li>
								<li><a href="#tabs-2">카카오 페이</a></li>
								<li><a href="#tabs-3">신용 카드</a></li>
							</ul>
							<div id="tabs-1" style="width: 100%;">
								<h2>무통장입금</h2>
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
		</div>
	</div>


</body>
</html>