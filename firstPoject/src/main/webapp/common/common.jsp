<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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

<meta charset="UTF-8">
<style>

	/* 버튼 */
	button {
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 1em;
		cursor: pointer;
		border-width: thin;
	}
	
	.btn_white {
		padding: 5px 10px;
		background-color: #FFFFFF;
		color: #000000;
		
	}
	
	.btn_black {
		padding: 5px 10px;
		background-color: #000000;
		color: #ffffff;
	}
	
	/* 회색선 */
	.underline {
		border-bottom: 1px solid rgba(128, 128, 128, 0.5); /* 투명도를 포함한 회색 선 */
		margin-top: 10px; /* 선 위의 간격 조절 */
	}
	
	
	/* select box */
	.selectbox {
		  display: inline-block;
		  position: relative;
		  width: 150px;
		  border: 1px solid rgba(128, 128, 128, 0.3);
		  z-index: 1;
		  text-align: right;
		}

		.selectbox:before {
		  content: "";
		  position: absolute;
		  top: 50%;
		  right: 15px;
		  width: 0;
		  height: 0;
		  margin-top: -1px;
		  border-left: 5px solid transparent;
		  border-right: 5px solid transparent;
		  border-top: 5px solid #333;
		}

		.selectbox label {
		  position: absolute;
		  top: 1px;
		  left: 5px;
		  padding: .6em .5em;
		  color: #999;
		  z-index: -1;
		}

		.selectbox select {
		  width: 100%;
		  height: auto;
		  line-height: normal;
		  font-family: inherit;
		  padding: .6em .5em;
		  border: 0;
		  opacity: 0;
		  filter:alpha(opacity=0);
		  -webkit-appearance: none;
		  -moz-appearance: none;
		  appearance: none;
		}
		
</style>
<title>Insert title here</title>
</head>
<body>

</body>
</html>