<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력 화면</title>
</head>
<body>
<h1>입력 화면</h1>
<form:form modelAttribute="editCustomer">
<dl>
  <dt>이름</dt>
  <dd>
    <form:input path="name"/>
    <form:errors path="name"/>
  </dd>
  <dt>메일</dt>
  <dd>
    <form:input path="emailAddress"/>
    <form:errors path="emailAddress"/>
    <form:errors path="ngEmail"/>
  </dd>
  <dt>생년월일</dt>
  <dd>
    <form:input path="birthday"/>
    <form:errors path="birthday"/>
  </dd>
  <dt>좋아하는 숫자</dt>
  <dd>
    <form:input path="favoriteNumber"/>
    <form:errors path="favoriteNumber"/>
  </dd>
</dl>
<button type="submit" name="_event_proceed" value="proceed">
  다음으로
</button>
</form:form>
</body>
</html>
