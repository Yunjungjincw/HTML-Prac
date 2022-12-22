<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>j_window03.jsp</title>
<script>
//let childwin; 선언
 let childwin;
let btn_findZip;
 function openWindow(){
	 //childwin j_childWindow.jsp open
		childwin=window.open("j_childWindow.jsp","nw","left=100");
	}
	
	function closeWindow(){
		//childWin 은 위에서 할당한 정보를 바탕으로 close(); 사용해서 닫아줌.
		childwin.close();
	}
	
</script>
</head>
<body>
<h2>j_window03.jsp</h2>
<pre>
*기준문서 : http://localhost:8088/pro1/j_window03.jsp 
*상대문서 : http://localhost:8088/pro1/j_childWindow.jsp
</pre>
<hr>
<!-- 이름과 id form
text 필드타입 이름과 id address1
text 필드타입 이름과 id address2
text 필드타입 이름과 id zipcode1-
text 필드타입 이름과 id zipcode2-
우편번호 찾기 버튼 생성 이름과 id btn_findZip
클릭시 openWindow() 호출 -->

<form name="frm" id="frm">
	*주소:<input type="text" name="address1" id="address1"><br>
	*상세주소<input type="text" name="address2" id="address2"><br>
	*우편번호<input type="text" name="zipcode1" id="zipcode1" size="3">-
				 <input type="text" name="zipcode2" id="zipcode2" size="3"><br>
	<input type="button" value="우편번호 찾기" name="btn_findZip" id="btn_findZip" onclick="openWindow()">

</form>
<!-- <button type="button" onclick="btnfindZip">우편번호 찾기</button>
https://7942yongdae.tistory.com/76
	<button type="button" onclick="openWindow()">새창열기</button>
	<button type="button" onclick="closeWindow()">새창닫기</button> -->
	
</body>
</html>