<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
<%@include file="./conponent/header.jsp" %>
<%@include file="./conponent/nav.jsp" %>
<div id="section">
    <h2>회원목록조회/수정</h2>
    <table>
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
        </tr>
        <c:forEach items="${memberList}" var="member">
            <tr>
                <td>
                    <a style="text-decoration: none; color: black"
                       href="/detail?custno=${member.custno}">${member.custno}</a>
                </td>
                <td>${member.custname}</td>
                <td>${member.phone}</td>
                <td>${member.address}</td>
                <td>${member.joindate}</td>
                <td>${member.grade}</td>
                <td>${member.city}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@include file="./conponent/footer.jsp" %>
</body>

</html>
