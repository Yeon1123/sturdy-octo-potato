<%@ page import="org.jsoup.Jsoup"%>
<%@ page import="org.jsoup.nodes.Document"%>
<%@ page import="org.jsoup.nodes.Element"%>
<%@ page import="org.jsoup.select.Elements"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*"%>

<jsp:useBean id="t" class="scrapy.Crawl" scope="page" />
<jsp:setProperty name="t" property="*" />
<!DOCTYPE html>
<!--
Template Name: Boguco
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html>
<!--윤지애 : 탭 이름-->
<head>
<title>CNU information | Notice</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--외부 소스 : 외부 css 연결-->
<link href="../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
</head>
<body id="top">

	<!-- ################################################################################################ -->
	<!--유정연 : 최상단 include-->
	<%@include file="Upper_part.jsp"%>


	<!-- Top Background Image Wrapper -->
	<!--유정연 : 메뉴가 포함된 상단-->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<!-- ################################################################################################ -->
		<!--유정연 : 메뉴가 포함된 상단을 include-->
		<%@include file="dropdown.jsp"%>

		<!--윤지애 : 세부 메뉴-->
		<div class="wrapper row2">
			<div id="breadcrumb" class="hoc clear">
				<!-- ################################################################################################ -->
				<ul>
					<li><a href="../index.html">Home</a></li>
					<li><a>공지사항</a></li>
					<li><a>컴퓨터공학과 공지사항</a></li>
					<li><a href="comBac.jsp">일반정보</a>
				</ul>
				<!-- ################################################################################################ -->
			</div>
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->

	<!--윤지애 : 공지사항 크롤링-->
	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body -->
		<div class="content">
			<h1>일반정보</h1>
			<!--사이트 공지사항-->
			<div class="info">총 #### 건 / 금일 : ### 건</div>
			<!--검색창-->
			<div class="search" style="grid-area: search">
				<form action="#" method="post" id="search_position"
					style="float: right">
					<input list="search" name="subject" class="input" size="22"
						style="float: left">
					<datalist id="search" value="제목">
						<option>제목</option>
						<option>내용</option>
						<option>작성자</option>
					</datalist>
					<!--제목/내용/작성자를 기준으로 검색할 수 있음.-->
					&nbsp;&nbsp;&nbsp; <input type="text" size="22" style="float: left">&nbsp;&nbsp;&nbsp;
					<button style="float: left">검색</button>
				</form>
			</div>
			<br> <br> <br>
			<div class="scrollable">
				<table>
					공지사항 받아오는 표.
					<thead>
						<th style="width: 8%">번호</th>
						<th style="width: 57%">제목</th>
						<th style="width: 13%">작성자</th>
						<th style="width: 14%">작성일</th>
						<th style="width: 8%">조회</th>
					</thead>
					<%
						String url = "http://computer.cnu.ac.kr/index.php?mid=gnotice"; // 컴퓨터공학과 일반정보 공지사항 받아오기
						String table = t.printTable(url);
						out.println(table);
						/* t.setting("com", url); // setting
						ArrayList<String> table = t.getTable(); // table 받아오기
						ArrayList<String> tableAHref = t.getAttr(); // table의 a tag 받아오기
						for (int i = 0; i < 8; i++) { */
					%>

					<%-- <tr>
						<td style="width: 8%"><%=table.get(i * 5 + 0)%></td>
						<td style="width: 57%"><%=tableAHref.get(i)%></td>
						<td style="width: 13%"><%=table.get(i * 5 + 2)%></td>
						<td style="width: 14%"><%=table.get(i * 5 + 3)%></td>
						<td style="width: 8%"><%=table.get(i * 5 + 4)%></td>
					</tr>

					<%
						}
					%> --%>
				</table>
			</div>

		</div>
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>

	<!-- Footer Background Image Wrapper -->
	<!--유정연 : footer를 include-->
	<%@include file="Under_part.jsp"%>

</body>
</html>