<%@page import="java.util.Date"%>
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
  <!-- jstl 변수선언 -->
  <c:set var="name" value="김영환"/>
  <c:set var="age" value="25"/>
  <c:set var="today" value="<%=new Date() %>"/>
  
  <!-- jstl 출력법 _1 -->
  <h2>이름: <c:out value="${name }"/></h2>
  
   <!-- jstl 출력법 _2 -->
  <h2>이름: ${name }</h2>
  <h2>나이: ${age }</h2>
  <h2>날짜: ${today }</h2>
  
  <!-- pattern 이용한 fmt날짜형식 -->
  <fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm"/><br>
  <fmt:formatDate value="${today }" pattern="yyyy-MM-dd a hh:mm"/><br>
  <fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm EEE"/><br>
  <fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm EEEE"/><br>
  <fmt:formatDate value="${today }" pattern="yyyy년MM월dd일"/>
  
  <c:set var="money" value="999999"/>
  <c:set var="num1" value="123.456789"/>
  
  <!-- 숫자출력 -->
  <pre>
  	${money }
  	${num1 }
  	
  	<!-- number: 3자리마다 컴마 -->
  	<fmt:formatNumber value="${money }" type="number"/>
  	
  	<!-- currency: 3자리마다 컴마 화페단위 -->
  	<fmt:formatNumber value="${money }" type="currency"/>
  	
  	<!-- pattern -->
  	<fmt:formatNumber value="${num1 }" pattern="0.00"/>
  	
  	<fmt:formatNumber value="1.5" pattern="0.00"/>
  	
  	<fmt:formatNumber value="1.5" pattern="0.##"/>
  </pre>
  	<!-- if문 -->
  	<!-- 변수선언 -->
  	<c:set var="num1" value="7"/>
  	<c:set var="num2" value="4"/>
  	
  	<!-- 출력:c:out은 생략가능 -->
  	숫자1: ${num1 }<br>
  	숫자2: ${num2 }<br>
  	
  	<!-- 조건문 c:if..else없음-->
  	<c:if test="${num1>num2 }">
  	  <h2>숫자 1이 더큽니다!!</h2>
  	</c:if>
  	<c:if test="${num1<num2 }">
  	  <h2>숫자 2가 더큽니다!!</h2>
  	</c:if>
  	
  	<!-- if문 -->
  	<c:set var="nara" value="프랑스"/>
  	
  	<c:if test="${nara=='체코' }">
  	  <h2>체코에서 한달살기 하고싶다</h2>
  	</c:if>
  	<c:if test="${nara=='프랑스' }">
  	  <h2>프랑스의 에펠탑에서 와인마시기</h2>
  	</c:if>
  	

</body>
</html>