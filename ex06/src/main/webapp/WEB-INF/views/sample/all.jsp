<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- all or member or admin -->
<%-- <p>principal : <sec:authentication property="principal"/></p> --%>
<%-- <p>MemberVO : <sec:authentication property="principal.member"/></p> --%>

<%-- <p>사용자 권한 리스트  : <sec:authentication property="principal.member.authList"/></p> --%>
<sec:authorize access="isAnonymous()">
<h1>손님 어서오세요.</h1>
  <a href="/customLogin">로그인</a>

</sec:authorize>

<sec:authorize access="isAuthenticated()">
<h1> <sec:authentication property="principal.member.userName"/>님 환영합니다.</h1>
<p>사용자이름 : <sec:authentication property="principal.member.userName"/></p>
<p>사용자아이디 : <sec:authentication property="principal.username"/></p>
  <a href="/customLogout">로그아웃</a>

</sec:authorize>

</body>
</html>
