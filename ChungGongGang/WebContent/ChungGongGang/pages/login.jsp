<!-- 로그인을 나타내는 페이지이다. 20181214기준 로그인을 하는 자바스크립트 추가 요망-->

<!DOCTYPE html>
<!--
Template Name: Boguco
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	//한글 깨짐 방지를 위한 코드.
%>
<html>
<!--윤지애 : 탭 이름-->
<head>
    <title>CNU information | About</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!--외부 소스 : 외부 css 연결-->
    <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!--유정연 : 최상단 include-->
	<%@include file="Upper_part.jsp"%>

<!-- Top Background Image Wrapper -->
<!--유정연 : 메뉴가 포함된 상단-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
    <!-- ################################################################################################ -->
    <!--유정연 : 메뉴가 포함된 상단을 include-->
		<%@include file="dropdown.jsp"%>
    <!--윤지애 : 세부 메뉴-->
    <div class="wrapper row2">
        <div id="breadcrumb" class="hoc clear">
            <!-- ################################################################################################ -->
            <ul>
                <li><a href="../index.jsp">Home</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
            <!-- ################################################################################################ -->
        </div>
    </div>
    <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!--윤지애 :  로그인 구현-->
<jsp:useBean id="memberBean" class="source.memberBean" />
<jsp:useBean id="save" class="source.SaveData" /> <!-- login하여 아이디와 비밀번호를 검사하기 위한 클래스 호출 -->
<jsp:setProperty property="*" name="memberBean" />
<div class="wrapper row3">
    <main class="hoc container clear">
        <!-- main body -->
        <!-- ################################################################################################ -->
        <h1>로그인</h1><!--로그인-->
        <div class="login">
            <!--로그인 버튼 누르면 확인용 jsp파일로 넘어간다..-->
            <form action="loginPro.jsp" method="post">
                <!--id, password, 자동로그인 구현-->
                <p><input type="text" name="id" id="id" class="input" autofocus required placeholder="아이디"></p>
                <p><input type="password" name="password" id="password" class="input" required placeholder="비밀번호"></p>
                <!--loginAlert(): 로그인 되었습니다 alert 창 출력하는 함수-->
                <p><input type="submit" value="로그인" onclick="loginAlert()" class = "submit"></p>
                <div class="sub">
                    <p class="join"><a href="join.jsp" style="text-decoration-line: none; color: indigo;">회원가입</a></p>
                </div>
        
            </form>
            <!-- 유정연 | 윤지애 : 비밀번호, 아이디 오류를 알려주는 코드. -->
            <%
            String gotothe = request.getParameter("gotothe");
            if(gotothe !=null && gotothe.equals("0")){
            	out.println("<script> alert(\" 비밀번호가 잘못되었습니다. \") </script>");
            }
            else if(gotothe !=null&&gotothe.equals("-1")){
            	out.println("<script> alert(\" 아이디가 잘못되었습니다. \") </script>");
            }
            
            %>
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