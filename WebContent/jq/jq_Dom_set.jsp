<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style>
	/* 클래스가 c1 요소에 포커스가 위치하면 테두리 설정*/
	input.c1:focus {border:15px solid green;}
</style>
<script>

function f1(){
	document.getElementById("test1").innerText="핼로 JS!"
	
}

function f2(){
	document.getElementsByTagName("p")[1].innerHTML="<u>자바스크립트</u>"
}
function f3(){
	document.getElementsByTagName("c1")[0].value="자바스크립트에서 설정~"
}


$(document).ready(function(){
  $("#btn1").click(function(){
    $("#test1").text("핼로 JQ!");
  });
  $("#btn2").click(function(){
    $("#test2").html("<b>Hello world!</b>");
  });
  $("#btn3").click(function(){
    $("#test3").val("Dolly Duck");
  });
});
</script>

</head>
<body>

<p id="test1">이 부분은 문단.</p>
<p id="test2">또 다른 문단.</p>

<p>Input field: <input type="text" id="test3" value="Mickey Mouse"></p>

<hr>


JS식 
<button id="btn11" onclick="f1()">Set Text</button>
<button id="btn22" onclick="f2()">Set HTML</button>
<button id="btn32" onclick="f3()">Set Value</button>

<hr>
JQ식
<button id="btn1">Set Text</button>
<button id="btn2">Set HTML</button>
<button id="btn3">Set Value</button>

</body>
</html>