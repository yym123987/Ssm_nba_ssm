<%--
  Created by IntelliJ IDEA.
  User: Y1830
  Date: 2020/12/12
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>贪吃蛇网站</h1>
    <a href="helloController/hello">开始游戏</a><br/>
    <a href="helloController/addParma?username=cqupt&password=123456">点击传入参数</a>
    <form action="helloController/saveUser" method="post">
        用户名:<input type="text" name="username"><br/>
        密码:<input type="password" name="password"><br/>
        金额:<input type="text" name="money"><br/>
        <input type="submit" value="提交">
    </form>
    <a href="helloController/testCookieValue">获取Cookie</a><br/>
    <a href="helloController/testSessionAttribute">SessionAttributes</a><br/>
    <a href="helloController/getSessionAttribute">getSessionAttribute</a><br/>
    <a href="helloController/deleteSessionAttribute">deleteSessionAttribute</a><br/>
    <a href="helloController/testString">testString</a><br/>
    <a href="helloController/testVoid">testVoid</a><br/>
    <h3>传统文件上传</h3>
    <form action="helloController/fileUpload1" method="post" enctype="multipart/form-data">
        选择文件:<input type="file" name="upload">
        <input type="submit" value="上传">
    </form>
    <h3>SpringMvc框架写文件上传</h3>
    <form action="helloController/fileUpload2" method="post" enctype="multipart/form-data">
        选择文件:<input type="file" name="upload">
        <input type="submit" value="上传">
    </form>
</body>
</html>
