<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="krh.board.*"%>

 <%
 String pageNum=request.getParameter("pageNum");//멤버변수X
 //추가
 String passwd=request.getParameter("passwd");//입력O
 int num=Integer.parseInt(request.getParameter("num"));
 System.out.println("deletePro.jsp의 num="+num+",passwd="+passwd+",pageNum="+pageNum);
 BoardDAO dbPro=new BoardDAO();
 int check=dbPro.deleteArticle(num,passwd);//수정유무
 if(check==1){//글 삭제에 성공했다면
 %>
 <meta http-equiv="Refresh"
 content="0;url=list.jsp?pageNum=<%=pageNum%>">
 <%}else{%>
 <script>
 alert("비밀번호가 맞지 않습니다.\n다시 비밀번호를 확인요망");
 history.go(-1);
 </script>
 <%}%>