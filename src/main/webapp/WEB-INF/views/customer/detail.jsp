<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 상세 정보</title>
</head>
<body>
<h1>고객 상세 정보</h1>
<dl>
  <dt>이름</dt>
  <dd><c:out value="${customer.name}"/></dd>
  <dt>메일</dt>
  <dd><c:out value="${customer.emailAddress}"/></dd>
  <dt>생년월일</dt>
  <dd><fmt:formatDate pattern="yyyy/MM/dd" value="${customer.birthday}"/></dd>
  <dt>좋아하는 숫자</dt>
  <dd><c:out value="${customer.favoriteNumber}"/></dd>
</dl>
<c:url value="/customer" var="url"/>
<a href="${url}">리스트</a>
</body>
</html>