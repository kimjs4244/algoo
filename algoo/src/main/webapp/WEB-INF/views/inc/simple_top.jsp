<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>simple Top - 넌 무얼 원하냐고 되물어봤어</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/simpleInc.css'/>" />
<script type="text/javascript" 
	src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
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
</script>
<!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>      
    <![endif]-->
</head>
<body>
	<div id="simple_wrap">
		<!-- 헤더영역 -->
		<header>
			<div id="simple_top">
				<a href="<c:url value='/index.ag'/>"><img alt="로고" src="<c:url value='/images/simple_Logo.png'/> ">
				</a>
				<span></span>
				<ul>
					<li><a href="<c:url value='/index.ag'/>">홈</a> |</li>
					<li><a href="#">채용정보</a> |</li>
					<li><a href="#">인재정보</a> |</li>
					<li><a href="#">알바토크</a> |</li>
					<li><a href="<c:url value='/faq/faqList.ag'/>">FAQ</a> |</li>
					<li><a href="#">캠페인</a></li>
				</ul>
			</div>
		</header>
		<!-- /헤더영역 -->
		
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