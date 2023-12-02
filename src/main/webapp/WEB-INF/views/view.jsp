<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>상세페이지</title>
</head>
<body>

<h1>상세페이지</h1>

<table>
    <tr><td>카테고리:</td><td>${u.category}</td></tr>
    <tr><td>제목:</td><td>${u.title}</td></tr>
    <tr><td>작성자:</td><td>${u.writer}</td></tr>
    <tr><td>내용:</td><td>${u.content}</td></tr>
</table>

<a href="../list">목록보기</a>

</body>
</html>
