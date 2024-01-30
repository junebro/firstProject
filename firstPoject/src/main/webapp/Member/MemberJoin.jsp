<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

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
.contents h2{ /* 회원가입 */
	font-size: 40px;
	margin-bottom: 30px;
	margin-top: 100px;
}
.section li{ /* 페이지 진행과정 */
	font-size: 15px;
	color: #BDBDBD;
	display : inline;
	padding: 5px;
}
.section .selected{ /* 현재 페이지 */
	color: black;
}
.titleArea{ /* 기본정보, 추가정보 */
	margin: auto;
}
.titleArea h3{ /* 기본정보 */
	text-align : left;
	margin-top: 30px;
}
.titleArea li{ /* 필수입력사항 */
	text-align : right;
	color: #A6A6A6;
}
.required::marker { /* 리스트 마커 색상 설정 */
    color: red; 
}
table{
	width : 800px;
	margin-left:auto;
	margin-right:auto;
	border-left: none;
	border-right: none;
	border-top: 1px solid rgba(128, 128, 128, 0.5);
}
tr{ /* 행 */
    border-bottom: 1px solid rgba(128, 128, 128, 0.5); /* 투명도를 포함한 회색 선 */
    margin-top: 10px; /* 선 위의 간격 조절 */
    
}
th{ /* 1열 */
	padding: 15px;
	margin: auto;
	background-color: #F6F6F6;
	width: 200px;
	text-align : left;
}
td{ /* 2열 */
	text-align: left;
	padding: 15px;
	margin: auto;
}
table li, .txtInfo{ /* 1열, 아이디/비번 부가설명 */
	color: #5D5D5D;
}
table .notrequired{ /* 추가정보 1열 */
	text-align: left;
	list-style: none;
}
table .inputTypeText{ /* 2열 입력칸 */
	border: 1px groove #BDBDBD;
	width: 400px;
	padding: 10px;
}
#mobile1, #mobile2, #mobile3{ /* 휴대전화 입력칸 */
	border: 1px groove #BDBDBD;
	width: 30%;
	height: 40px;
}
.ec-address li{ /* 주소칸 */
	list-style: none;
	margin-left: -30px;
	margin-top: 5px;
}
#sample6_postcode, #sample6_address, #sample6_extraAddress{ /* 주소 입력칸 */
	background-color: #F6F6F6;
	border: 1px solid #BDBDBD;
}
#postBtn{ /* 주소검색 버튼 */
	width: 87px;
	height: 43px;
}
#sample6_address{ /* 기본주소 칸 */
	width: 500px;
}
#sample6_detailAddress, #sample6_extraAddress{ /* 나머지주소, 참고항목 */
	width: 248px;
	display : inline;
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
	padding: 20px 50px;
	background-color: #FFFFFF;
	color: #000000;
	border: 1px groove #BDBDBD;
	width: 400px;
	text-decoration: none;
}
.btn_black {
	padding: 20px 50px;
	background-color: #000000;
	color: #ffffff;
	border: 1px groove #BDBDBD;
	text-decoration: none;
}
.desc{ /* (선택) */
	font-size: 15px;
	color: #BDBDBD;
}
#is_sex0, #is_sex1{ /* 성별 라디오 */
	margin-left: 10px;
}
.gBottom{ /* 하단 버튼 */
	margin-top: 100px;
	margin-bottom: 100px;
}
</style>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#birth').datepicker({dateFormat:"yy/mm/dd"});
	});
	
		function validCheck(){/* form validation check */
  			var id = $('#id').val();  			
  			
  			if(id.length < 4 || id.length > 10){
  				alert('아이디는 4자리 이상 10자리 이하로 입력해 주세요.');
  				$('#id').focus();
  				return false ; /* false이면 이벤트 전파 방지 */
  			}
  			
  			var name = $('#name').val();  			
  			if(name.length < 3 || name.length > 15){
  				alert('이름은 3자리 이상 15자리 이하로 입력해 주세요.');  				
  				$('#name').focus();
  				return false ;
  			}
  			
  			var password = $('#password').val();  			
  			if(password.length < 5 || password.length > 12){
  				alert('비밀 번호는 5자리 이상 12자리 이하로 입력해 주세요.');
  				$('#password').focus();
  				return false ;
  			}    
  			
  			var regex = /^[a-z]\S{4,11}$/; /* 정규 표현식 */
  			var result = regex.test(password) ;

  			if(result == false){
  				alert('비밀 번호의 첫글자는 반드시 소문자이어야 합니다.');  				
  				return false ;
  			}
  			
  			if(password.indexOf('@') <= 0 && password.indexOf('#') <= 0 && password.indexOf('$') <= 0){
  				alert('특수 문자 @#% 중에 최소 1개가 포함이 되어야 합니다.');  				
  				return false ;
  			}
  			
			var genderList = $('input[name="gender"]:checked') ;
  			if(genderList.length == 0){
  				alert('성별은 반드시 선택이 되어야 합니다.');
  				return false ; 
  			}
  			
			var marriageList = $('input[name="marriage"]:checked') ;
  			if(marriageList.length == 0){
  				alert('결혼 여부는 반드시 선택이 되어야 합니다.');
  				return false ; 
  			}  			
 			
  			/* jqueryUI 플러그인 date picker */
  			var birth = $('#birth').val();
  			var regex = /^\d{4}\/[01]\d{1}\/[0123]\d{1}$/ ;
  			var result = regex.test(birth);
  			
  			if(result == false){
  				alert('생일은 반드시 yyyy/mm/dd 형식으로 입력해 주세요.');  				
  				return false ;
  			}   
  			
			var hobbyList = $('input[name="hobby"]:checked') ;
			
			if(hobbyList.length < 2){ 
				alert('취미는 최소 2개 이상 선택해 주셔야 합니다.');  				
  				return false ;
			}
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
	                			<input id="sample6_postcode" name="postcode1" placeholder="우편번호" class="inputTypeText" type="text" readonly="readonly" onclick="sample6_execDaumPostcode()">
	                			<button id="postBtn" class="btnBasic" type="button" onclick= "sample6_execDaumPostcode()" style="cursor: pointer">주소검색</button>
	            			</li>
	            			<li id="join_baseAddr_wrap">
	                			<input id="sample6_address" name="addr1" placeholder="기본주소" class="inputTypeText" type="text" readonly="readonly" onclick="sample6_execDaumPostcode()">
	           				</li>
	           				<li id="join_detailAddr_wrap">
	               				<input id="sample6_detailAddress" name="addr2" placeholder="나머지 주소(선택 입력 가능)" class="inputTypeText" type="text">
	               				<input type="text" id="sample6_extraAddress" placeholder="참고항목" class="inputTypeText" type="text" readonly="readonly">
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
	                <input type="text" class="inputTypeText" id="birth" name="birth">
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