<!-- 사용자가 설정한 알람을 확인하는 페이지. 20181214기준 레이아웃만 완성  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	//한글 깨짐 방지를 위한 코드.
%>

<!-- 작성한 빈을 가져오는 코드! -->
<%@ page import="source.alarm"%>
<%@ page import="source.alarmData"%>
<!--
Template Name: Boguco
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html>

<!--윤지애 : 탭 이름-->
<%
	if (session.getAttribute("sessionID") == null) {
		out.println(
				"<script>if(window.confirm(\"로그인이 필요합니다.\")){window.open(\"login.jsp\");}else{window.open(\"../index.jsp\");}</script>");
	} else {

	}
%>
<head>
<title>CNU information | Alarm</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--외부 소스 : 외부 css 연결-->
<link href="../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
</head>
<body id="top">

	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!--유정연 : 최상단 include-->
	<%@include file="Upper_part.jsp"%>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<!--유정연 : 메뉴가 포함된 상단-->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<!-- ################################################################################################ -->
		<!--유정연 : 메뉴가 포함된 상단을 include-->
		<%@include file="dropdown.jsp"%>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!--윤지애 : 세부 메뉴-->
		<div class="wrapper row2">
			<div id="breadcrumb" class="hoc clear">
				<!-- ################################################################################################ -->
				<ul>
					<li><a href="../index.html">Home</a></li>
					<li><a>키워드 알림</a></li>
					<li><a href="alarmconfirm.jsp">알림 확인</a></li>
				</ul>
				<!-- ################################################################################################ -->
			</div>
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->

	<jsp:useBean id="alarm" class="source.alarm" />
	<jsp:useBean id="save" class="source.alarmData" />
	<!-- database에 저장하기 위한 클래스 호출 -->
	<jsp:setProperty property="*" name="alarm" />

	<%
		/* 윤지애 : 데이터베이스에 알람 설정 정보 데이터 저장. */
		if (alarm.getNotice_board() != null) {
			save.dataSave(alarm);
		} // 회원 정보를담고 있는 memberBean을 database 테이블에 저장한다.
	%>

	<!--윤지애 : 알림 확인-->
	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<h1>알림 확인</h1>
		<table>

			<thead>
                <th style="width: 10%">번호</th>
                <th style="width: 15%">게시판</th>
                <th style="width: 20%">알림방식</th>
                <th style="width: 40%">키워드</th>
                <th style="width: 15%">설정날짜</th>
            </thead>

			<tbody>
				<%
					ArrayList<String> a = save.getList();
					int j;
					for (int i = 0; i < a.size(); i += 6) {
				%>

				<tr>
					<td><%=a.get(i)%></td>
					<td><%=a.get(i + 2)%></td>
					<td><%=a.get(i + 3)%></td>
					<td><%=a.get(i + 4)%></td>
					<td><%=a.get(i + 5)%></td>
					<!-- <td><a class = "alarmconfirms" href="alarmconfirm.jsp"><button onclick="if(confirm('정말로 삭제하시겠습니까?')){location.href='alarmDelete.jsp'<%-- <%save.delRow(a.get(i)); %> --%> alert('삭제되었습니다.')};">삭제</button></a></td>
					 -->
				</tr>

				<%
					}
				%>
			</tbody>
		</table>
		<!-- 알람 정보 모두 삭제하기 -->
		<a class="alarmconfirm" href="alarmDelete.jsp">전체 삭제</a>
		<div style="height: 150px";></div>
 
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Footer Background Image Wrapper -->
	<!--유정연 : footer를 include-->
	<%@include file="Under_part.jsp"%>

</body>
</html>