<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok</title>
</head>
<body>
	<h3>ok.jsp</h3>
	<h4>이 문서는 form01.jsp에서 user가 입력한 데이터를 받아서  처리하는 서버측 페이지이다.</h4>

<% 
	String name = request.getParameter("mname");
	String pwd = request.getParameter("mpwd");
%>

		<!-- html 주석문 -->
	*user가 입력한 데이터
	<ul>
		<li>이름:<%=name%></li>
		<li>비번:<%=pwd %></li>
	</ul>



</body>
</html>