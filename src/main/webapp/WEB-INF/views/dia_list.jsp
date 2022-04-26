<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table,th,td{
text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2 style="text-align: center;">상품 리스트</h2>
  <c:forEach items="${list}" var="di">         
  <table class="table table-hover table-condensed" style="text-align: center;">
    <thead>
      <tr>
        <th>등록번호</th>
        <th>상품명</th>
        <th>상품제목</th>
        <th>가격</th>       
        <th>상품사진</th>       
        <th>수정/삭제</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${di.dnum}</td>
        <td>
        <a href="detail?dnum=${di.dnum}">
        ${di.name}
        </a>
        </td>
        <td>${di.title}</td>
        <td>${di.price}</td>       
        <td><img src="${pageContext.request.contextPath}/dia/${di.picture}" width="50" height="50"></td>    
        <td>
        <a href="modify?dnum=${di.dnum}">
         <button> 수정 </button>
        </a>
        <a href="delete?dnum=${di.dnum}">
         <button>   삭제</button>
        </a>
        
        </td>
      </tr>
      
    </tbody>
  </table>
  </c:forEach>
</div>
</body>
</html>