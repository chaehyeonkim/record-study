<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html><head><title>에러 페이지</title> 

<script>
function showDetail() {
	d = document.getElementById('detail');
	d.style.display = 'block';
}
</script>
</head>
<body>
<h3 id="header"><%= exception.getClass().getName() %></h3>
<div id="main">
	<%= exception.getMessage() %>
	<input type="button" onClick="showDetail()" value="상세보기">
	<div id="detail" style="display:none">
		<% exception.printStackTrace(new java.io.PrintWriter(out)); %>
	</div>
</div>
</body>
</html>
