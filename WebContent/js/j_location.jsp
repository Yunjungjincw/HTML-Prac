<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <title></title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css"/>
 <style></style>
 <script>
 </script>
</head>
<body>

<ul>js이용
 <li>
 	<button type="button" 
         onclick="location.replace('j_js01.jsp');">location.replace('j_js01.jsp')</button>
 </li>
 <li>
 	<button type="button" 
         onclick="location.assign('c_css01_p190.html');">location.assign('c_css01_p190.html')</button>
 </li>
 <li>
 	<button type="button" 
         onclick="location.reload();">location.reload()</button>
 </li>
 <li>location객체의 href속성이용:
 	<button type="button" 
         onclick="javascript:location.href='http://www.naver.com';">
        네이버로 이동</button>
 </li>
 <li>DOM이용:      
	<button type="button" onclick="changeURL()">네이트로 이동하고 싶으면 클릭 후 아래a태그를 클릭</button>
 </li>	        
</ul>        

*a태그이용:
<a href="http://www.naver.com" target="_self" id="i1">네이버로 이동</a>
<br/><br/>

<hr/>   
*request.getRequestURL():<%=request.getRequestURL() %> 


<hr/>
<h2>Location객체</h2>
<pre>
 -원래 Window객체의 location속성이지만 => winodw.location
  Location객체로 분리해서 사용가능
 -Location객체는 현재창의 URL에 대한 정보를 포함하고 있다.
 
 location.href=url : 지정주소로 이동.
 
 location.reload() : 새로고침
 location.replace(url) : 지정주소로 이동. back불가(이전 페이지로 이동 불가)<=Loads a new document
 location.assign(url)  : 지정주소로 이동. back가능(이전 페이지로 이동 가능)<=Replaces the current document with a new one
</pre>
<hr/>
<script>
 function changeURL(){
	 //location.href='http://www.nate.com';
	 //id가 i1요소에 접근=> a요소 =><a href="주소" target="~" id="i1">글자</a>
	 let obj=document.querySelector("a#i1");
	
	 //a요소 href값을      'http://www.nate.com'으로 변경
	 //<a href="http://www.nate.com" target="~" id="i1">글자</a>
	 obj.href='http://www.nate.com';
	 
	 //a요소 tartget값을 '_blank'으로 변경
	 //<a href="http://www.nate.com" target="_blank" id="i1">글자</a>
	 obj.target='_blank';
	 
	 //a요소 내부 글자를      'nate로 링크로 변경됨'으로 변경
	 obj.innerHTML='nate로 링크로 변경됨';
		 
 }



 document.write("<pre>");
 document.writeln("프로토콜://ip주소:port/Contextpath/");
 document.writeln("      현재 URL=>"+"http://localhost:8088/pro1/j_Location.jsp");
 document.writeln("location.href=>"+location.href);
 //location.href="http://www.naver.com";
 document.write("</pre>");
</script>
 
<hr><h2>History객체</h2><hr/>
<span onclick="history.back()" style="background-color:yellow">history.back()</span>  
<span onclick="history.go(-1)" style="background-color:orange">history.go(-1)</span>  
<span onclick="history.forward()" style="background-color:brown">history.forward()</span>  
<span onclick="history.go(1)" style="background-color:gray">history.go(1)</span>  
   
</body>
</html>







