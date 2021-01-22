<%--
  Created by IntelliJ IDEA.
  User: Y1830
  Date: 2020/12/12
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    成功！<br/>
    ${ requestScope.aaa }
    ${sessionScope}
    ${user.toString()}
</body>
</html>
