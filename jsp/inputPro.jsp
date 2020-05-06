<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<div id="wrap">
	<h1>★회원정보★</h1>
	<div id="body">
			<table width="500px;">
				<colgroup>
					<col width="20%" />
					<col width="*" />
				</colgroup>
				<tr>
					<th colspan="2" class="subTitle">*아이디 입력</th>
				</tr>
				<tr>
					<th>사용자 ID</th>
					<td><%= request.getParameter("id") %></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><%= request.getParameter("passwd") %></td>
				</tr>
				<tr>
					<th colspan="2" class="subTitle">*개인정보 입력</th>
				</tr>
				<tr>
					<th>사용자 이름</th>
					<td><%= request.getParameter("name") %></td>
				</tr>
				<tr>
					<th>주민등록 번호</th>
					<td>
						<%= request.getParameter("jumin1") %> - <%= request.getParameter("jumin2") %>
					</td>
				</tr>
				<tr>
					<th>E-Mail</th>
					<td><%= request.getParameter("email") %></td>
				</tr>
				<tr>
					<th>Blog</th>
					<td><%= request.getParameter("blog") %></td>
				</tr>
				<tr>
					<th>우편번호</th>
					<td><%= request.getParameter("zipcode") %> </td>
				</tr>
				<tr>
					<th>주소</th>
					<td><%= request.getParameter("address") %></td>
				</tr>
			</table>
	</div>
	<div id="footer">
		The end!!
	</div>
</div>
</body>
</html>