<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h1 style="text-align: center;">상품상세</h1>
<body>
<div class="container"> 
<c:forEach items="${list}" var="ta">          
  <table class="table">
    <thead>
      <tr>      
        <th>상품명</th><td>${ta.name}</td></tr>
       <tr> <th>상품제목</th><td>${ta.title}</td></tr>
       <tr>   <th>상품가격</th><td>${ta.price}</td></tr>
       <tr>   <th>상품설명</th><td>${ta.content}</td></tr>
       <tr>    <th>상품사진</th><td><img  src="${pageContext.request.contextPath}/dia/${ta.picture}" width="300" height="300"></td></tr>          
        <tr>    <td colspan="2">
                <input type="button" value="상품목록" onclick="location.href='listt'">
                <input type="button" value="홈으로" onclick="location.href='index'">
            </td></tr>
     
    </thead>
  </table>
  </c:forEach>
</div>

</body>
</html>