<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-27
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
<%--    <style>--%>
<%--        .header{--%>
<%--            background-color: #0a53be;--%>
<%--            color: white;--%>
<%--            text-align: center;--%>
<%--            padding: 25px;--%>
<%--        }--%>
<%--        .nav{--%>
<%--            background-color: #648fce;--%>
<%--        }--%>
<%--        ul{--%>
<%--            /* 목록 기호 없애기 */--%>
<%--            list-style-type: none;--%>
<%--            /* 자식요소들에게 float가 적용되어 있을 때는--%>
<%--            부모 높이가 사라지는 현상이 생김 이럴땐 아래와 같이 속성을 준다 */--%>
<%--            overflow: hidden;--%>

<%--        }--%>
<%--        li{--%>
<%--            /* li 요소를 한줄로 */--%>
<%--            float: left;--%>
<%--        }--%>
<%--        li a{--%>
<%--            display: inline-block;--%>
<%--            padding: 15px 15px;--%>
<%--            /* a태그에 적용된 밑줄 없애기 */--%>
<%--            text-decoration: none;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        li a:hover{--%>
<%--            background-color: rgb(56, 68, 67);--%>
<%--            color: rgb(250, 251, 253);--%>
<%--        }--%>
<%--        .section{--%>
<%--            background-color: #dcdcdc;--%>
<%--            color: black;--%>
<%--            height: 500px;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .footer{--%>
<%--            background-color: #719ddc;--%>
<%--            color: white;--%>
<%--            text-align: center;--%>
<%--            padding: 15px;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>
<div class="header">
    <h2>쇼핑몰 회원관리 ver 1.0</h2>
</div>
<div class="main">
    <div class="nav">
        <ul>
            <li>
                <a href="/save">회원등록</a>
            </li>
            <li>
                <a href="/list">회원목록조회/수정</a>
            </li>
            <li>
                <a href="/">홈으로.</a>
            </li>
        </ul>
    </div>
    <div class="section">
        <h2>회원목록조회/수정</h2>
        <table class="table table-dark table-hover">
            <tr>
                <th>회원번호</th>
                <th>회원성명</th>
                <th>전화번호</th>
                <th>주소</th>
                <th>가입일자</th>
                <th>고객등급</th>
                <th>거주지역</th>
            </tr>

                <tr>
                    <td>${member.custno}</td>
                    <td>${member.custname}</td>
                    <td> ${member.phone}</td>
                    <td> ${member.address}</td>
                    <td> ${member.joindate}</td>
                    <td> ${member.grade}</td>
                    <td> ${member.city}</td>

                </tr>


        </table>
    </div>

</div>

<div class="footer">
    <h6>HRDKOREA Copyrightⓒ2016 All rights reserved. Human Resources Development Service od Korea</h6>
</div>
</body>
</html>
