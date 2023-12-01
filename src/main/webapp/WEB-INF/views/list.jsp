<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.spring.board.BoardDAO, com.spring.board.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>제목</th>
        <th>작성자</th>
        <th>내용</th>
        <th>카테고리</th>
        <th>등록일자</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getCategory()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="editform/${u.getSeq()}">수정</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">삭제</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">새로운 게시물 추가</a>
</body>
</html>