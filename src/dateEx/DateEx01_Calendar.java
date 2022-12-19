package dateEx;

import java.util.Calendar;
import java.util.Date;

public class DateEx01_Calendar {
	public static void main(String[] args) {
		//Calendar 객체생성
		//Calendar today = new Calendar(); //에러
		//에러 발생함 => Calendar 클래스는 추상 클래스이므로
		//생성자는 존재하지만 추상클래스를 상속받는 클래스를 통해서 객체 생성이 가능.
		//외부에서 new Calendar()코드를 통해서는 사용할 수 없기 때문
		
		//Calendar 객체 생성 - Calendar.getInstance()
		Calendar today = Calendar.getInstance();
		System.out.println();
		System.out.println("Calendar today = Calendar.getInstance()결과="+today);
		System.out.println();
		System.out.println(today.get(Calendar.YEAR));
		System.out.println();
		System.out.println("today.toString():"+today.toString());
	}
}
//파라미터가 없는 생성자를 이용한 날짜객체생성
//		Date today = new Date();
//		System.out.println("new Date()="+today);
//		System.out.println("getYear()=>"+(today.getYear()+1900)); //2022s
//		System.out.println("getMonth()=>"+today.getMonth());
//		System.out.println("getDate()=>"+today.getDate());
//		System.out.println("getDay()=>"+today.getDay());
//		System.out.println("getHours()=>"+today.getHours());
//		System.out.println("getMinutes()=>"+today.getMinutes());
//		System.out.println("getSeconds()=>"+today.getSeconds());
//		System.out.println("getMilliseconds()=>"+today.getTimezoneOffset());
//		System.out.println("getTime()의 유형은 long(주의! int 아님)=>"+today.getTime());
//
//		
//		String day = "";
//		switch (today.getDay()) {
//		case 0:
//		  day = "Sunday";break;
//		case 1:
//		  day = "Monday";break;
//		case 2:
//		  day = "Tuesday";break;
//		case 3:
//		  day = "Wednesday";break;
//		case 4:
//		  day = "Thursday";break;
//		case 5:
//		  day = "Friday";break;
//		case  6:
//		  day = "Saturday";
//		}
//		
//		System.out.println(day);