<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
   <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body{
background-color: black;
}
h1{
color: red;
}
h2{
color: blue;
}
</style>
</head>
<body>
<h1>에러 페이지입니다.</h1>
<h2>관리자만 사용 가능합니다.</h2>
<%-- <h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage() }"/></h2> --%>

<%-- <h2><c:out value="${msg}"/></h2> --%>
</body>
</html>