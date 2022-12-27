<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <title></title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css"/>
 <!-- download방식으로 jQuery연동
 <script src="js/jquery-3.6.3.min.js"></script> -->
 <!-- CDN방식으로 jQuery연동 -->
 <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
 <style></style>
 <script>
 //JS
 function showText(){
	 t= document.getElementById("test").innerText
	 alert(t);
 }
 
function showVal(){
	let t = document.getElementById("uName").value;
	alert(t);
}
 
 //jQuery
 $(document).ready(function(){
 $("#btn1").click(function(){
	 let t = $("#test").text();
	 alert(t);
	 /* alert($("#test").text()); */
 })
 	
 	
 	$("#btn2").click(function(){
 	 let t=$("#test").html();
	 alert(t);  
 	});
 	
 
 	$("#btn3").click(function(){
 	 	 let t=$("#uName").val();
 		 alert(t); 
 	}); 
 });
 </script>
</head>
<body>
<form name="frm1" id="frm1">
 *이름:<input type="text" name="uName" id="uName"/>
</form>
<p id="test">이 문단(p) 안에 <b>bold</b>적용한 부분도 있어요.</p>
*javascript식 : 
<button id="btn0"  onclick="showText();">Show Text</button>
<button id="btn00" onclick="showHtml();">Show HTML</button>
<button id="btn000" onclick="showVal();">Show value</button>
<hr/>

*jquery식 :
<button id="btn1">Show Text</button>
<button id="btn2">Show HTML</button>
<button id="btn3">Show value</button>

<hr/>
<h2>jQuery DOM-get</h2>
<pre>
text()- 선택한 요소의 텍스트 내용을 설정하거나 반환합니다.
html()- 선택한 요소의 내용을 설정하거나 반환합니다(HTML 마크업 포함).
★★★★★val()- 양식 필드의 값을 설정하거나 반환합니다.
$(selector).val()=>값 가져오기.
$(selector).val(value)=>값 설정하기.
$(selector).val(function(index,currentvalue))=>함수를 사용하여 값 속성을 설정합니다.
</pre>
<hr/>


<script>
function showHtml(){
 let t=document.querySelector("#test").innerHTML;
 alert(t); 
}
</script>


</body>
</html>