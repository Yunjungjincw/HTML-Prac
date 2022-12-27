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
	 // $(selector).attr(attribute) =>속성 값을 반환
	   alert($("#img1").attr("src"));
  });
  
  $("#btn2").click(function(){
	 // $(selector).attr(attribute,value)=>속성 및 값을 설정
	  $("#img1").attr("width",150);
	  //<img src="images/naverLogo.PNG" id="img1" width="150"/>
  });
  
  $("#btn3").click(function(){
	 /* $(selector).attr({attribute:value, attribute:value,...})
	  =>{}를 사용하여  여러 속성 및 값 설정*/
	  $("#a1").attr(
			  					{
			  						"href" :"http://jQuery.com", 
		                "title":"jQuery",
		                "target":"_blank"
		              }
			  				 );
	  $("#img1").attr({"src":"../imges/naver.png", 
		                 "width":150,
		                 "height":50});
	  /*<a href="http://jQuery.com" title="jQuery" target="_self" id="a1">
	    <img src="images/jQueryLogo.PNG" id="img1" 
	  			 width="150" height="50"/>
	    </a>
	    */
  });
});//JQ끝
</script>
</head>
<body>
<a href="http://www.naver.com" title="네이버" target="_self" id="a1">
<img src="../imges/naver.png" id="img1"/>
</a>
<hr/>
*javascript식:
<button id="btn11" onclick="f1();">이미지src가져오기</button>
<button id="btn12" onclick="f2();">이미지너비변경</button>
<button id="btn13" onclick="f3();">이미지&링크 여러속성변경</button>

<hr/>
*jquery식:
<button id="btn1">이미지src가져오기</button>
<button id="btn2">이미지너비변경</button>
<button id="btn3">이미지&링크 여러속성변경</button>

<hr/>
 <h2>jQuery-DOM-attr()</h2>
<pre>
$(selector).attr(attribute) =>속성 값을 반환
$(selector).attr(attribute,value)=>속성 및 값을 설정
$(selector).attr({attribute:value, attribute:value,...})
=>{}를 사용하여  여러 속성 및 값 설정
$(selector).attr(attribute,function(index,currentvalue))
=>함수를 사용하여 속성과 값을 설정.
</pre> 
</body>
</html>