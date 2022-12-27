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
 <style>
  #panel, #flip {
	  padding: 5px;
	  text-align: center;
	  background-color: #e5eecc;
	  border: solid 1px #c3c3c3;
	}
	
	#panel {
	  padding: 50px;
	  display: none;
	}
 </style>
<script>
function f1(){
	alert('hide후 호출실행되는 콜백함수~~~~~');
}

$(document).ready(function(){
	$("#hide").click(function(){
			//콜백함수뒤에는 ()를 쓰지x
		$("p").hide("slow",f1);
	});

	$("#show").click(function(){
		$("p").show("fast",function(){alert('show후 호출실행됩니다');});
	});
	
	$("#toggle").click(function(){
		$("p").toggle(500,function(){alert('호출');});
	});
	
  $("button#btn1").click(function(){
    $("#div1").fadeToggle();
    $("#div2").fadeToggle("slow");
    $("#div3").fadeToggle(3000);
  });
  
  //slideDown()과 slideUp()이 번갈아 실행
  $("#flip").click(function(){
	  $("#panel").slideToggle("slow");
	});
});//
</script>
</head>
<body>
<p>Demonstrate fadeToggle():slideDown()과 slideUp()이 번갈아 실행</p>
<div id="flip">Click to slide the panel down or up</div>
<div id="panel">Hello world!</div>

<hr/>
<p>Demonstrate fadeToggle() with different speed parameters.</p>
<button id="btn1">Click to fade in/out boxes</button><br><br>

<div id="div1" style="width:80px;height:80px;background-color:red;"></div>
<br>
<div id="div2" style="width:80px;height:80px;background-color:green;"></div>
<br>
<div id="div3" style="width:80px;height:80px;background-color:blue;"></div>

<hr/>
<p>If you click on the "Hide" button, I will disappear.</p>

<button id="hide">Hide</button>
<button id="show">Show</button>
<button id="toggle">toggle</button>

<hr/>
 <h2>jQuery effect</h2>
<pre>
$(selector).hide(speed[,callback]);
	=>speed는 "slow", "fast", 숫자(ms)
	=>callback hide된 후에 호출실행되는 콜백함
$(selector).show(speed[,callback]);
$(selector).toggle(speed,callback);
	=>hide()와 show()가 번갈아 실행
</pre> 

 <hr/>
</body>
</html>






