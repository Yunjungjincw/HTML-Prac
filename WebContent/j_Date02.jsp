<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date객체 :  날짜 출력하기</title>
</head>
<body>
	<h2>Date객체:날짜출력하기</h2>
<pre>
js의 Date객체는 자동적으로 toString()가 호출되어  String으로 형변환하여 출력된다
getFullYear()=>Get year as a four digit number(yyyy)
getMonth()=>Get month as a number(0-11)
getDay()=>Get weekday as a number(0-6)

</pre>	
   <hr/>
<script>
document.write("<pre>");

//파라미터가 없는 생성자를 이용한 날짜객체생성 // 타입이 다르다.
let today = new Date();
document.writeln("new Date()="+today);
document.writeln("new Date.getFullYear()="+today.getFullYear());
document.writeln("new Datetoday.toUTCString()="+today.toUTCString());
document.writeln("(타입이 다름)new Date().toDateString()="+today.toDateString().toUpperCase());
document.writeln("(타입이 다름)new Date().toString()="+today.toString());
document.writeln("(타입이 다름)new Date().toString()toUpperCase()="+today.toString().toUpperCase());
//String 객체로 형변환 됨
//today.toString()를 호출하면 String 객체를 리턴 받는다.
//리턴 받은 String 객체의 toUpperCase()를 호출하여 문자를 대문자로 변경




document.writeln("<hr/>");


document.write("</pre>");
</script>      
</body>

</html>