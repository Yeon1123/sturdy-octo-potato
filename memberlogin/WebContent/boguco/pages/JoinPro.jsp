<!--��ó: http://all-record.tistory.com/110?category=733042 [������ ��� ���]  -->
<!-- �� ��ó�� �������� ��Ȳ�� �µ��� �ۼ���. -->


<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%
	request.setCharacterEncoding("UTF-8");
	//�ѱ� ���� ������ ���� �ڵ�.
%>

<!-- �ۼ��� ���� �������� �ڵ�! -->
<%@ page import="memberlogin.memberBean"%>



<html>
<head>
<link href="../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
<meta charset="EUC-KR">
<title>������ ���ϵ帳�ϴ�!</title>
</head>
<body>
	<!--������ : jsp���� ��ü���� css����. ->��ܺ� , �ϴܺ� ��ũ �߰�-->


	<div class="wrapper row1">
		<header id="header" class="hoc clear">
			<!-- ################################################################################################ -->
			<div id="logo" class="fl_left">
				<h1>
					<a href="../index.html" style="font-weight: bold">�����</a>
				</h1>
				<!--����Ʈ �̸�-->
			</div>
			<nav id="mainav" class="fl_right">
				<ul class="clear">
					<li class="active"><a href="index.html">Home</a></li>
					<!--ù ȭ��-->
					<li><a class="drop">��������</a>
					<!--�������� �޴�-->
						<ul>
							<li class="submenu"><a href="notice.html">�泲�� ��������</a></li>
							<!--�泲�� ��������-->
							<li class="submenu"><a href="#">����� ��������</a></li>
							<!--����� ��������-->
							<li class="submenu"><a href="#">SW ����� ��������</a></li>
							<!--SW ��������-->
							<li class="submenu"><a href="#">��ǻ�Ͱ��а� ��������</a></li>
							<!--�İ� ��������-->
						</ul></li>

					<li><a class="drop">Ű���� �˸�</a>
					<!--Ű���� �˸� �޴�-->
						<ul>
							<li class="submenu"><a href="alarm.html" target="iframe">�˸�
									����</a></li>
							<!--�˸� ����-->
							<li class="submenu"><a href="alarmconfirm.html"
								target="iframe">�˸� Ȯ��</a></li>
							<!--�˸� Ȯ��-->
						</ul></li>
				</ul>
				<form action="#">
					<select><option selected="selected" value="">MENU</option>
						<option value="index.html">Home</option>
						<option>��������</option>
						<option value="notice.html">- - �泲�� ��������</option>
						<option value="#">- - ����� ��������</option>
						<option value="#">- - SW ����� ��������</option>
						<option value="#">- - ��ǻ�Ͱ��а� ��������</option>
						<option>Ű���� �˸�</option>
						<option value="alarm.html">- - �˸� ����</option>
						<option value="alarmconfirm.html">- - �˸� Ȯ��</option></select>
				</form>
			</nav>
			<!-- ��������� ���������� �� ��Ӵٿ� �޴� ����. -->
		</header>
	</div>
	<!-- id�Ķ���ʹ� id ������Ƽ�� �����ϴ� �� ������ ��ҵ��� ��� ������ �� �ִ�.-->
	<jsp:useBean id="memberBean" class="memberlogin.memberBean" />
	<jsp:setProperty property="*" name="memberBean" />

	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<h1>ȸ������ Ȯ��</h1>
		<!--ȸ������ Ȯ�� �ڵ�!-->
		<div id="join">
			<div id="wrapper">
				<br>
				<br> <b><font size="5" color="gray">ȸ������ ������ Ȯ���ϼ���.</font></b>
				<br>
				<br> <font color="blue"><%=memberBean.getName()%></font>�� ������
				���ϵ帳�ϴ�. <br>
				<br>

				<table>
					<tr>
						<td id="title">���̵�</td>
						<td><%=memberBean.getId()%></td>
					</tr>

					<tr>
						<td id="title">��й�ȣ</td>
						<td><%=memberBean.getPassword()%></td>
					</tr>

					<tr>
						<td id="title">�̸�</td>
						<td><%=memberBean.getName() %></td>
					</tr>


					<tr>
						<td id="title">����</td>
						<td><%=memberBean.getBirthday()%></td>
					</tr>

					<tr>
						<td id="title">�̸���</td>
						<td><%=memberBean.getEmail()%></td>
					</tr>

					<tr>
						<td id="title">�޴���ȭ</td>
						<td><%=memberBean.getPhone()%></td>
					</tr>
					<tr>
						<td id="title">��̻���</td>
						<td><%=memberBean.getSubject()%></td>
					</tr>
				</table>

				<br>
				<!--��ư�� ������ �α���â���� �̵��Ѵ�-->
				<a href="join.html"> <input type="button" value="Ȯ��"
					class="submit"></a>
			</div>
		</div>
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>
	<nav class="quicklinks row4">
		<ul class="hoc clear">
			<li><a href="../index.html"><i class="fa fa-lg fa-home"></i></a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="http://plus.cnu.ac.kr/html/kr/">CNU</a></li>
			<li><a href="http://dorm.cnu.ac.kr/html/kr/">Domitory</a></li>
			<li><a href="http://wise.cnu.ac.kr/">SW</a></li>
			<li><a href="http://computer.cnu.ac.kr/">Computer</a></li>
		</ul>
	</nav>



</body>
</html>