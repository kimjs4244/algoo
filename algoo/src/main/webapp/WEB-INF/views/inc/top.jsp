<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>top - 한두번갖고놀던장난감</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/clear.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/includeLayout.css" />
<script type="text/javascript" 
	src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
	function login(){
		window.open("<c:url value='/login/login.ag'/>",	"login",
		"width=390,height=480,left=700,top=200,resizable=yes,location=yes");
	}
	
	/* top버튼 나타내기 */
	$(document).ready(function(){
	    $(".upMark").hide(); // 탑 버튼 숨김
	    $(function () {
	                 
	        $(window).scroll(function () {
	            if ($(this).scrollTop() > 100) { // 스크롤 내릴 표시
	                $('.upMark').fadeIn();
	            } else {
	                $('.upMark').fadeOut();
	            }
	        });
	                
	        $('.upMark').click(function () {
	            $('body,html').animate({
	                scrollTop: 0
	            }, 100);  // 탑 이동 스크롤 속도
	            return false;
	        });
	    });
	});
	
	/* 우측 메뉴의 이동 */
	// 현재 스크롤바의 위치를 저장하는 변수 (px)
	var currentScrollTop = 0;
	     
	window.onload = function() {
	    // 새로고침 했을 경우를 대비한 메소드 실행
	    scrollController();
	     
	    // 스크롤을 하는 경우에만 실행
	    $(window).on('scroll', function() {
	        scrollController();
	    });
	}
	// 메인 메뉴의 위치를 제어
	function scrollController() {
	    currentScrollTop = $(window).scrollTop();
	    if (currentScrollTop < 150) {
	        $('#header').css('top', -(currentScrollTop));
	        $('#rightMenu').css('top', 150-(currentScrollTop));
	        if ($('#rightMenu').hasClass('fixed')) {
	            $('#rightMenu').removeClass('fixed');
	        }
	    } else {
	        if (!$('#rightMenu').hasClass('fixed')) {
	            $('#header').css('top', -150);
	            $('#rightMenu').css('top', 0);
	            $('#rightMenu').addClass('fixed');
	        }
	    }
	}
</script>
</head>
<body>
	<div id="wrap">
		<!-- header시작 -->
		<div id="header">
			<div id="header_div">
				<div id="header_top">
					<div id="header_action">
					<!-- 로그인이 안된 경우 -->
					<c:if test="${empty sessionScope.userid }">
						<a href="#" onclick="login()">로그인</a> |
						<a href="<c:url value='/jj/join.ag'/>">회원가입</a> |
					</c:if>
					<!-- 로그인이된 경우 -->
					<c:if test="${!empty sessionScope.userid }">
						<span style="font-size:1em">${sessionScope.userName}님</span>
						<a href="<c:url value='/member/logout.ag' />">로그아웃</a>
						<a href="<c:url value='/login/mypageType.ag'/>">마이페이지</a>
					</c:if>
						<a href="#">고객센터</a> |
						<a href="#">이벤트</a>
					</div>
				</div>
				<div id="header_search">
					<div id="header_logo">
						<a href="<c:url value='/index.ag' />">
						<img alt="로고" src="${pageContext.request.contextPath}/images/mainLogo-red.png"></a>
					</div>
					<div id="header_searchBar">
						<div>
							<a href="#">시간선택제</a> | 
							<a href="#">당일알바</a> |
							<a href="#">임금체불주신고</a>
							<form name="frmSearch" id="frmSearch" action="a.jsp" method="post">
								<fieldset>
									<span id="span_keyword">
									<input type="text" name="keyword" id="keyword"></span>
									<input type="submit" id="bt_search" value="검색">
								</fieldset>
							</form>
						</div>
					</div>
					<div id="header_advertise">
						<img alt="광고" src="${pageContext.request.contextPath}/images/findjobLogo.png">
					</div>
				</div>
				
				<div id="header_menu">
					<a href="#">채용정보 </a>
					<a href="#">브랜드알바 </a> 
					<a href="#">굿잡 </a>
					<a href="#">신입공채 </a>
					<a href="#">알바토크 </a>
					<a href="#">인재정보	</a>
					<a href="<c:url value='/login/mypageType.ag'/>">회원페이지 </a>
					<a href="#">이력서등록 </a>
					<a href="#">공고등록 </a>
				</div>
			</div><!-- header_div -->
		</div><!-- header -->
		<!-- header끝 -->
		
		<!-- container시작 -->
		<div id="container">
			<!-- 최상단으로 이동버튼 -->
			<div class="upMark">
			<a href="#">
			<img id="upMark" src="<c:url value='/images/up_mark.png'/>">
			</a></div>
			
			<!-- 좌측 고정배너 -->
			<div id="leftBanner">
				<img src="<c:url value='/images/banner/banner4_2.jpg'/>">
			</div>
			
			<!-- 우측 메뉴(고정) -->
			<div id="rightMenu">
				<div id="mJoin">
					가입
					<img src="<c:url value='/images/icon_facebook.png'/>">
					<img src="<c:url value='/images/icon_naver.png'/>">
					<img src="<c:url value='/images/icon_kakao.png'/>">
					<br>
					<hr>
					<ul type="circle">
						<li><a href="#">이력서 등록</a></li>
						<li><a href="#">채용공고 등록</a></li>
					</ul>
				</div>
				<div id="mToday">
					<div id="mTitle">오늘 본 인재 :
					<a href="#">0</a></div>
					<div id="mContent">
						오늘 본 인재가<br> 없습니다.
					</div>
					<div id="mView">
						<p>전체보기 1/0</p>
						<span>∧</span>
						<span>∨</span>
					</div>
				</div>
				<div id="mReport">
					<a href="#"><p>온라인 문의<img src="<c:url value='/images/question.png'/>"></p></a>
					<a href="#"><p>허위정보 신고<img src="<c:url value='/images/van.png'/>"></p></a>
				</div>
			</div>