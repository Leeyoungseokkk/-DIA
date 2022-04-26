<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center;"> 상품수정 </h1>
<form action="modifya" method="post" enctype="multipart/form-data">
<table class="table table-hover" border="1" width="350" align="center">
	<c:forEach items="${list}" var="mo">
	<input type="hidden" name="dnum" value="${mo.dnum}">
	<tr><th>상품명</th><td><div class="col-xs-3">       
        <input class="form-control" id="ex3" type="text" name="name" value="${mo.name}"></div> </td></tr>
	<tr><th>상품제목</th><td><div class="col-xs-4">       
        <input class="form-control" id="ex3" type="text" name="title" value="${mo.title}"></div> </td></tr>
	<tr><th>상품가격</th><td><div class="col-xs-3">       
        <input class="form-control" id="ex3" type="text" name="price" value="${mo.price}"> </div> </td></tr>
	<tr><th>상품설명</th><td><div class="form-group">
  <label for="comment">설명</label>
  <textarea class="form-control" rows="5" id="설명" name="content">${mo.content}</textarea>
</div></td></tr>
	<tr><th>상품사진</th><td>
	 <img src="${pageContext.request.contextPath}/dia/${mo.picture}" width="200" height="200" >
	<input type="file" name="picture" > </td></tr>
	<tr><td colspan="2" style="text-align: center;">
	 <input type="submit" value="상품수정">
	 <input type="reset" value="취소">
	</td>
	</tr>
</c:forEach>
</table>

</form>
</body>
</html>