<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
th,td{
text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${param.result=='loginfail'}">
		<script type="text/javascript">
		window.onload=function()
					  {
						alert("ID나 PW를 확인하세요!");
					  }
		</script>
	</c:when>
</c:choose>

<h2 align="center">로그인</h2><br>
<form action="loglog" method="post">
<table border="1" align="center">
<tr>
	<th>ID</th>
	<td>
		<input type="text" name="id">
	</td>
</tr>
<tr>
	<th>PW</th>
	<td>
		<input type="password" name="pw">
	</td>
</tr>
<tr>
	<td colspan="2" align="center">
		<input type="submit" value="로그인">&emsp;&emsp;
		<a href="newmem">
			<input type="button" value="회원가입">
		</a>
	</td>
</tr>
</table>
</form>

</body>
</html>