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
  $("#btn1").click(function(){
    $("p").append(" <b>★</b>");
  });

  $("#btn2").click(function(){
    $("ol").append("<li>Appended item</li>");
  });
   $("#btn3").click(function(){
	    $("p").append(" <b>○</b>");
	  });

	  $("#btn4").click(function(){
	    $("ol").append("<li>Appended item</li>");
	  });
});
	 
</script>
</head>
<body>

<p>This is a paragraph.</p>
<p>This is another paragraph.</p>

<ol>
  <li>List item 1</li>
  <li>List item 2</li>
  <li>List item 3</li>
</ol>

<button id="btn1">Append text</button>
<button id="btn2">Append list items</button>
<button id="btn3">Prepend text</button>
<button id="btn4">Prepend list items</button>

	
	<pre>
append()- 선택한 요소의 끝에 내용 삽입
prepend()- 선택한 요소의 시작 부분에 콘텐츠 삽입
after()- 선택한 요소 뒤에 내용 삽입
before()- 선택한 요소 앞에 콘텐츠 삽입
	
	</pre>
</body>
</html>