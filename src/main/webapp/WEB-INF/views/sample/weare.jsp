<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./include/header.jsp" %>

<section class="weare-section"><!-- div 영역표시 태그 대신에 사용 -->

<section class="weare-header">
<h1 class="section-title">WE ARE</h1>
<p>
Where is your next destination?<br><!-- break(중지) return(엔터) 줄바꿈 태그 -->
Share and plan your trip with<br>
people around the world!
</p>
</section>
<!-- 갤러리 게시판에서 가져오는 데이터 4개 반복영역 -->
<section class="weare-body float-clear">
<ul>
<li>
<a href="javascript:;"><!-- a링크 태그에 가상링크# 대신에 javascript:; -->
<img src="/resources/sample/img/weare1.jpg" alt="갤러리 게시물1번 입니다.">
<h2>Global</h2>
<p>You can meet countless of people all around the world online!</p>
</a>
</li>
<li>
<a href="javascript:;">
<img src="/resources/sample/img/weare2.jpg" alt="갤러리 게시물2번 입니다.">
<h2>Communicative</h2>
<p>You can share and recommend your best travel experiences with other people.</p>
</a>
</li>
<li>
<a href="javascript:;">
<img src="/resources/sample/img/weare3.jpg" alt="갤러리 게시물3번 입니다.">
<h2>Solution</h2>
<p>You don't have to worry about your travel plan anymore. People will help you with your next travel plan!</p>
</a>
</li>
<li>
<a href="javascript:;">
<img src="/resources/sample/img/weare4.jpg" alt="갤러리 게시물4번 입니다.">
<h2>Satisfaction</h2>
<p>You don't have to wander around any more. Enjoy your trip as you planned!</p>
</a>
</li>
</ul>

</section>

</section>

<%@ include file="./include/footer.jsp" %>
