<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    	String str="안녕하세여!";
    	int a=5, b=-5;
    	public int abs(int n){
    		if(n<0){
    			n=-n;
    			
    		}
    		return n;
    	}
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>선언문(delaration)</title>
</head>
<body>
	<%
		out.print(str+"<br>");
		out.print(a+"의 절대값:"+abs(a)+"<br>");
		out.print(b+"의 절대값:"+abs(b)+"<br>");
	
	
	%>

</body>
</html>

<%--선언문에 선언한 변수는 서블릿 클래스의 필드로 선언
str은 JSP문서 전체에서 사용가능한 변수 _jspService()메서드 내에서 사용
선언문에서 변수선언과 정의만 할 수 있다. 변수의 값을 출력하거나 메서드 호출은 
스크립트릿 태그에서 해야한다. --%>

