<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/top.jsp" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainPage.css'/>" />

<script type="text/javascript">
	$(document).ready(function(){
		$(".divSpecial .SpBox")
			.hover(function(){
				$(this).css("border-color","red")
					.css("border-width", "1px")
					.css("cursor","pointer");
			}, function(){
				$(this).css("border","");
			});
		$(".divGrand .GrBox")
		.hover(function(){
			$(this).css("border-color","red")
				.css("border-width", "1px")
				.css("cursor","pointer");
		}, function(){
			$(this).css("border","")
		});
	});
	
	function login2_1(){
		var type = $("#loginBox1").val();
		
		window.open("<c:url value='/login/login.ag?type="+type+"'/>", "login",
		"width=390,height=480,left=700,top=200,resizable=yes,location=yes");
	}function login2_2(){
		var type = $("#loginBox2").val();
		
		window.open("<c:url value='/login/login.ag?type="+type+"'/>", "login",
		"width=390,height=480,left=700,top=200,resizable=yes,location=yes");
	}
</script>

	<%-- <!-- 메인 컨테이너 페이지 -->
	<br>
	<img src="<c:url value='${pageContext.request.contextPath}/images/console.png'/>" 
		alt="메인테스트">
	<br><br> --%>
	
	<section>
		<div class="divMain">
			<div class="divCategory">
				<!-- 광고 및 기본 기능 -->
				<div class="divCAD">
				<div class="divCmHeader">
					<!-- 광고배너(2개) -->
					<table>
					<td><img src="<c:url value='/images/banner1.jpg'/>"
						height="111px"></td>
					<td><img src="<c:url value='/images/banner2.jpg'/>"
						height="111px"></td>
					</table>
				</div>
				<div class="divDivision">
					<!-- 알바 분류 -->
					<div class="divJob">
						<!-- 지역별 알바 -->
						지역별 알바
						<hr width="90px">
						<img src="<c:url value='/images/map.png'/>"
						 width="240px" height="200">
					</div>
					<div class="divJob">
						<!-- 업종별 알바 -->
						업종별 알바
						<hr width="90px">
						<table>
							<tr>
								<td><img src="<c:url value='/images/JobIcon/food.png'/>">
									<br>식당</td>
								<td><img src="<c:url value='/images/JobIcon/shop.png'/>">
									<br>상점</td>
								<td><img src="<c:url value='/images/JobIcon/dress.png'/>">
									<br>의류</td>
							</tr>
							<tr>
								<td><img src="<c:url value='/images/JobIcon/company.png'/>">
									<br>사무보조</td>
								<td><img src="<c:url value='/images/JobIcon/study.png'/>">
									<br>학원</td>
								<td><img src="<c:url value='/images/JobIcon/build.png'/>">
									<br>건축</td>
							</tr>
						</table>
					</div>
					<div class="divJob">
						<!-- 테마별 알바 -->
						테마별 알바
						<hr width="90px">
						<table>
							<tr>
								<td><img src="<c:url value='/images/JobIcon/part.png'/>">
									<br>단기알바</td>
								<td><img src="<c:url value='/images/JobIcon/today.png'/>">
									<br>당일지급</td>
							</tr>
							<tr>
								<td><img src="<c:url value='/images/JobIcon/quick.png'/>">
									<br>급구알바</td>
								<td><img src="<c:url value='/images/JobIcon/good.png'/>">
									<br>안심계약</td>
							</tr>
						</table>
					</div>
				</div>
				</div>
				<div class="divFunction">
					<!-- 로그인상자 및 광고 -->
					<div class="loginBox">
						<!-- 로그인상자 -->
						<a href="#" onclick="login2_1()">
						<div class="personalLogin">
						<input type="hidden" id="loginBox1" value="Personal">
							개인회원<br>로그인
						</div></a>
						<a href="#" onclick="login2_2()">
						<input type="hidden" id="loginBox2" value="Company">
						<div class="companyLogin">
							기업회원<br>로그인
						</div></a>
						<div class="selectLogin">
							<a href="<c:url value='/member/agreement.ag'/>">
							<span style="font-weight:bold">
								회원가입</span></a> |
							아이디 찾기 |
							비밀번호 찾기
						</div>
					</div>
					<div class="">
						<img src="<c:url value='/images/spam.jpg'/>"
						 width="245px">
					</div>
					<div class="divCommercial2">
						<!-- 다른 사이즈의 광고 -->
						<img src="<c:url value='/images/banner3.jpg'/>"
						 width="245px" height="140px">
					</div>
				</div>
				<div class="divBrand">
					<!-- 브랜드 알바(페이지 슬라이드) -->
					<div id="divRoll">
						<ul class="divImgset">
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/BurgerKing_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/BR_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/Dunkin_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/GS25_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/Gyejul_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/Otoko_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/Joes_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/KFC_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/Outback_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/Vips_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/CJFood_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/LotteMart_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/Nike_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/PizzaHut_c.png'/>" alt=""/></a></li>
							<li><a href="#" target="_self"><img src="<c:url value='/images/CircleBanner/ParisBagguet_c.png'/>" alt=""/></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="divSpecial">
				<br><br>
				<span id="divTitle">슈퍼 채용공고</span>
				<div>
				<!-- 슈퍼 채용공고 리스트 -->
						<a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/001.jpg'/>">
						 <br><p id="title">롯데아이몰</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/002.jpg'/>">
						 <br><p id="title">쿠팡</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/003.jpg'/>">
						 <br><p id="title">나이키</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/004.jpg'/>">
						 <br><p id="title">삼성전자판매</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/005.jpg'/>">
						 <br><p id="title">유엔난민기구</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</a></div>
						
						<a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/006.jpg'/>">
						 <br><p id="title">이베이</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/007.jpg'/>">
						 <br><p id="title">롯데백화점</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/008.jpg'/>">
						 <br><p id="title">우리카드</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p></td>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/009.jpg'/>">
						 <br><p id="title">라이나생명</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/010.jpg'/>">
						 <br><p id="title">씨티뱅크</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a>
						
						<a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/011.jpg'/>">
						 <br><p id="title">하나카드</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/012.jpg'/>">
						 <br><p id="title">롯데홈쇼핑</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/013.jpg'/>">
						 <br><p id="title">피자헛</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/014.jpg'/>">
						 <br><p id="title">서브웨이</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/015.jpg'/>">
						 <br><p id="title">빕스</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</a></div>
					
						<a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/016.jpg'/>">
						 <br><p id="title">스시로</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/017.jpg'/>">
						 <br><p id="title">죠스떡볶이</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/018.jpg'/>">
						 <br><p id="title">올리브영</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/019.jpg'/>">
						 <br><p id="title">산들해</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/020.jpg'/>">
						 <br><p id="title">아워홈</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a>

						<a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/021.jpg'/>">
						 <br><p id="title">배스킨라빈스</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/022.jpg'/>">
						 <br><p id="title">롯데리아</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/023.jpg'/>">
						 <br><p id="title">던킨도넛</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/024.jpg'/>">
						 <br><p id="title">믹소</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="SpBox">
						 <img src="<c:url value='/images/company/025.jpg'/>">
						 <br><p id="title">앤젤리너스</p>
						 <p id="content">[재택근무] 2016년 상반기 알바</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a>
					</div>
			</div>

			<div class="divGrand">
				<br><br>
				<span id="divTitle">그랜드 채용공고</span>
				<div>
						<a href="#"><div class="GrBox">
						 <img src="<c:url value='/images/company/026.jpg'/>">
						 <br><p id="title">유베이스</p>
						 <p id="content">주5일/주말근무/휴일근무</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="GrBox">
						 <img src="<c:url value='/images/company/027.jpg'/>">
						 <br><p id="title">이마트</p>
						 <p id="content">주5일/주말근무/휴일근무</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="GrBox">
						 <img src="<c:url value='/images/company/028.jpg'/>">
						 <br><p id="title">어노플레이스</p>
						 <p id="content">주5일/주말근무/휴일근무</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="GrBox">
						 <img src="<c:url value='/images/company/029.jpg'/>">
						 <br><p id="title">삼성화재서비스</p>
						 <p id="content">주5일/주말근무/휴일근무</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a>
						
						<a href="#"><div class="GrBox">
						 <img src="<c:url value='/images/company/030.jpg'/>">
						 <br><p id="title">삼성화재애니카</p>
						 <p id="content">주5일/주말근무/휴일근무</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="GrBox">
						 <img src="<c:url value='/images/company/031.jpg'/>">
						 <br><p id="title">엘지유플러스</p>
						 <p id="content">주5일/주말근무/휴일근무</p>
						 <p id="pay">서울 동작구 <span id="time">월</span>
						 <span id="money">1,500,000</span>원</p>
						</div></a><a href="#"><div class="GrBox">
						 <p id="grayFont">파워 점프, 지역 focus,<br>지역TOP, 업직종 TOP 무료</p>
						 <p id="grayButton"> 상품 안내 및 신청 </p>
						</div></a><a href="#"><div class="GrBox">
						 <p id="grayFont">파워 점프, 지역 focus,<br>지역TOP, 업직종 TOP 무료</p>
						 <p id="grayButton"> 상품 안내 및 신청 </p>
						</div></a>
				</div>
			</div>
			<div class="divOther">
				<!-- 일반 공고 리스트(게시판형) -->
			</div>
			<div class="divCmFooter">
				<!-- 광고배너(2개) -->
			</div>
		</div>
	</section>
	
<%@ include file="inc/bottom.jsp" %> 