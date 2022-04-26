<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center;"> 상품등록 </h1>
<form action="inputsave" method="post" enctype="multipart/form-data">
<table class="table table-hover" border="1" width="350" align="center">	
	<tr><th>상품명</th><td><div class="col-xs-3">       
        <input class="form-control" id="ex3" type="text" name="name">
      </div> </td></tr>
	<tr><th>상품제목</th><td><div class="col-xs-4">       
        <input class="form-control" id="ex3" type="text" name="title">
      </div> </td></tr>
	<tr><th>상품가격</th><td><div class="col-xs-3">       
        <input class="form-control" id="ex3" type="text" name="price">
      </div> </td></tr>
	<tr><th>상품설명</th><td><div class="form-group">
  <label for="comment">설명</label>
  <textarea class="form-control" rows="5" id="설명" name="content"></textarea>
</div></td></tr>
	<tr><th>상품사진</th><td><input type="file" name="picture"> </td></tr>
	<tr><td colspan="2" style="text-align: center;">
	 <input type="submit" value="상품등록">
	 <input type="reset" value="취소">
	</td>
	</tr>
</table>

</form>
</body>
</html>