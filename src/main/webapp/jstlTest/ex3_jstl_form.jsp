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
</head>
<body>
<!-- 한글엔코딩 -->
<fmt:requestEncoding value="utf-8"/>
	<form action="ex3_jstl_form.jsp" method="post" style="width: 200px;">
	  <h3>이름입력</h3>
	  <input type="text" name="irum" class="form-control">
	  <h3>가고싶은 나라</h3>
	  <input type="text" name="nara" class="form-control">
	  <br>
	  <button type="submit" class="btn btn-info">결과확인</button>
	</form>
	
	<!-- 이름을 입력시에만 결과가 나오게 -->
	<c:if test="${!empty param.irum }">
	  <h2>이름: ${param.irum }</h2>
	  </c:if>
	  <h3>나라: ${param.nara }</h3>  
	  
	  <c:choose>
	    <c:when test="${param.nara=='프랑스' }">
	      <h3 style="color: green;">프랑스는 에펠탑</h3>
	    </c:when>
	    <c:when test="${param.nara=='워씽씽' }">
	      <h3 style="color: magenta;">이성신은 워씽씽</h3>
	    </c:when>
	    <c:when test="${param.nara=='중국' }">
	      <h3 style="color: cyan;">이민규는 중국</h3>
	    </c:when>
	    <c:when test="${param.nara=='북한' }">
	      <h3 style="color: pink;">이민규는 북한군</h3>
	    </c:when>
	    <c:when test="${param.nara=='러시아' }">
	      <h3 style="color: blue;">이성신은 푸틴</h3>
	    </c:when>
	    <c:otherwise>
	      <h3 style="color: red;">${param.nara }는 해당사항없음!!! </h3>
	    </c:otherwise>
	  </c:choose>
	
</body>
</html>