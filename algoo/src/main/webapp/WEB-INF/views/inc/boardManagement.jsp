<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	#white th:nth-of-type(4){
		background:#E70400;
	}
	#white th:nth-of-type(4) a{
		color:white;
	}
	#white th a{
		text-decoration: none;
	}
</style>
<%@ include file="../inc/admin_top.jsp" %>
	<div id="menu">
		<table id="white">
			<colgroup>
				<col style="width: 25%;" />
				<col style="width: 25%;" />
				<col style="width: 25%;" />
				<col style="width: 25%;" />
			</colgroup>
			<thead>
				<tr>
					<th class="menuStyle" scope="col"><a href="<c:url value='/admin/adminMember.ag'/> ">회원관리</a></th>
					<th class="menuStyle" scope="col"><a href="<c:url value='/admin/menu/recManagement.ag'/> ">채용공고관리</a></th>
					<th class="menuStyle" scope="col"><a href="<c:url value='/admin/menu/resumeManagement.ag'/> ">인재정보관리</a></th>
					<th class="menuStyle" scope="col"><a href="<c:url value='/admin/adminBoard.ag'/> ">게시판관리</a></th>
				</tr>
			</thead>
		</table>
	</div>