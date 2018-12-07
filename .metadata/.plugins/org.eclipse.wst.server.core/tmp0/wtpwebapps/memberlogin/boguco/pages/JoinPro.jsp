<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
 
<%request.setCharacterEncoding("UTF-8");
//한글 깨짐 방지를 위한 코드.
%>


<html>
<head>
 <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<meta charset="EUC-KR">
<title>가입을 축하드립니다!</title>
</head>
<body>
 <% 
        // getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
        // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        String subject = request.getParameter("subject");
    %>
    
       <div id="wrap">
        <br><br>
        <b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
        <br><br>
        <font color="blue"><%=name %></font>님 가입을 축하드립니다.
        <br><br>
        
        <table>
            <tr>
                <td id="title">아이디</td>
                <td><%=id %></td>
            </tr>
                        
            <tr>
                <td id="title">비밀번호</td>
                <td><%=password %></td>
            </tr>
                    
            <tr>
                <td id="title">이름</td>
                <td><%=name %></td>
            </tr>

                    
            <tr>
                <td id="title">생일</td>
                <td><%=birthday %></td>
            </tr>
                    
            <tr>
                <td id="title">이메일</td>
                <td><%=email %></td>
            </tr>
                    
            <tr>
                <td id="title">휴대전화</td>
                <td><%=phone %></td>
            </tr>
            <tr>
                <td id="title">흥미사항</td>
                <td>
               
                <%=subject %>
                  
                </td>
            </tr>
        </table>
        
        <br>
        <input type="button" value="확인">
    </div>


출처: http://all-record.tistory.com/109?category=733042 [세상의 모든 기록]
    
    
    

	
	
</body>
</html>