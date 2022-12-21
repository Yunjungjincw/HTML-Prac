package dateEx;

import java.text.SimpleDateFormat;
import java.util.Date;

//SimpleDateFormat (날짜 형식 클래스 p545)
public class DateEx02_SimpleDateFormat {

	public static void main(String[] args) {
		//무엇을 어떻게 ? => 날짜를 어떤형식으로?
		Date today = new Date();
		
		//SimpleDateFormat(String pattern)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		
		
		//Mon Dec 19 14:45:09 KST 2022
		System.out.println("new Date()="+today);
		
		
		//어떤 형식으로 무엇을 출력?
		// 2022.//
		// SimpleDateFormat 참조변수.format(Date객체)=> String타입
		String strDate = sdf.format(today);
		System.out.println("sdf.format(today)="+strDate);
		
		
		sdf = new SimpleDateFormat("h:mm a");
		System.out.println("=>"+sdf.format(today));
		
		sdf = new SimpleDateFormat("K:mm a, z");
		System.out.println("=>"+sdf.format(today));
		
		sdf = new SimpleDateFormat("YYYY-'W'ww-u");
		System.out.println("=>"+sdf.format(today));
		
		sdf = new SimpleDateFormat("YYYY년 MM월 dd일");
		System.out.println("=>"+sdf.format(today));
		
		sdf = new SimpleDateFormat("오늘은 E요일");
		System.out.println("=>"+sdf.format(today));
		
		sdf = new SimpleDateFormat("올해의 D번째 날");
		System.out.println("=>"+sdf.format(today));
		
		sdf = new SimpleDateFormat("이 달의 d번째 날");
		System.out.println("=>"+sdf.format(today));
		
	}

}
