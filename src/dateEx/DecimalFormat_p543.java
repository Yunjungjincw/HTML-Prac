package dateEx;

import java.text.DecimalFormat;

//DecimalFormat (숫자형식 클래스.p543)
//숫자 데이터를 원하는 형식으로 표현하기 위해서 패턴을 사용
public class DecimalFormat_p543 {

	public static void main(String[] args) {
		double n  = 1234567.89;
		System.out.println(n);
		
		DecimalFormat df = new DecimalFormat("0");
		System.out.println("0=>"+df.format(n));
		      
		df = new DecimalFormat("0.0");
		System.out.println("0.0=>"+df.format(n));
		      
		df = new DecimalFormat("00,000,000,000.00000");
		System.out.println("00,000,000,000.00000=>"+df.format(n));
		      
		df = new DecimalFormat("#");
		System.out.println("#=>"+df.format(n));

		df = new DecimalFormat("#.#");
		System.out.println("#.#=>"+df.format(n));
		      
		df = new DecimalFormat("#,###,###,###.#####");
		System.out.println("#,###,###,###.#####=>"+df.format(n));
		      
	 }

}

