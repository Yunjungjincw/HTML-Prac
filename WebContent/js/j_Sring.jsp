<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<title>Insert title here</title>
</head>
<body>
 <h2> String</h2>
 <hr>
 <hr>let str = "Apple, Banana, Kiwi";<br>
 let text1 = "Please visit Microsoft and Microsoft!";
 <hr>

 <p id="demo"></p>
<button type="button" onclick="fSlice();">slice(start, end)</button>
<button type="button" onclick="fsubstring();">substring(start, end)</button>
<button type="button" onclick="fsubstr();">substr(start, end)</button>
<button type="button" onclick="freplace();">replace(old, new)</button>
<button type="button" onclick="fcharAt();">charAt(index번호)</button>
<button type="button" onclick="fsplit();">split</button>
<button type="button" onclick="findexOf();">findexOf</button>
<script>


let demoEle = document.getElementById("demo")
let text = "Apple, Banana,orange ,Kiwi";
let text1 = "Please visit Microsoft and Microsoft!";
var text2 = "HELLO WORLD";
let text3 = "a,b,c,d,e,f";
let text7 = "PLZ visit Microsoft and Microsoft!";


function freplace(){		// 대소문자 구별해줘야함.
	//demoEle.innerHTML = text1.replace("Microsoft","제발제발제발");
	//demoEle.innerHTML = text1.replace(/MiCROSOFT/i,"제발제발제발");
	demoEle.innerHTML = text1.replace("Microsoft","제발제발제발");
}

function fcharAt (){
	demoEle.innerHTML = text1.charAt(text1.length-1);
} 

function fsplit(){
	const myArray = text.split(",");
	demoEle.innerHTML =  myArray[myArray.length-1];
	
	console.log(typeof myArray);
	console.log(myArray.length)
	
	//split 의 return 값은 배열로 리턴된다. 
	//typeof 로 타입확인하면 object로 나옴
}

function findexOf(){
	//let result = text7.indexOf("visit");
	//let result = text7.indexOf("Microsoft");
	//let result = text7.lastIndexOf("Microsoft",5);
	let result = text7.indexOf("Microsoft",11);
	demoEle.innerHTML = result; 
	
	//if( text7.indexOf("Microsoft")!=-1){
		//alert("찾앗다");
	//}
} 


//----------------------
//문자열 일부 추출_slice
function fSlice (){
	//let part = text.slice(7,13);
	//let part = text.slice(7);
/* 	let part = text.slice(-1); */
	let part = text.slice(-12,-6);
	// 음수면 뒤에서 부터 숫자를 카운트함. ( 뒤에서 첫번쨰면 -1,-2,-3  이런식으로)
	demoEle.innerHTML = part;
}

function fsubstring(){			//음수 지원하지 않는다.
	let part = text.substring(7,13);
	//let part = text.substring(7);
	//let part = text.substring(-1); 	//음수 지원하지 않는다.
	//let part = text.substring(13,7);
	demoEle.innerHTML = part;
}

function fsubstr(){
	//let part = text.substr(0,5) //apple
	let part = text.substr(-4)
	demoEle.innerHTML = part;
}

</script>

<pre>
slice(start, end): start는 0부터 시작. 
end는 미포함(그 앞까지 추출)
end 생략하면 문자열의 끝까지 추출
매개변수가 음수이면 위치는 문자열의 끝부터 계산됩니다.

subString(start, end): start는 0부터 시작. 
end는 미포함(그 앞까지 추출)
end 생략하면 문자열의 끝까지 추출
매개변수 음수 X

substr(start, end): start는 0부터 시작. 
end는 미포함(그 앞까지 추출)
end 생략하면 문자열의 끝까지 추출
매개변수가 음수이면 위치는 문자열의 끝부터 계산
 음수이면 위치는 문자열의 끝부터 계산됩니다.
 두 번재 매개변수가 추출된 부분의 길이를 지정한다.

split() : 메서드를 사용하여 문자열을 배열로 변환

indexOf(찾는 문자열, []생략) 메서드는 문자열에서 값이 처음 나타나는 위치를 반환
indexOf()메서드는 값을 찾을 수 없는 경우 -1을 반환
indexOf() 방법은 대/소문자를 구분



</pre>>
</body>
</html>