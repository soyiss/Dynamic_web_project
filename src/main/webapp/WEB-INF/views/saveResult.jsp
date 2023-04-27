<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        const result = '${result}';
        console.log(result);
        if(result > 0){
            alert("회원등록이 완료 되었습니다")
            location.href="/save";
        }else{
            alert("뭘 잘못했니?");
            location.href="/save";
        }
    </script>
</head>
<body>

</body>
</html>
