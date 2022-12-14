<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Javascript 선언</title>
</head>
<body>

<span style="display:inline-block; background: olive; width:100px;" onMouseOver="alert('안녕');">span요소1</span>
<span style="display:inline-block; background: green; width:100px;" onMouseOut="alert('안녕');">span요소2</span>
	<form>
		<input type="button" id="btn1" value="클릭(btn1)" onclick="alert('hi!');">
	</form>



	<h2>Javascript 선언 방식 3가지 (p190)</h2>
	<p>web 문서에 동적효과, 유효성검사 등 </p>
	<h2> Javascript 선언방식 3가지</h2>
    <xmp>
    ●internal 방식: HTML문서안의 body 요소, HEAD 요소에 script선언
          -문법
      <head>
       <body>
         <script>
           	코드 작성
            function 함수명 (매개변수리스트){코드}
         </script>
       </body>
        <body>
         <script>
           	코드 작성
            function 함수명 (매개변수리스트){코드}
         </script>
       </body>


    ●external 방식:HTML 문서밖에서 별도의 JS문서
        -문법
      <head>
         <link rel="stylesheet" href="경로/파일명.css">
         <script src="경로/파일명.js"></script>
      </head>

     ●inline방식:특성요소에 Script를 이용
       -문법 
       <태그명 style="속성명:값; css속성명:값;"></태그명>
       예문<태그명 onClick="함수명(매개변수리스트);"></태그명>
     
  </xmp>
</body>
</html>