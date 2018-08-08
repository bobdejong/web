<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>First JSP Program</title>
</head>
<body>
	<!-- scriptlet스크립트릿 -->
	<% 
	String strName="홍길동";
	%>
	
	<!-- expression(익스프레션)  -->
	내 이름은fdxfv
	<%=strName %>
	입니다.

</body>
</html>