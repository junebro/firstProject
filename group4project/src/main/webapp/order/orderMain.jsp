<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 정보</title>
</head>
<body>

	<form>
		<div class="container">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<h1 style="color: red;">주문 정보</h1>
					<p style="color: red;">주문 정보 페이지 입니다.</p>
				</div>
				<div class="col-sm-1"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2"></div>

				<div class="col-sm-8">
					<div class="input-group">
						<span id="idspan" class="input-group-text"> 주문한새끼 </span> <input
							id="id" name="id" type="text" class="form-control"
							placeholder="주문자 이름 연동 예정">
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2"></div>

				<div class="col-sm-4">
					<div class="input-group">
						<span id="idspan" class="input-group-text"> 이메일 </span> <input
							id="id" name="id" type="text" class="form-control"
							placeholder="주문자 이름 연동 예정">
					</div>
				</div>
				@
				<div class="col-sm-4">
					<div class="input-group">
						<input id="id" name="id" type="text" class="form-control"
							placeholder="주문자 이름 연동 예정">
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2"></div>

				<div class="col-sm-8">
					<div class="input-group">
						<span id="idspan" class="input-group-text"> 전화 번호 </span> <input
							id="id" name="id" type="text" class="form-control"
							placeholder="주문자 전화번호 연동 예정">
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2"></div>

				<div class="col-sm-8">
					<div class="input-group">
						<span id="idspan" class="input-group-text"> 배송지 정보 </span> <input
							id="id" name="id" type="text" class="form-control"
							placeholder="주문자 주소 정보 연동">
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<div class="row">
				<div class="col-sm-2"></div>

				<div class="col-sm-8">
					<div class="input-group">
						<span id="idspan" class="input-group-text"> 배송지 정보 </span> <input
							id="id" name="id" type="text" class="form-control"
							placeholder="주문자 주소 정보 연동">
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<br>
		</div>
	</form>

</body>
</html>