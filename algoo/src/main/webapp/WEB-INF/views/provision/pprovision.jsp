<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../inc/simple_top.jsp"%>
<script type="text/javascript" 
	src="<c:url value='/naver/naverLogin_implicit-1.0.2.js'/>" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/provision.css'/>" />

<div class="provision">	
	<div class="provTitle">
		<span><a href="<c:url value='/provision/pProvision.ag'/>">개인회원</a></span>
		<a href="<c:url value='/provision/cProvision.ag'/>">기업회원</a>
		<a href="">위치기반서비스</a>
		<br>
	</div><br><br>
	
	<h2>개인회원 이용약관</h2>
	<hr>
	<div class="provDay">
		<span id="provDay">개정일자</span> : 2016년 3월 21일
	</div>
	
	<div class="provCon">
		<iframe src="<c:url value='/inc/pprovision.html'/>"
		 frameborder="0" scrolling=no width="880" height="4100">
	</div>
</div>
	
<%@ include file="../inc/simple_bottom.jsp" %> 