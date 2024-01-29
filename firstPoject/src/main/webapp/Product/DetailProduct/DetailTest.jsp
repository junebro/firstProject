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
		
	
	
    <title>상품 상세페이지</title>
    <style>
	
        body{
			margin: 10px;	
			font-size: 14px;
		}

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

		.div_btn{
			text-align: right;
		}
		
		button {
			font-size: 20px;
		}

		.btn_buy {
			padding: 21px 100px;
            background-color: #E97373;
            color: #ffffff;
			border: none;
		}
		
		.btn_Basket {
			padding: 20px 30px;
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
		
		
		.underline {
			border-bottom: 1px solid rgba(128, 128, 128, 0.5); /* 투명도를 포함한 회색 선 */
			margin-top: 10px; /* 선 위의 간격 조절 */
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
		
		.items input[type="radio"]:checked + label img {
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
		.fonttest{
			font-family: 'Noto Serif KR', cursive;
			font-size: 20px;
		}
		.font_color{
			color : red;
		}
		.font_pro{
			font-weight: bold;
		}
		
		.price {
			font-family: 'Noto Serif KR', cursive;
			font-size: 30px
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
			position:sticky;
			top:10px;
		
			text-align: center;
			height:80px;

            padding: 1em;
		}
		
		.tab_box ul {
			margin-top: 40px;	
		}
		
		.tab_box li {
			margin:8%; /* 사이 간격 */
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
				<img class="big-image" src="https://image.nbkorea.com/NBRB_Product/20240123/NB20240123151041974001.jpg" alt="">
			</div>
			<div class="text-container">
				<h1 class="font-top">W480KW5 (Uni, 4E)</h1>
				<div class="marketing" id="iconOpt">
					<img src="https://image.nbkorea.com/NBRB_Icon/NB20180727200053137001.png" alt="270130">
					<img src="https://image.nbkorea.com/NBRB_Icon/NB20180727200034090001.png" alt="270130">
				</div>
				
				<br>
				
				<div class = "container">
					<div class="a">
						<span class="star crema-hide"><span style="width:96.0%"></span></span>
						<em class="num"><span >평점</span>/5</em>
						<a>(0)</a>
					</div>
					<div class="a"> 
						<a><img class="ht-image" id="ht-image" src="./../../Image/bht.png" onclick="changeImage()" /></span></a> 
					</div>
				</div>
				<br>
				<div>
					<span class="price">99,000원</span>
					<br>
					<em class="">적립 5,940 (6%)</em>						
				</div>
				
				<div class="underline"></div>
				<div class="pr_limit">
					<p class="fonttest">해당 상품은 <span class="font_pro">ID</span>당 색상별<br/>최대 <span class="font_color">5</span>pcs까지 구매가능합니다.</p>
				</div>
				<div class="underline"></div>
				
				<div class="color">
					<br>
					<ul class="items">

						<li>								
							<input type="radio" id="colCode_NBPFES152W10" name="pr_color" value="10" data-info="(10)White" data-price="99000.00" data-norprice="99000.00" data-style-code="NBPFES152W" data-disp-name="W480KW5 (Uni, 4E)" checked="checked" />
							<label for="colCode_NBPFES152W10" title="(10)White"><img src="https://image.nbkorea.com/NBRB_Product/20240123/NB20240123151041974001.jpg" alt="(10)White" /></label>
						</li>						

						<li>								
							<input type="radio" id="colCode_NBPFES152Z10" name="pr_color" value="10" data-info="(10)White" data-price="99000.00" data-norprice="99000.00" data-style-code="NBPFES152Z" data-disp-name="W480RG5 (Uni, 4E)" />
							<label for="colCode_NBPFES152Z10" title="(10)White"><img src="https://image.nbkorea.com/NBRB_Product/20240109/NB20240109142129747001.jpg" alt="(10)White" /></label>
						</li>						

						<li>								
							<input type="radio" id="colCode_NBPFES152G15" name="pr_color" value="10" data-info="(15)Gray" data-price="99000.00" data-norprice="99000.00" data-style-code="NBPFES152G" data-disp-name="W480KR5 (Uni, 4E)"  />
							<label for="colCode_NBPFES152G15" title="(15)Gray"><img src="https://image.nbkorea.com/NBRB_Product/20240108/NB20240108103431052001.jpg" alt="(15)Gray" /></label>
						</li>						

						<li>								
							<input type="radio" id="colCode_NBPFES152B19" name="pr_color" value="10" data-info="(19)Black" data-price="99000.00" data-norprice="99000.00" data-style-code="NBPFES152B" data-disp-name="W480KB5 (Uni, 4E)" />
							<label for="colCode_NBPFES152B19" title="(19)Black"><img src="https://image.nbkorea.com/NBRB_Product/20231117/NB20231117165149911001.jpg" alt="(19)Black" /></label>
						</li>						

						<li>								
							<input type="radio" id="colCode_NBPFES152A35" name="pr_color" value="10" data-info="(35)Beige" data-price="99000.00" data-norprice="99000.00" data-style-code="NBPFES152A" data-disp-name="W480KO5 (Uni, 4E)"  />
							<label for="colCode_NBPFES152A35" title="(35)Beige"><img src="https://image.nbkorea.com/NBRB_Product/20240108/NB20240108104823860001.jpg" alt="(35)Beige" /></label>
						</li>						

					</ul>
				</div>
				
				<br>
				<br>
				
				<div id="sel">
					<div class="selectbox">
						<label for="ex_select">색상 선택</label>
						<select id="ex_select">
							<option select>색상</option>
							<option>(16)L/Gray</option>
							<option>(20)Red</option>
							<option>(50)Blue</option>
							<option>(91)Sliver</option>
						</select>
					</div>
					
					<br>
					<br>
					
					<div class="selectbox">
						<label for="ex_select">사이즈 선택</label>
						<select id="ex_select">
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
				<br>
				<br>
				<br>
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
					const selectedImageSrc = selectedRadio.nextElementSibling.querySelector('img').src;
					bigImage.src = selectedImageSrc;
				}
			});


			// SELECT BOX
			$(document).ready(function(){

				var selectTarget = $('.selectbox select');

				selectTarget.on('blur', function(){
					$(this).parent().removeClass('focus');
				});

				selectTarget.change(function(){
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
								<li class="active">
									<a id="text-to-change" href="#pr_details" data-gtag-idx="fo_detail_3" data-gtag-label="상품정보">상품정보</a></li>
								<li><a href="#pr_review"  data-gtag-idx="fo_detail_3" data-gtag-label="상품리뷰">상품리뷰 (102)</a></li>
								<li><a href="#pr_inquiry" data-gtag-idx="fo_detail_3" data-gtag-label="상품문의">상품문의 (0)</a></li>
							</ul>
							<hr>
					</div>
			
					<div>testtest</div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					
					<!-- #pr_inquiry 상품문의 없을 때-->
					<div id="pr_inquiry" class="section" style="min-height: 850px;">
					<br><br><br><br><br>
						<h3 class="sec_tit">상품문의</h3>
						<div class="inq_none">
							<strong>상품 관련 <span>궁금한 점</span>이 있으신가요?</strong>
							<ul>
								<li>상품에 대한 문의를 남겨 주시면 회원 정보에 등록된 메일 주소로 답변이 발송됩니다.</li>
								<li>주문/배송/반품 등 일반 문의는 1:1 문의를 이용해 주시기 바랍니다.</li>
								<li>상품에 대한 허위 정보, 광고성 글은 사전 통보 없이 임의로 삭제될 수 있습니다.</li>
							</ul>
							<div class="btn_area center wid140">
								<a href="/support/searchFaqList.action" class="btn_ty_gface2 sm">자주 묻는 질문 찾기 </a>
								<a href="/my/qna/searchQuestionList.action" class="btn_ty_gface2 sm">1:1 문의하기</a>
							</div>
						</div>
						<div class="btn_area">
							<a href="javascript:;" class="btn_ty_gface md" id="btnProdQna">문의하기</a>				
						</div>
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