<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.BeanDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈즈가 나온 배경</title>
</head>
<body>

<%!
//입력->매개변수를 전달=>필드별로 구분해서 저장=>최종(테이블에 저장)

%>
메서드 호출(Setter Method):
<%
	request.setCharacterEncoding("utf-8");
	//1. 메서드를 불러오기 위해서 객체를 생성
	BeanDTO bd=new BeanDTO();
	//2.입력받은 갯수만큼 SetterMethod 호출
	bd.setName(request.getParameter("name"));
	bd.setAddr(request.getParameter("addr"));
	System.out.println("입력받은 이름은=>"+bd.getName());
	System.out.println("입력받은 주소는=>"+bd.getAddr());
%>
<p>
<b><%=bd.getName() %></b>님 잘 오셨습니다!
<b>주소는 <%=bd.getAddr() %></b>이군요!
</body>
</html>