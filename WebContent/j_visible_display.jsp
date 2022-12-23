<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <title></title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css"/>
 <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
 <style>
.imgbox {
  float:left;
  text-align: center;
  width: 120px;
  border: 1px solid gray;
  margin: 4px;
  padding: 6px;
}

button {
  width: 100%;
}

.clear {clear:both;} //float:left, float:right된 것을 해제
</style>
 <script>
 
 </script>
</head>
<body>

<div class="imgbox" id="imgbox1">jQuery<br>
  <img src="./images/img_5terre.jpg" alt="Italy" id="img1" style="width:100%">
  <button onclick="$('#img1').toggle();">toggle()</button>
</div>



<div class="imgbox" id="imgbox1">dispaly속성<br>
  <img src="./images/img_5terre.jpg" alt="Italy" style="width:100%">
  <button onclick="removeElement()">Remove</button>
</div>

<div class="imgbox" id="imgbox2">visibility속성<br>
  <img src="./images/img_lights.jpg" alt="Lights" style="width:100%">
  <button onclick="changeVisibility()">Hide</button>
</div>

<div class="imgbox">js로 style제어<br>
  <img src="./images/img_forest.jpg" alt="Forest" style="width:100%">
  <button onclick="resetElement()">Reset All</button>
</div>

<script>
function removeElement() {
	//$('#imgbox1').css("display","none");
  document.getElementById("imgbox1").style.display = "none";
}

function changeVisibility() {
  document.getElementById("imgbox2").style.visibility = "hidden";
}

function resetElement() {
  document.getElementById("imgbox1").style.display = "block";
  document.getElementById("imgbox2").style.visibility = "visible";
}
</script>

<h2 class="clear">display:none과 visibility:hidden</h2>
<pre>
display:none     =>화면에 보이지x. 영역차지x
display:block | inline | inline-block로 하면 화면에 보인다

visibility:hidden=>화면에 보이지x. 영역차지o
visibility:visible로 하면 화면에 보인다

css에서는  선택자 {css속성명:값;}
#imgbox1 {display:none;}
#imgbox1 {display:block;}
#imgbox2 {visibility:hidden;}
#imgbox2 {visibility:visible;}

Javascript에서 style은 객체로서 취급
요소.style.css속성명=값;
document.getElementById("imgbox1").style.display = "none";
document.getElementById("imgbox1").style.display = "block";
document.getElementById("imgbox2").style.visibility = "hidden";
document.getElementById("imgbox2").style.visibility = "visible";
</pre>
<hr/>
   
   
   
</body>
</html>









