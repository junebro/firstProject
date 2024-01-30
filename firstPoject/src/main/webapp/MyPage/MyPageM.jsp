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
</script>
<style type="text/css">
body {
	font-family: 'Noto Sans KR', sans-serif;
}

h1 {
	text-align: center;
}

.Myt {
	width: 100%;
	margin-top: 70px;
	border: 0.5px gray inset;
	height: 230px;
}

.Myp {
	text-align: center;
	width: 20%;
}

.Myp1 {
	width: 40%;
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
</style>
</head>
<body>
	<div class="justify-content-center row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<h1>마이 쇼핑</h1>
			<table class="Myt">
				<tbody>
					<tr>
						<td class="Myp1" style="border-right: 0.5px gray inset">
							<div style="width: 30%; float: left; text-align: center;">
								<img style="height: 50px; width: 50px; margin-left: 40px;"
									src="https://cdn-icons-png.flaticon.com/128/4203/4203951.png">
							</div>
							<div style="width: 70%; float: left; font-size: 16px;">
								안녕하세요. 고객이름 님!<br> 고객님의 회원등급은 일반회원 입니다.
							</div>
						</td>
						<td class="Myp" style="border-right: 0.5px gray inset">
							<div style="width: 30%; float: left;">
								<img style="height: 50px; width: 50px;"
									src="https://cdn-icons-png.flaticon.com/128/4789/4789956.png">
							</div>
							<div style="width: 70%; float: left;">
								100원<br>총 적립금
							</div>
						</td>
						<td class="Myp" style="border-right: 0.5px gray inset">
							<div style="width: 30%; float: left;">
								<img style="height: 50px; width: 50px;"
									src="https://cdn-icons-png.flaticon.com/128/8396/8396551.png">
							</div>
							<div style="width: 70%; float: left;">
								0개<br> 쿠폰
							</div>
						</td>
						<td class="Myp"><div style="width: 30%; float: left;">
								<img style="height: 50px; width: 50px;"
									src="https://cdn-icons-png.flaticon.com/128/65/65998.png">
							</div>
							<div style="width: 70%; float: left;">
								0회<br> 총 주문
							</div></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<div class="justify-content-center row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10 justify-content-center d-flex">
			<div class="bar col-sm-2">
				<div class="spanbar">
					<a href="#">활동 정보</a>
				</div>
				<br> <a href="#" onclick="toggleDiv()">최근 본 상품</a><br> <a
					href="#">좋아요한상품</a><br> <a href="#">나의게시글</a><br>
				<div class="spanbar">
					<a href="#">내 정보</a>
				</div>
				<br> <a href="#">회원정보수정</a><br> <a href="#">로그아웃</a><br>
			</div>
			<div class="col-sm-8" id="mainDiv">
				<p class="maino">나의 주문내역</p>
				<hr class="disborder">
				<br>
				<div class="justify-content-center d-flex">
					<div style="text-align: center; width: 30%;">
					주문 사진
						<img style="width: 150px; height: 150px;"
							src="https://post-phinf.pstatic.net/MjAxOTA4MTNfMjIg/MDAxNTY1NjYwNDE4NjY3.l7xSqzLFBIojMAa8xxfY_OzKucZb4FimEDq2eS2WHkYg.tyeXLu39J6qYdxke7FTEnSdxuKWEf2jM5BRdk5Ronowg.GIF/1565623714.gif?type=w500_q75">
					</div>
					<div style="width: 70%;">주문 내용ㄹ</div>
				</div>
			</div>
			<div class="col-sm-8" id="otherDiv" style="display: none;">
				<p class="maino">리뷰 관리</p>
				<hr class="disborder">
				<br>
				<div class="justify-content-center d-flex">
					<div style="text-align: center; width: 30%;">
						상품 사진
						<img style="width: 150px; height: 150px;"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOcAAADACAMAAADIg4ScAAAAq1BMVEX////+/v79/f36+vr8/Pz7+/vm5ubz8/P39/f5+fn19fXw8PD4+Pj29vbu7u76KCj09PSEhIT00AeNjY3h4ODxwgYjIiJERET++enY2Nj10yz33W799t777bnFxcXNzc2kpKT5553110b44H/yxiz66quUlJScnJz22lu0tLR3dnb+/PT78MX889K8vLxoaGjzy0X0z1pXV1f11372247102345I/3353446tE2Bt6AAAQ+klEQVR4nO3dDXubNhcGYPC3jc1MoEmUZjZNO7u0q5u1zdr//8teSYDRxznSAROS7Z2uznN8FfDt5+ggktQOZnzE0IjsMa/HqhmbRTPW6li2Htrmi40y6oNtt+enoDwt8OnXY1aOAHM6mLDSaRyjw2FdUKEEaUBOc26nudkASKIPxyr7ckZKhVbO7kwoyvZGyApl2r12USepZjc204OcTvkfOfxWh3QLRupztkvTVkJRWj7H8FMXprQLFHLiNetgIkinEdOa1EbqmqTO0gWc/jCtigWjJBJBKwrdmNA5CQo4L2BegLSoXSJt48SYK5NpVeylSIzqjZRSu6YTbUFmmAazF6NJXSLSuhtt6YkaTp/S7D9mlthTnyCDSIVrtw3U40SYRsm6lZjRjXVLW8/RgMKcwzXrVXqFLiw4Te3aJUIDh9IzNT3KNkiYCkW60CMFoO2dMJOkbI8EqUCkfigoDfpg9oQEqECkC712idDgAiaoxAEjY9CouhSYpLTSDWhMqM/SlabQ7/VFCkJdgQYk5gqtWbfSDXRasVmqd6MVFYo4iUynkoxEqK7abQ0N/MyELRa7iDOjnatm3cYkG412K35ntfNRi3gyS8qRaVKWjJcsAaDAEhB2wlW7TcWxpJP/t16zRDCjU5rux+N5nhzYlKVpoSCL8ulxSnknHY3kU86kU/w3yhJJ2vGd1LfNyBK+k4TxG5aIP5NpVol3Y/lkkjwRL3OWJ8fZYsM3L+IZfyL7rTzMDO9FoFOJkyUL6SyHCJMd2S7JxvmR7Vmc7LPDTomSP7cSIk1KmNJZjhKUsSQub5W/yBIeueoUxTtPmEyUHZI8Y9KZFyw/LvbJjp02rGCndJsle8YcTTfwVG3tZGuRZ12zyT6WB98n0+nuqNQrR1bOOk/V2eSZJfEqmZW3irMoS6Go63YmpEV6nPNjxel+zl/cpJqk+2SRF1Xpng78eWax6+wSuJjyqUpnWTRpxeQhsKRIDvzVZfMiUWZl46zzlIU3k19XOwnFyNP8NBqVt+exS1nKjZnalLb5cV4c+ETl4Y/5X0iqbpQf12l+SHebDeNVzZ385XH0ItRZdiDRaeXcVDvQ/JjzJHdxcZzyCZmnTe8x5ycHluwwyUJ17A+7NC9vldmZz0ar04o702rzlBdvsS3i/eE0nZ7413vhFFD+Cq95Ge+TbLOZ8Xm0YluW7PFAbadStFyY7fZ8j+fjykabH+b81Y1l1W63Ra512GZilveyJAzZjocUnnfCnek+5JVf3obhWTo78tdNFHIVffkC8gkrm64wSud4OUtPy/Vxx0PYicpNTqLpJie85wYws3Tyo6V5IedmwmRLH8tGu2fZ9FDEeT45sb1sG1rPOd8TyYmpdsyZ/ILfCDYfx5xX/qy8lQ/ILeJ0xwNN42ovLDk7ObTut8KZpQfGot2B5zkrct4XWX5iRZJtUWhgFK0aZ7U+UJziGDt5uGmcJ3m8LfiJoVHukrpck/O9qlANJ99ahClv62E5xVmmLoL6VFrmeRCP7Jfi6At+juGzlMmzC34WNZ3AqrZxGosDdFEQ2sNwIsOsW7UhlcfMUn1ppK4Xtva6CHNqCyFltQct9Voo6cPam7UOHHeCBiTm2mY+ixKiWiteNxSpXMipVm1L5uVKp9SGSufCcY0GOYHJ2YrZj/ISqF25gNM1OQnM3pS21ICOLSg+RVGnVbXnHmQwn1HpkAJTdKFAsUADk7n1xwmk2buyBZRUuZaTynzeMAGpB+oJNOiB+UzKFlB/5RrOLTQ5X4xpSDWo2ousynU4W8XZiRmYox8orXIDIM6emZavHRaCEitXWSwEWJznhdBFTLeRZsWgaOVCgWpOdL3XjUlD+qU+qL8VnZ3uJoT1oJ6QXioh0KUz0NqJNyFn1faodEuBRK3KVQLdWjPUdgJNqDWzk9IpbVW5UKCK03fqpDI7K11SP1Q9t9g/iAjwZmvESWS2ln29vr4mSN2V6w00gOJcEKr2AiZTvyiuDacfilXuQodaTjROR9W2VWbfmvs3CnR1c31jODEpCKUGenZuCbOzPZPdyFHwOzw6eT/TnMn1zVfLSYVCgSItN/B1ITDOFmly1A1LuK/8Mr7ZqE52fV18sp0wFJyi8LnFCjSgzU5C1YLKyhnIPMXYf9Pq9tv1zQpy+qC0QDUnODvbVy3CNPM8HFQnb0JFADphqS9QpRNtdWgAL/laVy3GDG4KdlMUdZ6xMMpJWn51/TXAnK2hWqBm4QbO2TmlxokpRev59u1rUjs/JYGSZ3J9zXAnBCU7zcJVncTZ2SbN88iEc5N83ShO3oS+FUXxjRfvqXeoUbgBtdm64nQK5eT8eohFD/oUB4pTLhHK8YnqDDsGijr7inNzs4uDDcv5RDwU5UNk5+WBup2uONtWreKsx4228MPnpwdK70S1E1gLtYjTyVTrtoMTgHoCXcOBBhfH6WFCcv1Lp9MFpTi3ltPZbXFne6Y5Ojtt6NJeK8BOpGx7jbPlaBso5JxLZ1O23pPK8EwACjjNQK3C9Tq1LvQSTBqU7OxWtq/NiXVc4dySu62f+Yf1yP2f1kO/2xR7u+WKDiWcWVBnpzjvr6zn++6t9dCDpQK2i2Z0J9ZxlcINoLKlOm3UlUV4sAj3VxYd2G6WKV/QA9XPLB5n57J9sAi3V1dmmb67suj2dtMsm7dyKlCS0+629Dg5yiRwlEl4sOjAdlGWKYVrQZ2FC03QAFj0jbs6OcokPFgEgTLowHazLCMVLuHM4nQSylZ97ve3YgjUR3nvy+cv5f/5I1fvyrtB+dDf4iF5j29lb7eQx11wZhaVdymB2kuijV64AbBKIC4S1Jf/jytt3PF03uoPfbwP7u/0h96D24kklTFbdnMuQOfF01MzcJNpfy//1lvDBG4Xqcz6cq5V4QJL3MC5SqDGKcb789P9u67mh7OpXiz83phu0e2mTaTNYqGNE2hEAby4bTc9dcOX5qEqv4fb8yO3d2q+2HYVdDZtHmpTuMA1aND57Gk56zpVFnofqzibRz5fWU5guzpQZe+tJyjkvLQNqeGphCuLUId359zOLtt2het1dp+eEnX37k4lCNTb9xpBoN591Oj2dnNRs7HShVoFCq5wYWfH6fn2c/D5o0LgKL5u/XKnEDjnXi4M3ju242UbBcGiY+GqjQibnxc431Zr8XcN4epBnii4oem33BQI+51ju+qkOZq5Cpfk3PTvLE183D/UqPefq3vvasLbenn3+eOf6HbzeFTdiyiF62y4lzot5vMPt3PiaLigk7Ya+rc6vWX7CpyuhhtY36J+tU6sEbV0wsuEf4CTdGL5tzs3lzlfgtljnpcs+wZ3oifQ/5w9LIf+c76oE+5Dr3nZ10Oe7S/L/jHO7f+j898+P+f/OV/hddkg5xXT+ePXq3bC1yuEb/eVzjRNT+UxHp+Gd66LNArlTcjStHl/JpfT2W9xZ/1Sfnnzpj76b72MmXNUebKSyG/SdXbQmZpz7ei38HW21oiiNM35Qf58/PDhzZsPH/66H9gZCqK4ifgLni4cTj1PwvdN9IbLwlPO//f5rzd8fB84z7BxhmmcpZHHiXy/j/ZjhyityvZcuC/iZGlu5znuy8nicJfLbvvmrw9vfn9BZxQC85Pm9PzUXkB5l5NHCh9/hsH3p6Gde9Hu5U2YK/3WLNtu36cGV0S3YqXQ/FBzmIGcPXv6ucPrWfl1cXp+jtTp55/DMl3fvl1jzg2hEb00tI3TWva5f57d8tekBnXaZYuePrfw79WMX+UExeIktNsLncNCL3AqvyflmqCvIlDrRXZMT6Dden7vDQ/0x69hoa3j1K5WSL/HqDrjcj0krj+Hd8pLT/EOynJlxnpxImeWY+XkC/m6cvtZ97lXgFWc4tIzi/jFZ5jOZqm/bLXfM7ad6AQdneTF/HNcf5Kc5To+S8M1R5bXK85VAvD71BuKMzuUR6quP8tAh3CGirNID1EknJG3bF1OaILW0CO/VmiuP8OXcYbh6Wjm6Tt7Sqf3N3DVGVoeqbz+LKEDO/fiTZ9H9fwkTE/D6Qy0cR7q68/w+1N5Eh3OKS89d6m49Kz7LRQnND2Rf1+GFW59Dr0937yWf0jnmZ6Gk1C41niVTrNslX//iXTcl4fiTEq3xZ2Uwh0Qah8Pj3OJlS3h32dPXjjQLk4rTvV9BYiFOzC0DRPrtoizdaDPCHUw6WULOLsF+mxQ4FDOONW38VPLtnJSOpEeqLz+fHaoi0kq28YZ+Qv3HKi49qugj0/DO+X150mssd1xAmWrv/+QuxNNRllUrZ7r608x3Cu2fkZ1KFZeoxwZoWz1OBEn+KZ2onAz8VI2158DO0PpZDk5TstJ6kSTkbj248dorj9fwlns25et8X5v1gydmq3odBQHOV9/voRTTp2WzLOT8OYfk8l+MtrLHzs215+DOsvvIaQNE2q2qNPZiTSouPaTH0/1+HM0qq4/B3TK689RlIJx4kt40LlBAtVPorei594CZ7eezi/Qnv1vUwiuERSnc4YareiCtxLtnUlqtpbT03KBT3WAn87FUmS3INM1O51OPNCBoMg+/e/z62RG1vs22zMUr9xneOtmOrPN7NSc1ECf8a240d0RmWickLMfaAcpvq+R7VSZnnNn837jNpTqdL1Xfl9K7AMBXEyq0wf98YsAbSF17cXPVKsWcsKfY2GfWyooX5CcKujjEyVRmtWzg/OBxOWvq2pRJua0Ay2hu9U03cjj8IU8qXT9VO/GzXGyaFIdfuqLU2dGyOfMNDPUqlxxoOb6Uxz9mZe2ctRFm6U0pu9zZuBWpECzgzhOdf1ZHnw450Rc/pqT02hCK2sFD34+kqdyV4dsWpXtuXAHc4oDn442E4szgp0E6CplZdMtrz+HdYrL38n+QKlaO07MCU3R8VR8q+0koI8/J5PvT5MhnZPq8hdhLiwm6sSgS+PswqG3ooZuywXDMM76vKkzjThXKBP/HEWjcsFP3jOWRn1+lJm+3wnMXDp6reNzFJ1QzYlC+5KSmK6qjSLDGdvQ2glN0UGgo05M7NSJOi+DXkx1KolMwOmCOqboM0mtXTmZ6uR0NCHgc8IxKJCoC9pRau/HxVx6mZoTShQ+i+JQQNqaCuxiojPHXmZnJwb98cuAQtIWVGjrCYUJLIQApu10QedFGlfQxyczURBKs8IbWsztMT1uuzFLJxm6L53jMV/I17X7zEshOco0TyfxB2LCk9N24j3XgKYxL93m+lMcfxin4OVszHJ6mioTcuqB6lDu5NDq+rMMdBCnLCJeTHGKM7FTiup0nkUVqHByqbz+nA7nLCeLzHPpLlqECTutKXqGVs7y+nNo56kYFyciE3VSSlf+AFIc6PHnePz9aTywU/Tb+bL6x/Q1U5+cWJyK092LmtIVJ9JbcSK91dYM+jnGcZ5Bh7n91FgBlTOzDtPNdDk90I0KrZcMGtSS0q32lrZS60AtmZrTAV3RoIDUiwU3wZT61ESZLZwwtKMU8uJ/bwopS6Ye5oqapuH0QuFIDamLShgOZXem4WwNRaSdqVOXck1jtnYi0AUF2oWKII0wOzFNJ5yo1nabSPXivYyqbAUrjTBxJtHpL10UCkhJVoexVtKZoBJyOk8vpnRpSEEqzjX+kq2ES/aspKbpd5qlW0E350jNTHGqZwDIOkw6E1ESnBYUKd6LqJARVZo1S2GCTk+i50hdUjoVNtbIsxINk8REnDToxoLqVB8XEarKNRomwHQ4Z4jTA7Wla1RqkB04wwiWrFmzRCbqJEMBKU4ljGYva6tkbWZEYgrnjASlSRVqR6sdpaJ01qybOfsfgNxMAkMNK4AAAAAASUVORK5CYII=">
					</div>
					<div style="width: 70%;">리뷰 내용</div>
				</div>
			</div>
		</div>
		<div class="col-sm-1"></div>
	</div>
</body>
</html>