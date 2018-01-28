<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 리스트 화면</title>
</head>
<body>
<h1>고객 리스트 화면</h1>
<c:if test="${editedCustomer != null}">
이하 고객 정보가 변경되었습니다
<dl>
  <dt>이름</dt>
  <dd><c:out value="${editedCustomer.name}"/></dd>
  <dt>메일</dt>
  <dd><c:out value="${editedCustomer.emailAddress}"/></dd>
  <dt>생년월일</dt>
  <dd><fmt:formatDate pattern="yyyy/MM/dd" value="${editedCustomer.birthday}"/></dd>
  <dt>좋아하는 숫자</dt>
  <dd><c:out value="${editedCustomer.favoriteNumber}"/></dd>
</dl>
</c:if>
<table border="1">
  <tr>
    <th>ID</th>
    <th>이름</th>
    <th>메일</th>
    <th></th>
  </tr>
  <c:forEach items="${customers}" var="customer">
  <tr>
    <td><c:out value="${customer.id}"/></td>
    <td><c:out value="${customer.name}"/></td>
    <td><c:out value="${customer.emailAddress}"/></td>
    <td>
      <c:url value="/customer/${customer.id}" var="url"/>
      <a href="${url}">상세</a>
      <c:url value="/customer/${customer.id}/edit" var="url"/>
      <a href="${url}">변경</a>
    </td>
  </tr>
  </c:forEach>
</table>
</body>
</html>
