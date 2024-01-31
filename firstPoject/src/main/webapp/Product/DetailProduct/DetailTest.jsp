<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<%@ include file="./../../common/common.jsp"%>

<!-- font-family: 'Cute', sans-serif; -->
<link
	href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap"
	rel="stylesheet">

<!--  font-family: 'Noto Serif KR', cursive; -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

<!-- 페이징 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<title>상품 상세페이지</title>
<style>
header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 1em;
}

.product_top {
	max-width: 1050px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	display: flex;
	flex-direction: row; /* 이미지와 텍스트를 가로로 나열 */
}

.text-container {
	margin-left: 50px;
	flex: 1; /* 텍스트 컨테이너가 남은 공간을 모두 차지하도록 설정 */
}

/* 버튼 */
.div_btn {
	text-align: right;
}


.btn_buy {
	padding: 16px 80px;
	background-color: #E97373;
	color: #ffffff;
	border: none;
}

.btn_Basket {
	padding: 15px 23px;
}

/* 메인 이미지*/
.marketing {
	display: flex;
}
/* 이미지 간격 조절 */
.marketing img {
	margin-right: 2px;
}

.container {
	display: flex;
	justify-content: space-between;
}

.items {
	list-style: none;
	padding: 0;
	margin: 0;
	display: flex;
	overflow-x: auto; /* 가로 스크롤을 허용하여 넘치는 요소들을 볼 수 있도록 설정 */
	justify-content: flex-start; /* 왼쪽으로 정렬 */
}

.items li {
	margin-right: 10px; /* 각 이미지 사이의 간격 조절 */
}

.items img {
	width: 80px; /* 이미지의 가로 크기 조절 */
	height: auto; /* 이미지의 세로 크기 자동 조절 */
	border: 1px solid #ddd; /* 이미지 주변에 테두리 설정 (선택사항) */
}

.items input[type="radio"] {
	display: none; /* 실제 radio 버튼을 감춤 */
}

.items input[type="radio"]:checked+label img {
	border: 2px solid black; /* 선택된 이미지에 테두리 추가 (선택사항) */
}

.big-image {
	max-width: 500px; /* 이미지의 최대 너비 조절 */
	height: auto;
}

.big-image-container {
	margin-top: 20px;
	display: flex;
	justify-content: center;
	width: 500px; /* big-image-container의 너비를 40px로 설정 */
	height: 500px; /* big-image-container의 높이를 400px로 설정 */
}

.ht-image {
	width: 20px;
	height: 20px;
}

#sel {
	text-align: right;
}

.font-top {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 30px;
}

.fonttest {
	font-family: 'Noto Serif KR', cursive;
	font-size: 20px;
}

.font_color {
	color: red;
}

.font_pro {
	font-weight: bold;
}

.price {
	font-family: 'Noto Serif KR', cursive;
	font-size: 30px
}

#sel {
	padding-right:20px;
	padding-top:10px;
	padding-bottom:10px;
}

.card_banner {
	padding-top:1%;
}

/* 하단 */
.product_bottom {
	max-width: 1050px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
}

.tab_box {
	z-index: 999;
	position: sticky;
	top: 0px;
	text-align: center;
	height: 72px;
	padding: 1em;
	background-color: #ffffff;
}

.tab_box ul {
	margin-top: 1px;
}

.tab_box li {
	margin: 8%; /* 사이 간격 */
	text-align: center;
	display: inline;
	font-family: 'Noto Serif KR', cursive;
}

.tab_box li a {
	font-size: 25px;
	text-decoration: none;
	color: black;
}

a {
	font-weight: normal;
	text-decoration: none;
	color: black;
}

a.active {
	font-weight: bold; /* 클릭 시 글자 굵기 */
}

/* 상품 문의 */
.sec_tit {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 30px;
}

.inq_none {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
	font-size: 20px;
	color: #2C2C2C;
}

.inq_none ul {
	text-align: left;
	font-size: 15px;
	padding-left: 120px;
	color: #A2A2A1;
}

/* CSS Grid 설정 */
.grid-container {
	display: grid;
	grid-template-columns: 140px 740px 140px; /* 각 열의 너비를 지정 */
	grid-gap: 20px; /* 열과 행 사이의 간격 */
}

.inq_img_q img {
	width: 250px;
	height: 180px;
}

/* 버튼 */
.inq_a_btn {
	background-color: #E3E3E2;
	font-size: 20px;
	padding: 13px;
	margin-right: 10px;
	color: #2C2C2C;
}

/* 상품 리뷰 */
.view_tit {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 30px;
}

.view_hd_line {
	border: 1px solid black;
}

.view_line {
	border-top: 1px solid rgba(128, 128, 128, 0.3); /* 투명도를 포함한 회색 선 */
}

#pr_review {
	margin: 5%;
}


.view_hd_top {
	margin: 5%;
	height: 130px;
	display: flex;
}

.view_right, .view_left {
	flex: 1;
}


.view_left_top {
	padding-left: 13%;
	padding-top: 1px;
	display: flex;
}

.view_left_bottom {
	color: #7D7D7D;
	padding-top: 15px;
	padding-left: 15px;
	font-family: 'Noto Sans KR', sans-serif;
}

.view_left_star{
	padding-top: 8px;
	padding-right: 15px;
}

.view_right {
	padding-left: 2%;

}

.view_left_grade {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 60px;
}

.view_center {
	border-right: 1px solid rgba(128, 128, 128, 0.3); /* 투명도를 포함한 회색 선 */
}

.font_pro_view_left_bottom {
	color: #000000;
}

/* 게이지 바*/
.progress-bar {
	background-color: #E3E3E2;
	width: 200px;
	height: 13px;
	border: 1px solid #ccc;
	position: relative;
	border-radius: 10px;
	overflow: hidden;
	
}

.progress {
	height: 100%;
	background-color: #2B2B2B;
	border-radius: inherit;
}

.percentage {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: #000;
	
}

.progress_td {
	font-family:'Noto Sans KR', sans-serif;
	text-align: right;
	font-size:15px;
}


/**/

.view_Board {
	margin-top: 3%;
	margin-bottom: 3%;
	margin-left: 1px;
	height: 250px;
	display: flex;
}


.view_Board_left {
	width: 80%;
	
}

.border_top {
	justify-content: space-between; /* a는 왼쪽, b는 오른쪽으로 배치 */
	display: flex;
}

.view_star {
	font-weight: bold;
	font-family:'Noto Sans KR', sans-serif;
	padding-right: 10%;
}


.border_date {
	padding-right: 5%;
	font-family: 'Noto Sans KR', sans-serif;
	color: #B0AFAF;
	font-size: 13px;
}

.inq_img img {
	width:150px;
	height:150px;
	border-radius: 10%;
}

.border_main{
	color: #595959;
	font-size: 13px;
	font-family: 'Noto Sans KR', sans-serif;
}

.Board_member {
	padding-left: 10%;
	align-text: center;
	color: #595959;
	font-size: 13px;
	font-family: 'Noto Sans KR', sans-serif;
}

.view_Board_right{
	width: 20%;
	margin-right: 1px;
}

.Board_member_detail {
	padding-top: 5%;
}

.view_sel {
	width:100px;
	border-radius: 4%;
	border: 1px solid rgba(128, 128, 128, 0.3);
}

.view_sel label {
	font-family: "Font Awesome 5 Free"; 
	padding: .5em .5em;
	font-weight:900; 
	color: #000000;
}

.all_star {
	width:280px; 
	font-family: "Font Awesome 5 Free"; 
	font-weight:900; 
}

.all_star option{
	font-family: "Font Awesome 5 Free"; 
	font-weight:900;
}

.selectbox_star {
	font-family: "Font Awesome 5 Free"; 
	font-weight:900;
	width: 170px;
	height: 43px;
	padding-top: 3px;
}

.view_page {
	padding-top:2%;
	padding-left:35%;
	text-align: center;
}

.height {
	padding-top:30%;
}

</style>
</head>
<body>

	<script>
		// 즐겨찾기 이미지 변경
		function changeImage() {

			var chk = document.getElementById("ht-image").src;

			if (chk.endsWith('bht.png')) {
				document.getElementById("ht-image").src = "./../../Image/ht.png";
			} else {
				document.getElementById("ht-image").src = "./../../Image/bht.png";
			}
			// 첫 번째 이미지의 src 값을 변경합니다.
		}
	</script>

	<header>
		<h1>상품 상세페이지</h1>
	</header>
<body>
	<div class="product_top">
		<div class="big-image-container">
			<img class="big-image"
				src="https://image.nbkorea.com/NBRB_Product/20240123/NB20240123151041974001.jpg"
				alt="">
		</div>
		<div class="text-container">
			<h1 class="font-top">W480KW5 (Uni, 4E)</h1>
			<div class="marketing" id="iconOpt">
				<img
					src="https://image.nbkorea.com/NBRB_Icon/NB20180727200053137001.png"
					alt="270130"> <img
					src="https://image.nbkorea.com/NBRB_Icon/NB20180727200034090001.png"
					alt="270130">
			</div>
		
			<br>

			<div class="container">
				<div class="a">
					<span class="star crema-hide"><span style="width: 96.0%"></span></span>
					<em class="num"><span>평점</span>/5</em> <a>(0)</a>
				</div>
				<div class="a">
					<a><img class="ht-image" id="ht-image"
						src="./../../Image/bht.png" onclick="changeImage()" /></span></a>
				</div>
			</div>
			<br>
			<div>
				<span id="pro_price" class="price">99,000원</span> <br> <em class="">적립
					5,940 (6%)</em>
			</div>

			<div class="underline"></div>
			
			<div class="pr_limit">
				<p class="fonttest">
					해당 상품은 <span class="font_pro">ID</span>당 색상별<br />최대 <span
						class="font_color">5</span>pcs까지 구매가능합니다.
				</p>
			</div>
			<div class="underline"></div>

			<div class="color">
				<br>
				<ul class="items">

					<li><input type="radio" id="colCode_NBPFES152W10"
						name="pr_color" value="10" data-info="(10)White"
						data-price="99000.00" data-norprice="99000.00"
						data-style-code="NBPFES152W" data-disp-name="W480KW5 (Uni, 4E)"
						checked="checked" /> <label for="colCode_NBPFES152W10"
						title="(10)White"><img
							src="https://image.nbkorea.com/NBRB_Product/20240123/NB20240123151041974001.jpg"
							alt="(10)White" /></label></li>

					<li><input type="radio" id="colCode_NBPFES152Z10"
						name="pr_color" value="10" data-info="(10)White"
						data-price="99000.00" data-norprice="99000.00"
						data-style-code="NBPFES152Z" data-disp-name="W480RG5 (Uni, 4E)" />
						<label for="colCode_NBPFES152Z10" title="(10)White"><img
							src="https://image.nbkorea.com/NBRB_Product/20240109/NB20240109142129747001.jpg"
							alt="(10)White" /></label></li>

					<li><input type="radio" id="colCode_NBPFES152G15"
						name="pr_color" value="10" data-info="(15)Gray"
						data-price="99000.00" data-norprice="99000.00"
						data-style-code="NBPFES152G" data-disp-name="W480KR5 (Uni, 4E)" />
						<label for="colCode_NBPFES152G15" title="(15)Gray"><img
							src="https://image.nbkorea.com/NBRB_Product/20240108/NB20240108103431052001.jpg"
							alt="(15)Gray" /></label></li>

					<li><input type="radio" id="colCode_NBPFES152B19"
						name="pr_color" value="10" data-info="(19)Black"
						data-price="99000.00" data-norprice="99000.00"
						data-style-code="NBPFES152B" data-disp-name="W480KB5 (Uni, 4E)" />
						<label for="colCode_NBPFES152B19" title="(19)Black"><img
							src="https://image.nbkorea.com/NBRB_Product/20231117/NB20231117165149911001.jpg"
							alt="(19)Black" /></label></li>

					<li><input type="radio" id="colCode_NBPFES152A35"
						name="pr_color" value="10" data-info="(35)Beige"
						data-price="99000.00" data-norprice="99000.00"
						data-style-code="NBPFES152A" data-disp-name="W480KO5 (Uni, 4E)" />
						<label for="colCode_NBPFES152A35" title="(35)Beige"><img
							src="https://image.nbkorea.com/NBRB_Product/20240108/NB20240108104823860001.jpg"
							alt="(35)Beige" /></label>
					</li>
				</ul>
			</div>

			<div id="sel">
				<div class="selectbox" >
					<label>색상 선택</label> 
					<select id="sel_color">
						<option select>색상</option>
						<option>(16)L/Gray</option>
						<option>(20)Red</option>
						<option>(50)Blue</option>
						<option>(91)Sliver</option>
					</select>
				</div>
				<div class="selectbox">
					<label>사이즈 선택</label> 
					<select id="sel_size" onchange=getSelectedValue()>
						<option select>사이즈</option>
						<option>250</option>
						<option>255</option>
						<option>260</option>
						<option>265</option>
						<option>270</option>
						<option>275</option>
						<option>280</option>
						<option>285</option>
						<option>290</option>
					</select>
				</div>
			</div>
			<div class="total_buy_page">
				<div class="underline"></div>
				
				<div id="buy_name">1</div>
				<div id="buy_count">
					<div>
						<input type='button' onclick='count("plus")' value='+'/>
					</div>
					<div id='cnt_total'>0</div>
					<div>
						<input type='button' onclick='count("minus")' value='-'/>
					</div>
				</div>
				<div id="buy_price">3</div>
			</div>
			<div>
				<div class="card_banner">
					<a href="https://www.nbkorea.com/etc/collection.action?collectionIdx=5365" data-gtag-idx="fo_detail_2" data-gtag-label="Wearable tech, 1906R">
					<img src="https://image.nbkorea.com/NBRB_Banner/20240112/NB20240112094037484001.jpg" alt="Wearable tech, 1906R"/>	
				</div>
				<div class="card_banner">
					<a href="https://www.nbkorea.com/collection/HERITAGEDROP1.action" data-gtag-idx="fo_detail_2" data-gtag-label="New Balance HERITAGE DROP1">
					<img src="https://image.nbkorea.com/NBRB_Banner/20240119/NB20240119125937348001.jpg" alt="New Balance HERITAGE DROP1"/>
				</div>
				<div class="card_banner">
					<a href="https://www.nbkorea.com/etc/collection.action?collectionIdx=5362" data-gtag-idx="fo_detail_2" data-gtag-label="The MADE in USA, 990v6 restock">
					<img src="https://image.nbkorea.com/NBRB_Banner/20240129/NB20240129142525506001.jpg" alt="The MADE in USA, 990v6 restock"/>
				</div>
			</div>
			<br> <br> <br>
			<div class="div_btn">
				<button class="btn_white btn_Basket">장바구니</button>
				<button class="btn_buy">구 매</button>
			</div>
		</div>
	</div>

	<script>
		// 이미지 클릭시 큰 이미지로 출력
		const itemsContainer = document.querySelector('.items');
		const bigImage = document.querySelector('.big-image');

		itemsContainer.addEventListener('change', function(event) {
			const selectedRadio = event.target.closest('input[type="radio"]');
			if (selectedRadio) {
				const selectedImageSrc = selectedRadio.nextElementSibling
						.querySelector('img').src;
				bigImage.src = selectedImageSrc;
			}
		});
		
		// 사이즈 선택시 구매창을 뿌려준다.
		function getSelectedValue() {

			var id_sz = document.getElementById('sel_color');
			var id_cr = document.getElementById('sel_size');
			var id_price = document.getElementById('pro_price');
			
			var cr = id_cr.value;
	        var sz = id_sz.value;
	        var price = id_price.innerHTML;
			
			var buy_name = document.getElementById('buy_name');
			var buy_price = document.getElementById('buy_price');

	        buy_name.innerHTML = sz + "/" + cr;
	        buy_price.innerHTML = price;
		}
		
		function count(type)  {
			
			var cnt = document.getElementById('cnt_total');
			var num = cnt.innerText;
			  
			if(type === 'plus') {
				num = parseInt(num) + 1;
			}else if(type === 'minus')  {
				num = parseInt(num) - 1;
			}
		  
			cnt.innerText = num;
		}

		// SELECT BOX
		$(document).ready(function() {

			var selectTarget = $('.selectbox select');

			selectTarget.on('blur', function() {
				$(this).parent().removeClass('focus');
			});

			selectTarget.change(function() {
				var select_name = $(this).children('option:selected').text();
				$(this).siblings('label').text(select_name);
			});
		});
	</script>


	<div class="product_bottom">
		<div class="sticky_wrap" style="top: 0px;">
			<div class="inner">
				<div class="tab_box">
					<ul>
						<li class="active"><a id="text-to-change" href="#pr_details"
							data-gtag-idx="fo_detail_3" data-gtag-label="상품정보">상품정보</a></li>
						<li><a href="#pr_main_review" data-gtag-idx="fo_detail_3"
							data-gtag-label="상품리뷰">상품리뷰 (102)</a></li>
						<li><a href="#pr_inquiry" data-gtag-idx="fo_detail_3"
							data-gtag-label="상품문의">상품문의 (0)</a></li>
					</ul>
					<hr>
				</div>

				<div>
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br> <br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br> <br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

				<div id="pr_main_review" class="section Re_review">
					<br>
					<br>
					<br>
					<h3 class="sec_tit">상품리뷰</h3>
					<hr>
					<div class="review_sec01">
						<div class="pr_infoReview">
							<div class="box">
								<p class="lh_28">
									구매확정 후 <span class="col_red"> <em class="font_pro">30</em>일
										이내에
									</span> 상품평 작성 시,&nbsp;<span class="col_red">최대 <em
										class="font_pro">2,000</em> 마일리지의 혜택을 드립니다.
									</span> <br> 작성하신 상품평에 대한 마일리지 지급은 작성후 <em class="font_pro">15</em>일
									이내로 적립됩니다.
								</p>
							</div>
							<div class="border_box">
								<p class="review_mile_guide dp_i">
									<span>일반리뷰 <em class="font_pro">500 </em>마일리지
									</span> <span>포토리뷰 <em class="font_pro">1,000 </em>마일리지
									</span> <span>스타일리뷰 <em class="font_pro col_red">2,000 </em>마일리지
									</span>
								</p>
								<!-- 20191011 추가 :: S -->
								<div class="hoverIcon">
									<p>
										<img
											src="https://image.nbkorea.com/NBRB_PC/product/review/hoverIcon.png"
											alt="" />
									<div class="off">
										<ul>
											<li>
												<p>[스타일 리뷰 기준]</p> <!-- 20200511 수정 :: S -->
												<ol>
													<li>1) 구매하신 상품을 착용한 전신 컷 (얼굴 제외 가능, 어깨부터 발끝까지 보이게끔 촬영한
														사진)</li>
													<li>2) 세트나 한 쌍의 상품인 경우, 양 쪽이 모두 보이도록 촬영한 사진 (신발, 양말 등)</li>
													<li>3) 스타일링을 보여줄 수 있는 사진 (실내복 착용이나 신발 없는 전신 사진은 포토리뷰로
														간주됩니다.)</li>
													<li>4) 상품 형태와 컬러 식별이 가능한 사진</li>
													<li>5) 10자 이상의 상품에 대한 후기</li>
												</ol>
											</li>
											<li>
												<p>[포토 리뷰 기준]</p>
												<ol>
													<li>1) 구매하신 상품이 모두 나오게 촬영한 사진</li>
													<li>2) 포장을 제거하고 상품의 전체가 보이게 촬영한 사진</li>
													<li>3) 세트나 한 쌍의 상품인 경우, 양 쪽이 모두 보이도록 촬영한 사진 (신발, 양말 등)</li>
													<li>4) 상품 형태와 컬러 식별이 가능한 사진</li>
													<li>5) 10자 이상의 상품에 대한 후기</li>
												</ol>
											</li>
											<!-- 20200511 수정 :: E -->
										</ul>
									</div>
								</div>
								<!-- E :: 20191011 추가 -->
							</div>
						</div>
					</div>

					<div id="pr_review" class="section">
						<br>
						<br>
						<br>
						<h3 class="view_tit">REVIEW(114)</h3>
						<hr class="view_hd_line">
						
						<div class="view_hd_top">
							<div class="view_left">
								<div class="view_left_top">
									<div class="view_left_star">
										<svg xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" width="50"
											height="50" viewBox="0 0 20 20"
											class="crema_product_reviews_score_star_wrapper__star "
											style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
											<defs>
												<path id="star-full"
											d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z" />
											</defs>
											<use xlink:href="#star-full" />
										</svg>
									</div>
									<div class="view_left_grade">
										5.0
									</div>
								</div>
								<div class="view_left_bottom">
									<span class="font_pro font_pro_view_left_bottom">99%</span>의 구매자가 이 상품을 좋아합니다.
								</div>
							</div>
							<div class="view_center"></div>
							<div class="view_right">
								<table width=330px; align="center">
									<tr>
										<td  class="progress_td">아주 좋아요</td>
										<td>
											<div class="progress-bar">
												<div class="progress" style="width: 80%;"></div>
												<div class="percentage"></div>
											</div>
										</td>
										<td class="progress_td">144</td>
									</tr>
									<tr>
										<td class="progress_td">맘에 들어요</td>
										<td>
											<div class="progress-bar">
												<div class="progress" style="width: 70%;"></div>
												<div class="percentage"></div>
											</div>
										</td>
										<td class="progress_td">2</td>
									</tr>
									<tr>
										<td class="progress_td">보통이에요</td>
										<td>
											<div class="progress-bar">
												<div class="progress" style="width: 60%;"></div>
												<div class="percentage"></div>
											</div>
										</td>
										<td class="progress_td">123</td>
									</tr>
									<tr>
										<td class="progress_td">그냥 그래요</td>
										<td>
											<div class="progress-bar">
												<div class="progress" style="width: 50%;"></div>
												<div class="percentage"></div>
											</div>
										</td>
										<td class="progress_td">22</td>
									</tr>
									<tr>
										<td class="progress_td">별로에요</td>
										<td>
											<div class="progress-bar">
												<div class="progress" style="width: 30%;"></div>
												<div class="percentage"></div>
											</div>
										</td>
										<td class="progress_td">1</td>
									</tr>
								</table>
							</div>
						</div>
						
						<div class="view_line"></div>
						
						<div class="view_hr_bt">
							<br>
							
							<div class="selectbox view_sel">
								<label>색상</label> 
								<select>
									<option select>색상</option>
									<option><a><img src="./../../Image/bht.png"" /></span></a></option>
									<option>(20)Red</option>
									<option>(50)Blue</option>
									<option>(91)Sliver</option>
								</select>
							</div>
							<div class="selectbox selectbox_star view_sel">
							<label>별점</label> 
							<select class="all_star">
								<option selected="selected" >별점</option>
								<option>&#xf005 &#xf005 &#xf005 &#xf005 &#xf005</option>
								<option>&#xf005 &#xf005 &#xf005 &#xf005</option>
								<option>&#xf005 &#xf005 &#xf005</option>
								<option>&#xf005 &#xf005</option>
								<option>&#xf005</option>
							</select>
							</div>
							<div class="selectbox view_sel">
								<label>사이즈</label> 
								<select>
									<option select>사이즈</option>
									<option>250</option>
									<option>255</option>
									<option>260</option>
									<option>265</option>
									<option>270</option>
									<option>275</option>
									<option>280</option>
									<option>285</option>
									<option>290</option>
								</select>
							</div>
							<br><br>
							<div class="view_line"></div>
							
							

				
							<div class="view_Board">
								<div class="view_Board_left">
									<div class="border_top">
										<div id="view_star0" class="view_star"></div>
										<div class="border_date">2024.01.30</div>
									</div>
									<br>
									<div class="border_main">
										가볍고 발볼도 편하고 좋아요<br>
										딸이 맘에 들어해요
									</div>
									<br>
									<div class="inq_img">
										<img src="./../../Image/board.jpg" alt="board">
									</div>
									
								</div>
								
								<div class="view_center"></div>
								<div class="view_Board_right">
									<div class="Board_member">
										<div class="Board_member_detail">전****님의 리뷰입니다.</div>
										<div class="Board_member_detail">발 사이즈 <span class="font_pro">245mm</span></div>
										<div class="Board_member_detail">회원 등급 <span class="font_pro">FAMILY</span></div>
										<div class="Board_member_detail">사이즈 <span class="font_pro">245</span></div>
										<div class="Board_member_detail">컬러 <span class="font_pro">(15)Gray</span></div>
									</div>
								</div>
								
							</div>
				
							<div class="view_line"></div>
							
							
							<div class="view_Board">
								<div class="view_Board_left">
									<div class="border_top">
										<div id="view_star1" class="view_star"></div>
										<div class="border_date">2024.01.30</div>
									</div>
									<br>
									<div class="border_main">
										가볍고 발볼도 편하고 좋아요<br>
										딸이 맘에 들어해요
									</div>
									<br>
									<div class="inq_img">
										<img src="./../../Image/board.jpg" alt="board">
									</div>
									
								</div>
								
								<div class="view_center"></div>
								<div class="view_Board_right">
									<div class="Board_member">
										<div class="Board_member_detail">전****님의 리뷰입니다.</div>
										<div class="Board_member_detail">발 사이즈 <span class="font_pro">245mm</span></div>
										<div class="Board_member_detail">회원 등급 <span class="font_pro">FAMILY</span></div>
										<div class="Board_member_detail">사이즈 <span class="font_pro">245</span></div>
										<div class="Board_member_detail">컬러 <span class="font_pro">(15)Gray</span></div>
									</div>
								</div>
								
							</div>
				
							<div class="view_line"></div>
							
							<div class="view_Board">
								<div class="view_Board_left">
									<div class="border_top">
										<div id="view_star2" class="view_star"></div>
										<div class="border_date">2024.01.30</div>
									</div>
									<br>
									<div class="border_main">
										가볍고 발볼도 편하고 좋아요<br>
										딸이 맘에 들어해요
									</div>
									<br>
									<div class="inq_img">
										<img src="./../../Image/board.jpg" alt="board">
									</div>
									
								</div>
								
								<div class="view_center"></div>
								<div class="view_Board_right">
									<div class="Board_member">
										<div class="Board_member_detail">전****님의 리뷰입니다.</div>
										<div class="Board_member_detail">발 사이즈 <span class="font_pro">245mm</span></div>
										<div class="Board_member_detail">회원 등급 <span class="font_pro">FAMILY</span></div>
										<div class="Board_member_detail">사이즈 <span class="font_pro">245</span></div>
										<div class="Board_member_detail">컬러 <span class="font_pro">(15)Gray</span></div>
									</div>
								</div>
								
							</div>
				
							<div class="view_line"></div>
							
							<div class="view_Board">
								<div class="view_Board_left">
									<div class="border_top">
										<div id="view_star3" class="view_star"></div>
										<div class="border_date">2024.01.30</div>
									</div>
									<br>
									<div class="border_main">
										가볍고 발볼도 편하고 좋아요<br>
										딸이 맘에 들어해요
									</div>
									<br>
									<div class="inq_img">
										<img src="./../../Image/board.jpg" alt="board">
									</div>
									
								</div>
								
								<div class="view_center"></div>
								<div class="view_Board_right">
									<div class="Board_member">
										<div class="Board_member_detail">전****님의 리뷰입니다.</div>
										<div class="Board_member_detail">발 사이즈 <span class="font_pro">245mm</span></div>
										<div class="Board_member_detail">회원 등급 <span class="font_pro">FAMILY</span></div>
										<div class="Board_member_detail">사이즈 <span class="font_pro">245</span></div>
										<div class="Board_member_detail">컬러 <span class="font_pro">(15)Gray</span></div>
									</div>
								</div>
								
							</div>
				
							<div class="view_line"></div>
							
							<div class="view_Board">
								<div class="view_Board_left">
									<div class="border_top">
										<div id="view_star4" class="view_star"></div>
										<div class="border_date">2024.01.30</div>
									</div>
									<br>
									<div class="border_main">
										가볍고 발볼도 편하고 좋아요<br>
										딸이 맘에 들어해요
									</div>
									<br>
									<div class="inq_img">
										<img src="./../../Image/board.jpg" alt="board">
									</div>
									
								</div>
								
								<div class="view_center"></div>
								<div class="view_Board_right">
									<div class="Board_member">
										<div class="Board_member_detail">전****님의 리뷰입니다.</div>
										<div class="Board_member_detail">발 사이즈 <span class="font_pro">245mm</span></div>
										<div class="Board_member_detail">회원 등급 <span class="font_pro">FAMILY</span></div>
										<div class="Board_member_detail">사이즈 <span class="font_pro">245</span></div>
										<div class="Board_member_detail">컬러 <span class="font_pro">(15)Gray</span></div>
									</div>
								</div>
								
							</div>
				
							<div class="view_line"></div>
							
							<div class="view_Board">
								<div class="view_Board_left">
									<div class="border_top">
										<div id="view_star5" class="view_star"></div>
										<div class="border_date">2024.01.30</div>
									</div>
									<br>
									<div class="border_main">
										가볍고 발볼도 편하고 좋아요<br>
										딸이 맘에 들어해요
									</div>
									<br>
									<div class="inq_img">
										<img src="./../../Image/board.jpg" alt="board">
									</div>
									
								</div>
								
								<div class="view_center"></div>
								<div class="view_Board_right">
									<div class="Board_member">
										<div class="Board_member_detail">전****님의 리뷰입니다.</div>
										<div class="Board_member_detail">발 사이즈 <span class="font_pro">245mm</span></div>
										<div class="Board_member_detail">회원 등급 <span class="font_pro">FAMILY</span></div>
										<div class="Board_member_detail">사이즈 <span class="font_pro">245</span></div>
										<div class="Board_member_detail">컬러 <span class="font_pro">(15)Gray</span></div>
									</div>
								</div>
								
							</div>
				
							<div class="view_line"></div>
							<div class="view_page">
								<ul class="pagination">
								  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
								  <li class="page-item"><a class="page-link" href="#">1</a></li>
								  <li class="page-item"><a class="page-link" href="#">2</a></li>
								  <li class="page-item"><a class="page-link" href="#">3</a></li>
								  <li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</div>
						</div>
						<!-- 
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
								<defs>
									<path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"/>
								</defs>
								<use xlink:href="#star-full"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
							    <defs>
							        <path id="a" fill="#E8E8E8" d="M10.003 1.667c.27 0 .539.148.677.442l2.165 4.59 4.84.74c.622.095.87.894.42 1.352l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382c0-9.166 0-13.897.002-14.191z"></path>
							        <path id="c" d="M7.157 6.698l2.165-4.59a.746.746 0 0 1 .688-.441c-.007.294-.01 5.025-.01 14.19L5.673 18.24c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
							    </defs>
							    <use xlink:href="#a"></use>
							    <use xlink:href="#c"></use>
							</svg> -->

					</div>
				</div>

				<div style="display: none"; id="five_star" >
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 15px; height: 15px;">
						<defs>
							<path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"/>
						</defs>
						<use xlink:href="#star-full"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 15px; height: 15px;">
						<defs>
							<path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"/>
						</defs>
						<use xlink:href="#star-full"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 15px; height: 15px;">
						<defs>
							<path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"/>
						</defs>
						<use xlink:href="#star-full"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 15px; height: 15px;">
						<defs>
							<path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"/>
						</defs>
						<use xlink:href="#star-full"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 15px; height: 15px;">
						<defs>
							<path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"/>
						</defs>
						<use xlink:href="#star-full"/>
					</svg>
				</div>
				
				
				<script>
					
					for ( var i = 0; i < 6; i ++ ) {
						// JavaScript 코드
				     	var five_star = document.getElementById('five_star');
				     	var view_star = document.getElementById('view_star'+i);
				
				     	// <div>의 내용을 가져와서 <p> 태그에 넣기
				     	var divContent = five_star.innerHTML;
				     	view_star.innerHTML = divContent + "아주 좋아요";	
					}

			    </script>
				
				<div class="height"></div>

				<!-- #pr_inquiry 상품문의 없을 때-->
				<div id="pr_inquiry" class="section" style="min-height: 850px;">
					<br>
					<br>
					<br>
					
					<h3 class="sec_tit">상품문의</h3>
					<hr>
					<div class="grid-container">
						<div class="grid_btm"></div>
						<div class="grid_btm">
							<div class="inq_none">
								<div class="inq_img_q">
									<img src="./../../Image/QA.png" alt="QA">
								</div>
								<br> <strong>상품 관련 <span>궁금한 점</span>이 있으신가요?
								</strong>
								<ul>
									<li>상품에 대한 문의를 남겨 주시면 회원 정보에 등록된 메일 주소로 답변이 발송됩니다.</li>
									<li>주문/배송/반품 등 일반 문의는 1:1 문의를 이용해 주시기 바랍니다.</li>
									<li>상품에 대한 허위 정보, 광고성 글은 사전 통보 없이 임의로 삭제될 수 있습니다.</li>
								</ul>
								<br>
								<br>
								<div class="">
									<a href="https://www.nbkorea.com/support/searchFaqList.action"
										class="inq_a_btn">자주 묻는 질문 찾기 </a> <a
										href="https://www.nbkorea.com/my/qna/searchQuestionList.action"
										class="inq_a_btn">1:1 문의하기</a>
								</div>
							</div>
						</div>
						<div class="grid_btm"></div>

					</div>

					<br> <br>
					<hr>

				</div>
				<!-- // #pr_inquiry 상품문의 없을 때 -->
			</div>
		</div>
	</div>

	<script>
		// 스크롤 
		let prevScrollPos = window.pageYOffset;

		window.onscroll = function() {
			let currentScrollPos = window.pageYOffset;

			if (prevScrollPos > currentScrollPos) {
				// 스크롤을 올릴 때
				document.getElementById("navbar").style.top = "0";
				document.getElementById("middlebar").style.top = "50%";
			} else {
				// 스크롤을 내릴 때
				document.getElementById("navbar").style.top = "-50px";
				document.getElementById("middlebar").style.top = "0";
			}
			prevScrollPos = currentScrollPos;
		};

		/* 클릭 시 글자크기 조절*/

		var links = document.querySelectorAll('a');

		links.forEach(function(link) {
			link.addEventListener('click', function() {
				links.forEach(function(innerLink) {
					innerLink.classList.remove('active');
				});
				link.classList.add('active');
			});
		});
	</script>

</body>


</html>