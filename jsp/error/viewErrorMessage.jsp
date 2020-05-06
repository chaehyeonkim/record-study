<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 발생</title>
</head>
<body>

요청 처리 과정에서 예외가 발생하였습니다.<br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.
<p>
<!--  
exception 기본 객체 : 발생한 예외 객체
exception.getMessage() : 예외 메시지
exception.printStackTrace() : 예외 추적 메시지 출력 -->
에러타입:<%=exception.getClass().getName() %><br>
에러메세지:<%=exception.getMessage() %>
</body>
</html>