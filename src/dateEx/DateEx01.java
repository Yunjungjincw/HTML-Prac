package dateEx;

import java.util.Date;

public class DateEx01 {
	public static void main(String[] args) {
		//파라미터가 없는 생성자를 이용한 날짜객체생성
		Date today = new Date();
		System.out.println("new Date()="+today);
		
		System.out.println("getYear()=>"+(today.getYear()+1900)); //2022s
		System.out.println("getMonth()=>"+today.getMonth());
		System.out.println("getDate()=>"+today.getDate());
		System.out.println("getDay()=>"+today.getDay());
		System.out.println("getHours()=>"+today.getHours());
		System.out.println("getMinutes()=>"+today.getMinutes());
		System.out.println("getSeconds()=>"+today.getSeconds());
		System.out.println("getMilliseconds()=>"+today.getTimezoneOffset());
		System.out.println("getTime()의 유형은 long(주의! int 아님)=>"+today.getTime());

		
		String day = "";
		switch (today.getDay()) {
		case 0:
		  day = "Sunday";break;
		case 1:
		  day = "Monday";break;
		case 2:
		  day = "Tuesday";break;
		case 3:
		  day = "Wednesday";break;
		case 4:
		  day = "Thursday";break;
		case 5:
		  day = "Friday";break;
		case  6:
		  day = "Saturday";
		}
		
		System.out.println(today.getDay());
	}
}
