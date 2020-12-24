//네이티브(오리지널-옛날부터) 자바스크립트로 햄버거 메뉴액션 구현(아래)
//document.getElementById("css 아이디영역");
//함수의 기본형은 아래와 같습니다.
function Add(a, b) {//a,b 받아서 구현(아래) 매개변수=인자=파라미터 
	var sum = a+b;
	alert(a + "더하기" + b + " 는 " + sum + "입니다.");
}
//Add(3,5);//실행은 함수명을 호출하면 실행이 됨.

//j쿼리 기본형식 사용
$(document).ready(function(){
	$(".menu-toggle-btn").click(function(){
		//alert("제이쿼리로 햄버거 메뉴를 클릭하였습니다.");//디버그
		$(".gnb").stop().slideToggle("fast");//j쿼리 함수는 뒤에서부터 앞으로 해석
	});
});

//네이티브 자바스크립트로 햄버거 메뉴 제어하기
//document.getElementById 는 1개의 값만 리턴(출력)됨.
//document.getElementsByClassName 은 배열값을 리턴(출력)됨.
/* window.onload = document_ready;//문서를 미리 읽어들이고 함수를 실행. j쿼리에 $(document).ready()
function document_ready() {
	var menu_toggle_btn = document.getElementsByClassName("menu-toggle-btn");
	menu_toggle_btn[0].onclick = function() {
		alert('네이티브 JS로 햄버거 메뉴를 클릭하였습니다.');
	}
} */