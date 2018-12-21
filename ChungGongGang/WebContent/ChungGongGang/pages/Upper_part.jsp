<!--(pages폴더 내의) 화면 최상단의 파트를 분리 -->
<!-- 유정연 : iclude를 위한 상 하부를 따로 관리하기 위해 jsp파일을 작성 -->
<!-- 20181215 로그인 확인 및 로그아웃까지 구현 -->
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!--
Template Name: Boguco
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->

<!-- 윤지애 : 세부 메뉴 구현 -->
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--외부 소스 : 외부 css 연결-->
<link href="../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
</head>

<body>
	<div class="wrapper row0">
		<div id="topbar" class="hoc clear">
			<!-- ################################################################################################ -->
			<div class="fl_left">
				<ul class="nospace">
					<li><i class="fa fa-phone"></i>042-821-5114</li>
					<!--충남대학교 홈페이지-->
					<li><i class="fa fa-envelope-o"></i> dbwjddus1997@gmail.com |
						yja2397@gmail.com</li>
					<!--유정연, 윤지애 이메일 주소-->
				</ul>
			</div>
			<div class="fl_right">
				<ul class="nospace">
			<!-- 세션을 설정하여 로그인시 oo님 환영합니다/아닌 경우 로그인, 회원가입창을 나타내게 했다. -->
					<li><a href="../index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
					<li><a href="about.jsp">About</a></li>
					<%if(session.getAttribute("sessionID")==null){%>
					<% out.println("<li><a href=\"login.jsp\">Login</a></li><!--로그인--><li><a href=\"join.jsp\">Register</a></li>");%>
					<%} else{%>
					<%out.print("<li>");%>
					<%=session.getAttribute("sessionID")%>			
					<%out.print("님 환영합니다!</li>"); %>
					<%out.print("<a href=\"logout.jsp\" ><li>로그아웃</li></a>"); %>
					<%} %>
					<!--회원가입-->
				</ul>
			</div>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<!--유정연 : 메뉴가 포함된 상단-->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<!-- ################################################################################################ -->
		
</body>
</html>