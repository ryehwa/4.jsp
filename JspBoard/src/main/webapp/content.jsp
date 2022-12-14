<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="krh.board.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<%
	//글상세보기=>게시판(쇼핑물 상품의 정보를 자세히(SangDetial.jsp?sangid=3&pageNum=1))
	int num=Integer.parseInt(request.getParameter("num"));//게시물번호 정수
	String pageNum=request.getParameter("pageNum");//페이지 번호
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm");
	BoardDAO dbPro=new BoardDAO();
	BoardDTO article=dbPro.getArticle(num);
	//링크문자열의 길이를 줄이기위해서
	int ref=article.getRef();
	int re_step=article.getRe_step();
	int re_level=article.getRe_level();
	System.out.println("content.jsp의 매개변수 확인용");
	System.out.println("ref=>"+ref+",re_step=>"+re_step+",re_level=>"+re_level);
%>
<body bgcolor="#e0ffff">  
<center><b>글내용 보기</b>
<br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0"  bgcolor="#e0ffff" align="center">  
  <tr height="30">
    <td align="center" width="125" bgcolor="#b0e0e6">글번호</td>
    <td align="center" width="125" align="center">
	     <%=article.getNum() %></td>
    <td align="center" width="125" bgcolor="#b0e0e6">조회수</td>
    <td align="center" width="125" align="center">
	     <%=article.getReadcount() %></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="#b0e0e6">작성자</td>
    <td align="center" width="125" align="center">
	     <%=article.getWriter() %></td>
    <td align="center" width="125" bgcolor="#b0e0e6" >작성일</td>
    <td align="center" width="125" align="center">
	     <%=sdf.format(article.getReg_date()) %></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="#b0e0e6">글제목</td>
    <td align="center" width="375" align="center" colspan="3">
	     <%=article.getSubject() %></td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="#b0e0e6">글내용</td>
    <td align="left" width="375" colspan="3">
    <pre><%=article.getContent() %></pre></td>
  </tr>
  <tr height="30">      
    <td colspan="4" bgcolor="#b0e0e6" align="right" > 
	  <input type="button" value="글수정" 
       onclick="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" value="글삭제" 
       onclick="document.location.href='deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="답글쓰기" 
       onclick="document.location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="글목록" 
       onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
    </td>
  </tr>
</table>    
</form>      
</body>
</html>      
