<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp" %>

<section class="contactus-section"><!-- div 영역표시 태그 대신에 사용 -->
<h1 class="section-title">CONTACT US</h1>
<div class="container">
<!-- form태그의 필수 속성= name, action-데이터를 전송할 대상. ,method-데이터를 전송하는 방법. -->
<!-- input 한줄입력 태그, textarea는 여러줄입력 태그. -->
<!-- label은 이름표, 입력태그와 라벨은 1:1 매칭이 되는 관계 -->
<form name="message_form" action="/contactus" method="post">
<!-- 스프링에서는 action으로 폼데이터를 전송할 위치를 지정할 때, contactus.html 직접x, /contact 처럼 컨트롤러를 통해 가능 -->
<fieldset>
<legend>타이틀영역</legend><!-- 현재 폼에 타이틀 영역 -->
<!-- 필드셋은 폼이 DB테이블의 필드와 1:1 매칭되는 관계 -->
<!-- 플레이스홀더: 공간에 자리를 차지하지 않으면서 입력힌트를 보여주는 역할 -->
<div class="input-class">
<label for="name">이름</label>
<input name="name" id="name" type="text" placeholder="Name">
<label for="phone">연락처</label>
<input name="phone" id="phone" type="text" placeholder="Telephone">
<label for="email">이메일</label>
<input name="email" id="email" type="email" placeholder="E-mail">
</div>
<div class="textarea-class">
<label for="message">메세지</label>
<textarea name="message" id="message" placeholder="Inquiry"></textarea>
</div>
</fieldset>
<div class="submit-btn">
<button type="submit">SUBMIT</button>
</div>
</form>
<!-- form 태그의 목적은 input, textarea, radio, select ...등을 
submit(전송) 하는것이 목적  -->
<!-- form 전송은 get(비보안용), post(보안용) -->
<!-- get방식은 유일하게 검색할때 사용됨 -->
</div>
</section>

<%@ include file="./include/footer.jsp" %>
