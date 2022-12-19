<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Date 객체 _ 응용:경과시간 계산하기</h2>
	<pre>
	Date.now() => 1970sus 1월 1일 자정이후 지금현재까지의 밀리세컨트를 리턴
	1ms=1/1000초; => 1000ms=1초
	</pre>
	<hr>
	
	<script>
	document.write("<pre>");
	let start = Date.now();
	document.writeln("Date.now()="+start);
	
	
	// 복잡한 일~
	for(let i=1; i<100000000; i++){}
	
		
		
	let end = Date.now(); // 도착시간
	document.writeln("Date.now()="+end);
	
	let toDoTime = end-start// 경과시간=도착시간-출발시간
	document.writeln("경과시간(ms단위)=시작시간-끝시간=>"+toDoTime);
	document.writeln("경과시간(초단위)=시작시간-끝시간=>"+ Math.floor(toDoTime/1000));
	
	
	document.write("");
	

	document.write("</pre");
	</script>
</body>
</html>