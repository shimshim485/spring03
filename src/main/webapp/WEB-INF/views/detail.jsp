<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<caption>게시물 상세보기</caption>
<tr>
	<th>번호</th>
	<td>${boardDTO.no}</td>
</tr>
<tr>
	<th>제목</th>
	<td>${boardDTO.title}</td>
</tr>
<tr>
	<th>작성자</th>
	<td>${boardDTO.name}</td>
</tr>
<tr>
	<th>내용</th>
	<td>${boardDTO.content}</td>
</tr>
<tr>
	<th>작성일</th>
	<td><fmt:formatDate value="${boardDTO.regdate}" type="both"/></td>
</tr>
<tr>
	<th>조회수</th>
	<td>${boardDTO.readcount}</td>
</tr>
</table>

<a href="list?no=${boardDTO.no}&pg=${pg}">리스트</a>
<a href="update?no=${boardDTO.no}">수정</a>
<a href="delete?no=${boardDTO.no}">삭제</a>

</body>
</html>