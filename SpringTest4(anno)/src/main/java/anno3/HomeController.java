package anno3;

import javax.annotation.Resource;

/*	공통점:자동으로 객체를 찾아서 넣어준다
 * 	차이점:byName vs byType
 * @Resource - byName(이름으로 찾아서 자동으로 객체를 넣어주는 개념)
 * 			   같은 클래스 자료형이 여러개 있을 때 어떻게 구분?->이름
 * @Autowired-byType(같은 자료형을 찾아서 자동으로 객체를 넣어주는 개념)
 */
public class HomeController {

	@Resource(name="camera2")//<bean id="camera2" class~ />
	private Camera camera2;
	
	private Camera camera3;
	private Camera camera4;
	/*
	 * 형식) @Resource(name="빈즈의 구분자id")->멤버변수에 적용
	 * 									  ->setXXX() 생략가능
	public void setCamera2(Camera camera2) {
		this.camera2 = camera2;
	}
	*/
	@Resource(name="camera3")//id가 camera3인 클래스 객체 찾아서 저장
	public void setCamera3(Camera camera3) {
		this.camera3 = camera3;
		System.out.println("setCamera3() call");
	}
	@Resource(name="camera4")//id가 camera4인 클래스 객체 찾아서 저장
	public void setCamera4(Camera camera4) {
		this.camera4 = camera4;
		System.out.println("setCamera4() call");
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "HomeController[camera2="+camera2+",camera3="+camera3+",camera4="+camera4+"]";
	}
	
}
