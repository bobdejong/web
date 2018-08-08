<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>multiply</title>
</head>
<body>
<%!
	public int multiply(int a,int b){
		return a*b;
}

%>

두 정수의 곱셈
<%=multiply(10,20) %>

</body>
</html>