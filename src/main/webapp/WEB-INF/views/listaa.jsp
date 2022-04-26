<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="cnt.jsp"/>
<title>Insert title here</title>
</head>
<body>

<div class="container">
  <h2>상품목록</h2><br>
  <div class="row">
    
    <c:forEach items="${lista}" var="s">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="detaild?dnum=${s.dnum}" target="_blank">
          <img src="${pageContext.request.contextPath}/dia/${s.picture}" style="width:200px; height:200px;">
          <div class="caption">
            <p>${s.name}</p>
            <p>￦ ${s.price}원</p>
          </div>
        </a>
      </div>
    </div>
    
    </c:forEach>
    
  </div>
</div>


</body>
</html>