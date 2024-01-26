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
.mar {
	margin-left: 15px;
}

.dark-nav {
	color: white;
	font-size: 30px;
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
					<li class="nav-item"><a class="nav-link" href="#">Link 1</a></li>
				</ul>
			</nav>
		</div>
		<div class="col-6">
			<nav class="navbar navbar-expand-sm">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#">Link 1</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link 2</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<div class="justify-content-center row">
		<div class="col-7">
			<nav class="navbar navbar-expand-sm bg-dark text-center">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link dark-nav" href="#">주문/결제</a></li>
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
			<table class="col-12" style="border: 1px solid; border-bottom: none;">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar">할인 코드 적용 </span></td>
						<td><input name="rname" class="form-control"
							placeholder="할인코드" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar"> 적립금 </span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="적립금" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td colspan="2">
							<nav
								class="navbar navbar-expand-sm bg-light border justify-content-between">
								<ul class="navbar-nav">
									<li class="nav-item" style="margin-left: 10px;">적용 금액</li>

								</ul>
								<ul class="navbar-nav">

									<li class="nav-item" style="margin-right: 20px;">적용된 금액 ?원
									</li>
								</ul>
							</nav>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="col-12" style="border: 1px solid;">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar">주문 상품</span></td>
						<td><input name="rname" class="form-control"
							placeholder="할인코드" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">배송비</span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="적립금" size="15" value="" type="text"
							style="width: 100%; height: 50px;"></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">할인/부가결제</span></td>
						<td><input name="rname" class="inputTypeText"
							placeholder="적립금" size="15" value="" type="text"
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
			<table class="col-12" style="border: 1px solid; border-top: none;">
				<tbody>
					<tr style="height: 50px">
						<td><span class="mar"><h4>결제 수단</h4></span></td>
					</tr>
					<tr style="height: 50px">
						<td><span class="mar">결제 수단 선택</span></td>
					</tr>
					<tr>
						<td>
							<div id="tabs">
								<div>
									<ul style="width: 100%;">
										<li><a href="#tabs-1">무통장 입금</a></li>
										<li><a href="#tabs-2">카카오 페이</a></li>
										<li><a href="#tabs-3">신용 카드</a></li>
									</ul>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="col-7" id="tabs-1">
								<h2>Content heading 1</h2>
								<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo
									a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet
									mauris. Nam elementum quam ullamcorper ante. Etiam aliquet
									massa et lorem. Mauris dapibus lacus auctor risus. Aenean
									tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend
									adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum.
									Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel
									pede varius sollicitudin. Sed ut dolor nec orci tincidunt
									interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
							</div>
							<div class="col-7" id="tabs-2">
								<h2>Content heading 2</h2>
								<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio
									metus gravida ante, ut pharetra massa metus id nunc. Duis
									scelerisque molestie turpis. Sed fringilla, massa eget luctus
									malesuada, metus eros molestie lectus, ut tempus eros massa ut
									dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in
									ligula suscipit aliquam. Praesent in eros vestibulum mi
									adipiscing adipiscing. Morbi facilisis. Curabitur ornare
									consequat nunc. Aenean vel metus. Ut posuere viverra nulla.
									Aliquam erat volutpat. Pellentesque convallis. Maecenas
									feugiat, tellus pellentesque pretium posuere, felis lorem
									euismod felis, eu ornare leo nisi vel felis. Mauris consectetur
									tortor et purus.</p>
							</div>
							<div class="col-7" id="tabs-3">
								<h2>Content heading 3</h2>
								<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse
									potenti. Aliquam vulputate, pede vel vehicula accumsan, mi
									neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum
									non ante. Class aptent taciti sociosqu ad litora torquent per
									conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque
									eu urna vel enim commodo pellentesque. Praesent eu risus
									hendrerit ligula tempus pretium. Curabitur lorem enim, pretium
									nec, feugiat nec, luctus a, lacus.</p>
								<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra
									at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent
									viverra justo vitae neque. Praesent blandit adipiscing velit.
									Suspendisse potenti. Donec mattis, pede vel pharetra blandit,
									magna ligula faucibus eros, id euismod lacus dolor eget odio.
									Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut
									sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,
									tempor vitae, pede. Aenean vehicula velit eu tellus interdum
									rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in
									lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>