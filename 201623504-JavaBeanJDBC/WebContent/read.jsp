<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "testBean.studentDAO" %>
<%@ page import = "testBean.studentVO" %>
<%@ page import = "java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
studentDAO select = new studentDAO();
List<studentVO> rslist = new ArrayList<studentVO>();
rslist = select.select();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
for(int i=0;i<rslist.size();i++){
 studentVO student = (studentVO)rslist.get(i); //List에서 record를 하나씩 가져온다
 %>
 <%= student.getNumber()%>
 <%= student.getName()%>
 <%}%>
</body>
</html>