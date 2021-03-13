import java.util.Scanner;

public class Triangles {

	public static void main(String[] args) {
		

	int allAnglesValue = 180;
	 Scanner sc = new Scanner(System.in);
	System.out.println("Vuvedete angle1 v gradusi");
	int angle1 = sc.nextInt();
	System.out.println("Vuvedete angle2 v gradusi");
	int angle2 = sc.nextInt();
	System.out.println("Vuvedete angle3 v gradusi");
	int angle3 = sc.nextInt();
	
	int sumAnglesValue = angle1 + angle2 + angle3;
	if (allAnglesValue == sumAnglesValue && angle1 !=0 && angle2 !=0 && angle3 !=0) {
	 
	if (angle1 == 60 && angle2 == 60 && angle3 == 60) {
		System.out.println("Tova e ravnostranen triugulnik");
	}
	
	if (angle1 < 90 && angle2 <90 && angle3 <90) {
		System.out.println("Tova e ostrougulen triugulnik");
	}
	
	if (angle1 == 90 || angle2 ==90 || angle3 ==90) {
		System.out.println("Tova e pravougulen triugulnik");
	}
	
	if (angle1 >90 || angle2 >90 || angle3 >90) {
		System.out.println("Tova e tupougulen triugulnik");
	}
		
	if (angle1 == angle2 || angle2==angle3 || angle1==angle3) {
		System.out.println("Tova e ravnobedren triugulnik");
		}
		
}else  {System.out.println("Tova ne e triugulnik");

	}
	}
		
		
		
		
		
		
		
		
		
		
	}
	

	
	
	
	
	
	



