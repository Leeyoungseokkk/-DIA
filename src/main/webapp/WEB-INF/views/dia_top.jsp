<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#login{font-size: 20px;}
#logon{font-size: 20px; color: white}
</style>
<jsp:include page="cnt.jsp"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h1 style="text-align: center;"><img src="${pageContext.request.contextPath}/dia/로고.jpg" width="100" height="100">  </h1>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index"><img src="${pageContext.request.contextPath}/dia/로고2.jpg" width="40" height="40"> </a>
    </div>
    <ul class="nav navbar-nav">    
            <li><a href="listt">다이아상품</a></li>
      
           <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">상품문의</a></li>
          <li><a href="#">문의목록</a></li> 
          </ul>       
          </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
     
     <c:choose>
    	<c:when test="${logon==true && mdto != null }">
    		<p id="logon">어서오세요 ${mdto.id}님 <a href="logout">Logout</a></p>
    	</c:when>
    	<c:otherwise>
    		<li id="login"><a href="login">Login</a></li>
    	</c:otherwise>
    </c:choose>
    </ul>
  </div>
  <c:choose>
	<c:when test="${logon==true && mdto != null}">
	 <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">상품관리
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="input">상품등록</a></li>
          <li><a href="list">상품목록</a></li>         
        </ul>
      </li>
      </ul>
       <ul class="nav navbar-nav">
      <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">사원관리
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">사원등록</a></li>
          <li><a href="#">사원목록</a></li>         
        </ul>
        </li>
        </ul>
	</c:when>
</c:choose>  
 
</nav>
</body>
</html>