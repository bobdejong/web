<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>myCount2</title>
</head>
<body>
	<%-- jsp comment --%>
	<%! int count=1; %> <%--선언문  --%>
	
	<%
	out.print("out 객체 사용한 count의 값 출력:"+count);
	%>
	<br>
	표현식을 사용한 count의 값 출력
	<%=count %>
	
</body>
</html>