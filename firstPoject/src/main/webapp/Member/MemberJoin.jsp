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
<style>
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
.contents h2{
	font-size: 40px;
	margin-bottom: 30px;
	margin-top: 100px;
}
.section li{
	font-size: 15px;
	color: #BDBDBD;
	display : inline;
	padding: 5px;
}
.section .selected{
	color: black;
}
.titleArea{
	margin: auto;
}
.titleArea h3{
	text-align : left;
	margin-top: 30px;
}
.titleArea li{
	text-align : right;
	list-style: square;
	color: #A6A6A6;
}
.required{
	list-style: square;
}
table{
	width : 800px;
	margin-left:auto;
	margin-right:auto;
	border-top: 2px solid black;
}
tr{
	border: 1px groove #BDBDBD;
}
th{
	border: 1px groove #BDBDBD;
	padding: 15px;
	margin: auto;
	background-color: #F6F6F6;
	width: 200px;
}
td{
	text-align: left;
	padding: 15px;
	margin: auto;
}

table li, .txtInfo{
	color: #A6A6A6;
}
table .required{
	text-align : left;
}
table .inputTypeText{
	border: 1px groove #BDBDBD;
	width: 400px;
}
#mobile1, #mobile2, #mobile3{
	border: 1px groove #BDBDBD;
	width: 30%;
	height: 40px;
}
table input{
	width: auto;
	padding: 10px;
}
.ec-address li{
	list-style: none;
	margin-left: -30px;
}
#postcode1, #addr1{
	background-color: #F6F6F6;
	border: 1px solid #BDBDBD;
}
#postBtn{
	width: 87px;
	height: 43px;
}
#addr1, #addr2{
	width: 500px;
}
button {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 1em;
	cursor: pointer;
	border-width: thin;
	border: 1px groove #BDBDBD;
}
.btnBasic{
	margin-left: 10px;
}
.btn_white {
	padding: 5px 10px;
	background-color: #FFFFFF;
	color: #000000;
	border: 1px groove #BDBDBD;
}
.btn_black {
	padding: 5px 10px;
	background-color: #000000;
	color: #ffffff;
	border: 1px groove #BDBDBD;
}
.desc{
	font-size: 15px;
	color: #BDBDBD;
}
#is_sex0, #is_sex1{
	margin-left: 10px;
}
#birth_year, #birth_month, #birth_day{
	width: 150px;
}
.gBottom{
	margin-top: 50px;
}
#is_solar_calendar0, #is_solar_calendar1{
	margin-top: 10px;
	margin-left: 10px;
}
</style>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
         
                document.getElementById("sample4_engAddress").value = data.addressEnglish;
                       
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</head>
<body>
	<div class="container">
		<div class="contents">
			<h2>회원 가입</h2>
		</div>
		<div class="section">
			<ol class="step">
				<li>1.약관동의 ></li>
				<li class="selected">2.정보입력 ></li>
				<li>3.가입완료</li>
			</ol>
		</div>
		<div class="titleArea" style="width: 800px">
			<h3>기본정보</h3>
			<li class="required">필수입력사항</li>
		</div>
		<div>
			<div>
			<table>
				<tr>
					<th scope="row">
						<li class="required id">아이디</li>
					</th>
					<td>
						<input id="member_id" name="member_id" class="inputTypeText" type="text">
						<div class="txtInfo">(영문소문자/숫자, 4~16자)</div>
						<p id="idMsg" class="txtInfo txtSuccess"></p>
					</td>
	            </tr>
	            <tr>
	            	<th scope="row">
	            		<li class="required password">비밀번호</li>
	            	</th>
	            	<td>
	            		<input id="member_password" name="member_password" class="inputTypeText" type="text">
						<div class="txtInfo">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10~16자)</div>
						<p id="passwordMsg" class="txtInfo txtSuccess"></p>
					</td>
				</tr>
	            <tr>
	            	<th scope="row">
	            		<li class="required password check">비밀번호 확인</li>
	            	</th>
	            	<td>
	            		<input id="member_password_check" name="member_password_check" class="inputTypeText" type="text">
						<p id="passwordCheckMsg" class="txtInfo txtSuccess"></p>
					</td>
				</tr>
				<tr>
	            	<th scope="row">
	            		<li class="required name">이름</li>
	            	</th>
	            	<td>
	            		<input id="member_name" name="member_name" class="inputTypeText" type="text">
						<p id="nameMsg" class="txtInfo txtSuccess"></p>
					</td>
				</tr>
				<tr>
	            	<th scope="row">
	            		<li class="required address">주소</li>
	            	</th>
	            	<td class="formMultiple">
	            		<ul class="ec-address">
	            			<li id="join_zipcode_wrap">
	                			<input id="postcode1" name="postcode1" placeholder="우편번호" class="inputTypeText" type="text" readonly="readonly" onclick="sample4_execDaumPostcode()">
	                			<button id="postBtn" class="btnBasic" type="button" onclick= "sample4_execDaumPostcode()" style="cursor: pointer">주소검색</button>
	            			</li>
	            			<li id="join_baseAddr_wrap">
	                			<input id="addr1" name="addr1" placeholder="기본주소" class="inputTypeText" type="text" readonly="readonly" onclick="sample4_execDaumPostcode()">
	           				</li>
	           				<li id="join_detailAddr_wrap">
	               				<input id="addr2" name="addr2" placeholder="나머지 주소(선택 입력 가능)" class="inputTypeText" type="text">
	            			</li>
	            		</ul>
					</td>
				</tr>
				<tr>
					<th scope="row">
						<li class="required handphone">휴대전화</li>				
					</th>
					<td class="formGroup code">
	                    <select id="mobile1" name="mobile[]">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>-
						<input id="mobile2" name="mobile[]" maxlength="4" type="text">-
						<input id="mobile3" name="mobile[]" maxlength="4" type="text">
					</td>
				</tr>
				<tr>
					<th scope="row">
						<li class="required email" alt="필수">이메일
					</th>
					<td>
					<input id="email1" name="email1" class="inputTypeText" type="text">
					<p class="txtInfo" id="emailMsg"></p>
					</td>
				</tr>
			</table>
			</div>
		</div>
		<div class="titleArea" style="width: 800px">
			<h3>추가정보
				<span class="desc">(선택)</span>
			</h3>
		</div>
		<div>
			<table>
			<tr>
				<th scope="row">
					<li class="notrequired gender">성별
				</th>
                <td>
                <input id="is_sex0" name="is_sex" value="M" type="radio" autocomplete="off">
                	<label for="is_sex0">남자</label>
				<input id="is_sex1" name="is_sex" value="F" type="radio" autocomplete="off">
					<label for="is_sex1">여자</label>
				</td>
            </tr>
            <tr>
				<th scope="row">
					<li class="notrequired birth">생년월일
				</th>
                <td class="formGroup date">
                <input id="birth_year" name="birth_year" class="inputTypeText" maxlength="4" type="text"> 년
                <input id="birth_month" name="birth_month" class="inputTypeText" maxlength="2" type="text"> 월
                <input id="birth_day" name="birth_day" class="inputTypeText" maxlength="2" type="text"> 일<br>
                <span class="gFlow ">
                	<input id="is_solar_calendar0" name="is_solar_calendar" value="T" type="radio" checked="checked" autocomplete="off">
                		<label for="is_solar_calendar0">양력</label>
					<input id="is_solar_calendar1" name="is_solar_calendar" value="F" type="radio" autocomplete="off">
						<label for="is_solar_calendar1">음력</label>
				</span>
				</td>
            </tr>
			</table>
		</div>
	</div>
	<div class="gBottom">
        <a href="#none" class="btn_white" onclick="history.go(-1); return false;">취소</a>
        <a href="#none" class="btn_black" onclick="memberJoinAction()">가입하기</a>
    </div>
</body>
</html>