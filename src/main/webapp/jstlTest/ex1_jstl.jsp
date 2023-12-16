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
<h2>JSTL 태그 연산자 연산</h2>

<!-- 변수선언 -->
<c:set var="su1" value="7"/>
<c:set var="su2" value="4"/>

<b>두변수값 출력 (su1:${su1 },su2:${su2 })</b>
<table class="table table-bordered" style="width: 400px;">
  <tr>
    <th width="250">\${su1+su2 }</th>
    <td>
    	${su1+su2}
    </td>
  </tr>
   <tr>
    <th width="250">\${su1-su2 }</th>
    <td>
    	${su1-su2}
    </td>
  </tr>
   <tr>
    <th width="250">\${su1*su2 }</th>
    <td>
    	${su1*su2}
    </td>
  </tr>
   <tr>
    <th width="250">\${su1/su2 }</th>
    <td>
    	${su1/su2}
    </td>
  </tr>
   <tr>
    <th width="250">\${su1 div su2 }</th>
    <td>
    	${su1 div su2}
    </td>
  </tr>
   <tr>
    <th width="250">\${su1%su2 }</th>
    <td>
    	${su1%su2}
    </td>
  </tr>
   <tr>
    <th width="250">\${su1 mod su2 }</th>
    <td>
    	${su1 mod su2}
    </td>
  </tr>
   <tr>
    <th>su1 1증가</th>
    <td>
    	증가전su1: <c:out value="${su1 }"/><br>
    	<c:set var="su1" value="${su1+1 }"/>
    	증가후su1: ${su1 }
    </td>
  </tr>
</table>
</body>
</html>