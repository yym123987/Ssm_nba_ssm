<%--
  Created by IntelliJ IDEA.
  User: Y1830
  Date: 2020/12/29
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>设置</title>
    <!-- link标签用来引入css文件 -->
    <link rel="stylesheet" type="text/css" href="css/css01.css">
    <!-- style标签里面只能写css代码，css代码注释和Java相同 -->
    <style type="text/css">
        span{
            border: blue solid 1px;
        }
    </style>
    <script type="text/javascript" src="jQuery/jquery-3.5.1.js"></script>
    <script type="text/javascript">

    </script>
    <script tyre="text/javascript" src="js/注册.js"></script>
    <script type="text/javascript" src="js/设置.js"></script>
</head>
<body bgcolor="#f0fff0">
<!-- css:
    第一种:在标签的style属性上设置“key:value value;”,用来修改标签样式
    第二种:在head标签中，使用style标签定义各种自己需要的css样式
    格式：xxx{
                key: value value;
          }
    第三种:把css样式写成一个单独的css文件，再通过link标签引入即可复用
 -->
<h1 align="center">设置</h1>
<!--<span>设置</span>-->
<!--<div style="border: 1px solid red; background-color: white; width: 100px; height: 100px;  text-align: center">选项</div>-->
<table>
    <tr>
        <td><img src="imgs/suo.jpg" height="30" width="30"></td>
        <td><a href="03小窗口.html" target="abc"><h4>隐私与安全</h4></a></td>
    </tr>
    <tr><td><a><h4>常规</h4></a></td></tr>
    <tr><td><a><h4>搜索</h4></a></td></tr>
    <tr><td><a><h4>同步</h4></a></td></tr>
</table>

<!--<button id="aa">牛皮</button><br>
<td>用户名:</td>
<td><input type="text" id="username">
<td><span id="usSpan" style="color: white"></span></td>
<td><button onclick="onclickFun()">预览</button></td>-->
<iframe width="1100" height="700" align="right" name="abc"></iframe>

</body>
</html>