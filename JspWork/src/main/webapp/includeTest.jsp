<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시어 특정(메인페이지)</title>
</head>
<body>
  <h3>이 페이지는 include 지시어를 연습하기 위해서 만들어진 페이지입니다.</h3>
  <h3>테스트 중입니다.</h3>
  <h3>테스트 중입니다.</h3>
  <%@include file="./sub/JspModule.java"%> 
  <h3>테스트 중입니다.</h3>
  <h3>테스트 중입니다.</h3>
  <%-- <%=getString() %> --%>
  <h3>테스트 중입니다.</h3>
  <h3>테스트 중입니다.</h3>
  <%-- <%=getString() %> --%>
  <h3>테스트 중입니다.</h3>
  <h3>테스트 중입니다.</h3>
  <%-- <%=getString() %> --%>
  <h3>테스트 중입니다.</h3>
  <h3>테스트 중입니다.</h3>
  <h3>테스트 중입니다.</h3>
  <%@include file="./bottom/bottom.html" %>
  
  
  
</body>
</html>