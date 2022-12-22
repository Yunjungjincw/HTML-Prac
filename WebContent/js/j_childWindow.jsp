<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
<meta charset="UTF-8">
<title>j_childWindow.jsp</title>
<script>
function findZip(obj){
	  //alert(obj); //변수obj에는  객체 HTMLInputElement의 value속성의 값
	  //1-1.클릭한 버튼의 글자를 가져와
	  //=>클릭이벤트가 발생한 버튼객체의 value속성의 값을 가져오기
	  
	  //"서울시 강남구 역삼동 100번지 123-123"
	  const myArray = obj.split(" ");
		//alert(myArray);//서울시,강남구,역삼동

		//1-2.문자열에서 추출
	  //주소추출=>"서울시 강남구 역삼동"
		let addr=myArray[0]+" "+myArray[1]+" "+myArray[2];
		//console.log(addr);////"서울시 강남구 역삼동"
	  
	  //상세주소추출=>"100번지"
	  //let addr2 = ~~
	  
	  //우편번호 앞 추출=>"123"
	  let zip1=obj.slice(-7,-4); //console.log(zip1);
	  
		//우편번호 뒤 추출=>"123"
	  let zip2=obj.slice(-3); 	//console.log(zip2);
	  
		//2.j_window03.jsp의 폼에 출력한다
		//=>부모창의 문서안의 폼 하위 특정필드에 접근
		//alert(opener.frm.address1); //object HTMLInputElement
		//==>특정필드객체의 value속성의 값을 설정
		
		//계층구조를 이용하여 특정요소에 접근
		opener.frm.address1.value=addr;
		
		//document객체의 getElementById()를 이용하여  특정요소에 접근
		opener.document.getElementById("zipcode1").value=zip1;
		
		//document객체의 querySelector()를 이용하여  특정요소에 접근
		//selector의 구체적인 그룹과 일치하는 document안 첫번째 요소를 반환한다. 일치하는게 없으면 null반환한다
		//여기에서는 input요소중 id가 zipcode2인요소에 접근
		//<input ~~~ id="zipcode2">
		opener.document.querySelector("input#zipcode2").value=zip2;
}
</script>
</head>
<body>


	<h2>j_childWindow.jsp</h2>
	<form name="zipCodeFrm"id="zipCodeFrm" action="">
		<input type="button" id="btn1" value="서울시 강남구 역삼동  100번지 123-123" onclick="findZip(this.value);"/><br>
		<input type="button" id="btn2" value="서울시 송파구 잠실동  123번지 456-789" onclick="findZip(this.value);"/><br>
		<input type="button" id="btn3" value="서울시 구로구 온수동  100번지 111-111" onclick="findZip(this.value);"/><br>
		<input type="button" id="btn4" value="경기도 성남시 상평동  100번지 222-222" onclick="findZip(this.value);"/><br>
		<input type="button" id="btn5" value="서울시 강남구 면목동  100번지 333-333" onclick="findZip(this.value);"/><br>
		<input type="button" id="btn6" value="용인시 처인구 모현읍  1번지 555-555" onclick="findZip(this.value);"/><br>
		<!-- <input type="button" id="btn7" value="경기도 수원시 영통구 영통동 11번지  777-777" onclick="findZip(this.value);"/><br>
	 -->
	
	</form>
	<hr>
  <button type="button" onclick="window.close();">자신창닫기</button>
  <button type="button" onclick="self.close();">자신창닫기</button>
  <button type="button" onclick="opener.close();">부모창닫기</button>
</body>
</html>