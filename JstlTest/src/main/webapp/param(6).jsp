<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  //response.sendRedirect("chooseTag(5).jsp?name2=bk");
  /*
  	<c:redirect url="이동할 페이지명" /> 그냥 이동만
  	<c:redirect url="이동할 페이지명" />
  		<c:param name="매개변수명" value="전달할 값">
  	</c:redirect>
  */
%>
<c:redirect url="chooseTag(5).jsp">
	<c:param name="name2" value="bk" />
</c:redirect>