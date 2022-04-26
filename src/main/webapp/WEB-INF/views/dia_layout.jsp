<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#dia_footer{
 clear:both;
width:100%;
height:30px;
line-height:30px;
font-size:15px;
color:#000000;
border : 0px solid  #bcbcbc;
background-color:  olive;
position: fixed;
top:920px;
text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">
    <div id ="dia_top">
        <tiles:insertAttribute name="dia_top"/>
    </div>
    <div id ="body">
        <tiles:insertAttribute name="body"/>
    </div>
    <div id ="dia_footer">
        <tiles:insertAttribute name="dia_footer"/>
    </div>
</div>
</body>
</html>