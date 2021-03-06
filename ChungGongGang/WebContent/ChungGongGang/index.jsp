<!-- 프로젝트의 전체 메인 화면을 구현하였다. (중요) - 링크가 많이 걸려있음을 주의하여야 한다.(경로 확인 필수.) -->

<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*"%>
<!--
Template Name: Boguco
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html>
<!--유정연 : 탭 이름-->
<head>
<title>CNU information</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--외부 css연결-->
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
</head>

<body id="top">

		<%@include file="Upper_part.jsp"%>


	<!-- Top Background Image Wrapper 유정연 : 이미지가 배경사진으로 들어간 레이어 div -->
	<div class="bgded overlay"
		style="background-image: url('images/demo/backgrounds/01.png');">
		<!-- ################################################################################################ -->
		<div class="wrapper row1">
			<header id="header" class="hoc clear">
				<!-- ################################################################################################ -->
				<!--유정연 : 좌측 상단의 충공갱 로고를 작성. 클릭시 메인화면으로.-->
				<div id="logo" class="fl_left">
					<h1>
						<a href="index.jsp" style="font-weight: bold">충공갱</a>
					</h1>
				</div>
				<!--유정연: nav 태그 안의 드롭다운 리스트를 작성.-->
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a class="drop">공지사항</a>
							<ul>
								<li class="drop"><a href="pages/cnu.jsp">충남대 공지사항</a>
									<ul>
										<li><a href="pages/cnuNew.jsp">새소식</a></li>
										<li><a href="pages/cnuBae.jsp">학사정보</a></li>
										<li><a href="pages/cnuEdu.jsp">교육정보</a></li>
										<li><a href="pages/cnu.jsp">대학문화마당</a></li>
									</ul></li>
								<li class="drop"><a href="pages/dom.jsp">기숙사 공지사항</a>
									<ul>
										<li><a href="pages/dom.jsp">은행사</a></li>
										<li><a href="pages/domBac.jsp">백행사</a></li>
									</ul></li>
								<li><a href="pages/sw.jsp">SW 사업단 공지사항</a></li>
								<li class="drop"><a href="pages/com.jsp">컴퓨터공학과 공지사항</a>
									<ul>
										<li><a href="pages/comEdu.jsp">학사정보</a></li>
										<li><a href="pages/comBac.jsp">일반소식</a></li>
										<li><a href="pages/com.jsp">사업단소식</a></li>
									</ul></li>
							</ul></li>

						<li><a class="drop">키워드 알림</a>
							<ul>
								<li><a href="pages/alarm.jsp">알림 설정</a></li>
								<li><a href="pages/alarmconfirm.jsp">알림 확인</a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- 여기까지가 메인페이지 윗 드롭다운 메뉴 설정. -->
			</header>

		</div>

		<!-- 유정연: 화면 넘김 html파일. 공지사항 네 개를 작성함. -->
		<div id="pageintro" class="hoc clear">
			<!-- ################################################################################################ -->
			<div class="flexslider basicslider">
				<ul class="slides">
					<li>
						<article>
							<p>충남대학교 메인 홈페이지</p>
							<h3 class="heading">충남대학교 바로가기</h3>
							<footer>
								<a target="_blank" class="btn"
									href="http://plus.cnu.ac.kr/html/kr/">ABOUT CNU</a>
							</footer>
						</article>
					</li>
					<li>
						<article>
							<p>충남대학교 학생생활관</p>
							<h3 class="heading">닷옴 바로가기</h3>
							<footer>
								<a target="_blank" class="btn inverse"
									href="http://dorm.cnu.ac.kr/html/kr/">ABOUT DORM</a>
							</footer>
						</article>
					</li>
					<li>
						<article>
							<p>충남대학교 SW중심대학 사업단</p>
							<h3 class="heading">사업단 바로가기</h3>

							<footer>
								<a target="_blank" class="btn" href="http://wise.cnu.ac.kr/">ABOUT
									SW</a>
							</footer>
						</article>
					</li>
					<li>
						<article>
							<p>충남대학교 컴퓨터공학과</p>
							<h3 class="heading">학과 사이트 바로가기</h3>

							<footer>
								<a target="_blank" class="btn inverse"
									href="http://computer.cnu.ac.kr/">ABOUT ComputerScience |
									engineering</a>
							</footer>
						</article>
					</li>

				</ul>
			</div>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->

	<!--유정연 : 홈페이지 설명, 클릭 메뉴(6칸)을 구현한다.-->
	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body --> <!-- 유정연: 사이트 설명을 위한 div태그. -->
		<div class="center btmspace-80">
			<h3 class="heading" style="font-weight: bold">비공식 충남대학교 공지사항 모음
				사이트</h3>
			<p class="nospace">이 사이트는 비공식으로, 충남대학교 공지사항, 컴퓨터공학과 공지사항, 기숙사
				공지사항, sw중심대학 공지사항이 업데이트되는 사이트입니다.</p>
		</div>

		<!--각 사이트로 가는 링크와 사이트 내 공지사항 링크를 작성-->
		<ul class="nospace group services">
			<li class="one_third first">
				<article>
					<a href="pages/cnu.jsp"><i class="fa fa-object-group"></i></a>
					<h6 class="heading">충남대학교 공지사항</h6>
					<p>충남대학교 공지사항 모아보기</p>
					<footer>
						<a target="_blank" href="http://plus.cnu.ac.kr/html/kr/">사이트
							바로가기</a>
					</footer>
				</article>
			</li>

			<li class="one_third">
				<article>
					<a href="pages/dom.jsp"><i class="fa fa-fighter-jet"></i></a>
					<h6 class="heading">기숙사 공지사항</h6>
					<p>충남대학교 기숙사 닷옴 공지사항 모아보기</p>
					<footer>
						<a target="_blank" href="http://dorm.cnu.ac.kr/html/kr/">사이트
							바로가기</a>
					</footer>
				</article>
			</li>

			<li class="one_third">
				<article>
					<a href="pages/alarm.jsp"><i class="fa fa-universal-access"></i></a>
					<h6 class="heading">알림 설정</h6>
					<p>키워드 알림 설정하기</p>
				</article>
			</li>

			<li class="one_third first">
				<article>
					<a href="pages/com.jsp"><i class="fa fa-cubes"></i></a>
					<h6 class="heading">컴퓨터공학과 공지사항</h6>
					<p>컴퓨터공학과 공지사항 모아보기</p>
					<footer>
						<a target="_blank" href="http://computer.cnu.ac.kr/">사이트 바로가기</a>
					</footer>
				</article>
			</li>

			<li class="one_third">
				<article>
					<a href="pages/sw.jsp"><i class="fa fa-pagelines"></i></a>
					<h6 class="heading">SW사업단 공지사항</h6>
					<p>충남대학교 SW중심대학 사업단 공지사항 모아보기</p>
					<footer>
						<a target="_blank" href="http://wise.cnu.ac.kr/">사이트 바로가기</a>
					</footer>
				</article>
			</li>


			<li class="one_third">
				<article>
					<a href="pages/alarmconfirm.jsp"><i class="fa fa-fort-awesome"></i></a>
					<h6 class="heading">알림 확인</h6>
					<p>나의 알림 확인하기</p>
				</article>
			</li>
		</ul>
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>

	<!--유정연 : footer를 작성하였다. 사이트명, 학교 주소, 제작자에 관련된 정보를 입력함.-->
	<div class="bgded overlay"
		style="background-image: url('images/demo/backgrounds/04.png');">
		<!-- ################################################################################################ -->
		<div class="wrapper row4">
			<footer id="footer" class="hoc clear">
				<!-- ################################################################################################ -->
				<div class="btmspace-50 center">
					<h2 class="heading">충남대학교 공지 갱신사이트</h2>
					<p>ABOUT CNU : 305-764 대전광역시 유성구 대학로 99 충남대학교 TEL : 042)
						821-5114</p>
				</div>
				<ul class="nospace group">
					<li class="one_quarter first">
						<div class="infobox">
							<i class="fa fa-phone"></i>
							<ul class="nospace">
								<li>010-2664-8359</li>
								<li>010-2397-3915</li>
							</ul>
						</div>
					</li>
					<li class="one_quarter">
						<div class="infobox">
							<i class="fa fa-envelope-o"></i>
							<ul class="nospace">
								<li><a>dbwjddus19@gmail.com</a></li>
								<li><a>yja2397@gmail.com</a></li>
							</ul>
						</div>
					</li>
					<li class="one_quarter">
						<div class="infobox">
							<i class="fa fa-clock-o"></i>
							<ul class="nospace">
								<li><a target="_blank"
									href="http://yjyblogstudyit.tistory.com/">JungYeon Blog</a></li>
								<li><a target="_blank" href="http://blog.naver.com/yja0203">JIAE
										Blog</a></li>
							</ul>
						</div>
					</li>
					<li class="one_quarter">
						<div class="infobox">
							<i class="fa fa-support"></i>
							<ul class="nospace">
								<li><a target="_blank"  href="https://github.com/Yeon1123">JungYeon Git</a></li>
								<li><a target="_blank" href="https://github.com/yja2397">JIAE Git</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<!-- ################################################################################################ -->
			</footer>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<nav class="quicklinks row4">

			<ul class="hoc clear">
				<li><a target="_blank"  href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
				<li><a target="_blank" href="pages/about.jsp">About</a></li>
				<li><a target="_blank" href="http://plus.cnu.ac.kr/html/kr/">CNU</a></li>
				<li><a target="_blank" href="http://dorm.cnu.ac.kr/html/kr/">Domitory</a></li>
				<li><a target="_blank" href="http://wise.cnu.ac.kr/">SW</a></li>
				<li><a target="_blank" href="http://computer.cnu.ac.kr/">Computer</a></li>
			</ul>
		</nav>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->

		<!--유정연 : 템플릿 출처와 copyright를 입력.-->
		<div class="wrapper row5">
			<div id="copyright" class="hoc clear">
				<!-- ################################################################################################ -->
				<p class="fl_left">
					Copyright &copy; 2018 - All Rights Reserved - <a href="index.jsp">ChungGongGang</a>
				</p>
				<p class="fl_right">
					Template by <a target="_blank" href="https://www.os-templates.com/"
						title="Free Website Templates">OS Templates</a>
				</p>
				<!-- ################################################################################################ -->
			</div>
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Footer Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>


	<!-- JAVASCRIPTS 링크 작성. -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	<script src="layout/scripts/jquery.flexslider-min.js"></script>
</body>
</html>