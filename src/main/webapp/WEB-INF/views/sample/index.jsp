<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- html주석시작 jsp=Java Server Page 자바서버용페이지 -->
<%-- 자바주석 시작 하이픈 (-)
- jsp에서 자바프로그램을 사용할 때 쓰는 태그 <% %> 감싸줌. PHP는 <? ?>.
- @ page골뱅이는 애노테이션으로 발음-페이지지시자는 필수.
- 랭귀지:java, 콘텐츠타임:text/html;, 문자셋:유니코드, 페이지인코딩:UTF-8
--%>
<!-- - HomeController.java 에서 index.jsp로 매칭 시킨 결과가 나오는 페이지.
- html에서는 /resources/sample/index.html 이렇게 접근.
- jsp프로그램에서는 위html처럼 바로접근 못하고, 홈컨트롤러자바를 거쳐서 index.jsp를 접근.(보안때문.)
- 그래서 은행, 관공서, 대학 등등 에서 대부분 사용함. (스프링을 배우는 목적)
- 다른 예를 들면 php프로그램은 위html처럼 바로 파일에 접근이 가능. (그래서 중소기업 홈페이지에 사용.)
- 출발은 자바(pc용 애플리케이션, 웹프로그램도 만드는데 모두 사용됨.)
- 자바에서 출발한 스프링프레임워크는: 자바에서 웹프로그램 만드는데 특화된 라이브러리(프로그램묶음)를 
- 구조화 시켜서 개발자가 편하게 만들어 놓은것이 스프링프레임워크.(현재는 버전5.x, 우리는 4.3.22)
- 그러면 jsp는? 지금 보이는 프로젝트는 스프링MVC프로젝트.
- 여기 MVC에서 V(View)단에 해당하는 기술 부분이  jsp.
- M(Model=데이터베이스), V(View=jsp페이지), C(Controller=컨트롤러java클래스)
- org.edu.controller 패키지명: 자바클래스가 있는 폴더 경로를 말함.
- 패키지를 사용하는 이유:자바클래스를 기능별로 묶어놓기 위해서 명시적으로 만든것. -->

<%@ include file="./include/header.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- 위 부트스트랩 코어 입니다. -->

<section><!-- div 영역표시 태그 대신에 사용 -->
<!-- 본문 슬라이드 영역 시작 -->
<!-- 이미지를 불러오는 태그 img-->
<!-- 경로에는 상대경로(./img/...)와 절대경로(/resource/sample/img/...)가 있음. -->
<!-- 태그안쪽에 지정한 스타일을 인라인 스타일 -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/resources/sample/img/trip1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/sample/img/trip2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/sample/img/trip3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- 본문 슬라이드 영역 끝 -->
</section>

<%@ include file="./include/footer.jsp" %>
