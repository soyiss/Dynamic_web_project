<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-27
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
    <style>
        .header{
            background-color: #0a53be;
            color: white;
            text-align: center;
            padding: 25px;
        }
        .nav{
            background-color: #648fce;
        }
        ul{
            /* 목록 기호 없애기 */
            list-style-type: none;
            /* 자식요소들에게 float가 적용되어 있을 때는
            부모 높이가 사라지는 현상이 생김 이럴땐 아래와 같이 속성을 준다 */
            overflow: hidden;

        }
        li{
            /* li 요소를 한줄로 */
            float: left;
        }
        li a{
            display: inline-block;
            padding: 15px 15px;
            /* a태그에 적용된 밑줄 없애기 */
            text-decoration: none;
            color: white;
        }

        li a:hover{
            background-color: rgb(56, 68, 67);
            color: rgb(250, 251, 253);
        }
        .section{
            background-color: #dcdcdc;
            color: black;
            height: 500px;
            text-align: center;
        }
        .footer{
            background-color: #719ddc;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
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
        <h1>홈쇼핑 회원 등록</h1>
        <form action="/update" method="post">
            <input type="hidden" name="custno" value="${member.custno}" readonly><br>
            회원성명 <input type="text" name="custname" value="${member.custname}"><br>
            회원전화 <input type="text" name="phone" value="${member.phone}"><br>
            회원주소 <input type="text" name="address" value="${member.address}"><br>
            가입일자<input type="text" name="joindate" value="${member.joindate}"><br>
            고객등급[A:VIP, B:일반, C:직원] <input type="text" name="grade" value="${member.grade}"><br>
            도시코드 <input type="text" name="city" value="${member.city}"><br>
            <input type="submit" value="수정">
        </form>
    </div>

</div>

<div class="footer">
    <h6>HRDKOREA Copyrightⓒ2016 All rights reserved. Human Resources Development Service od Korea</h6>
</div>



</body>
</html>
