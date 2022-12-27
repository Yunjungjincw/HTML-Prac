<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#btn5").click(function(){
    $("#div1").remove();	//선택요소+ 자손요소 제거
  });
  $("#btn6").click(function(){
	    $("#div1").empty(); //자손요소 제거
	  });
});
</script>
</head>
<body>

<div id="div1" style="height:100px;width:300px;border:1px solid black;background-color:yellow;">

This is some text in the div.
<p>This is a paragraph in the div.</p>
<p>This is another paragraph in the div.</p>

</div>
<br>

<button id="btn5">Remove div element</button>
<button id="btn6">Empty the div element</button>


</body>
</html>
