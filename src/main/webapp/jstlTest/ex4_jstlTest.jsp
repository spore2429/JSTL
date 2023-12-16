<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Moirai+One&family=Nanum+Pen+Script&family=Orbit&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
.out{
	background-color: skyblue;
	width: 300px;
}
</style>
</head>
<body>
	<form action="ex4_jstlTest.jsp" method="post">
	  <table class="table table-bordered" style="width: 300px;">
	    <tr>
	      <th>이름</th>
	      <td>
	        <input type="text" name="name" class="form-control"
	        style="width: 120px;">
	      </td>
	    </tr>
	    <tr>
	      <th>나이</th>
	      <td>
	        <input type="text" name="age" class="form-control"
	        style="width: 120px;">
	      </td>
	    </tr>
	    <tr>
	      <th>급여</th>
	      <td>
	        <input type="text" name="pay" class="form-control"
	        style="width: 120px;">
	      </td>
	    </tr>
	    <tr>
	      <th>가고싶은나라</th>
	      <td>
	        <input type="text" name="nara" class="form-control"
	        style="width: 120px;">
	      </td>
	    </tr>
	    
	    <tr>
	      <td colspan="2" align="center">
	        <button type="submit" class="btn btn-success">결과확인</button>
	      </td>
	    </tr>
	  </table>
	</form>
	
	<!-- 이름을 입력했을경우에만 div 출력 
	
		이름: 김영환
		나이: 19세(미성년자)..조건:20살 이상이면 성년 아니면 미성년
		월급여: 180만원  ..화폐단위와 천단위구분기호
		가고싶은나라: choose이용해서 
	-->
	  	<!-- 한글엔코딩 -->
	<fmt:requestEncoding value="utf-8"/>
	<div class="out">
	<c:if test="${!empty param.name }">
	  <h2>이름: ${param.name }</h2>
	 </c:if>
	<c:if test="${param.age>=20 }">
	<h2>나이: ${param.age }세 <b style="color: blue;">(성년)</b></h2>
	</c:if>
	<c:if test="${param.age<20 }">
	<h2>나이: ${param.age }세 <b style="color: green;">(미성년)</b></h2>
	</c:if>
  	<!-- currency: 3자리마다 컴마 화페단위 -->
  	<h2><fmt:formatNumber value="${param.pay }" type="currency"/></h2>
	<h2>가고싶은나라: ${param.nara }</h2>
  	<c:choose>
	    <c:when test="${param.nara=='프랑스' }">
	      <h3 style="color: green;">프랑스는 에펠탑</h3>
	    </c:when>
	    <c:when test="${param.nara=='대만' }">
	      <h3 style="color: magenta;">대만은 야시장</h3>
	    </c:when>
	    <c:when test="${param.nara=='미국' }">
	      <h3 style="color: cyan;">미국은 트럼프</h3>
	    </c:when>
	    <c:when test="${param.nara=='북한' }">
	      <h3 style="color: pink;">북한은 김정은</h3>
	    </c:when>
	    <c:when test="${param.nara=='러시아' }">
	      <h3 style="color: blue;">러시아는 푸틴</h3>
	    </c:when>
	    <c:otherwise>
	      <h3 style="color: red;">${param.nara }은(는) 해당사항없음!!! </h3>
	    </c:otherwise>
	  </c:choose>
	  </div>
</body>
</html>