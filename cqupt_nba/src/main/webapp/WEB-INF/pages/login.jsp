<%--
  Created by IntelliJ IDEA.
  User: Y1830
  Date: 2020/12/29
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <!-- 写base标签永远固定相对路径跳转的结果-->
    <!--<base href="http://127.0.0.1:9999/cqupt_nba/">-->
    <script type="text/javascript" src="jQuery/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(function () {
            /*//给登录按钮绑定单机事件
            $("#submit").click(function () {
                //验证用户名
                var usernameText = $("#username").val();
                var usernamePatt=/^\w{8,14}$/;
                if(!usernamePatt.test(usernameText)){
                    $("#usSpan").html("<img src=\"imgs/false.jpg\" width=\"15\" height=\"15\">");
                    return false;
                }else {
                    $("#usSpan").html("<img src=\"imgs/right.jpg\" width=\"15\" height=\"15\">");
                }
                //验证密码
                var passwordText = $("#password").val();
                var passwordPatt=/^\w{8,14}$/;
                if(!passwordPatt.test(passwordText)){
                    $("#pSpan").html("<img src=\"imgs/false.jpg\" width=\"15\" height=\"15\">");
                    alert("密码或用户名输入错误！")
                    return false;
                }else {
                    $("#pSpan").html("<img src=\"imgs/right.jpg\" width=\"15\" height=\"15\">");
                }
            });*/
            //给重置按钮绑定单机事件
            $("#reset").click(function () {
                //用户名
                $("#usSpan").html("<span style=\"color: black\" id=\"usSpan\" ></span>");
                //密码
                $("#pSpan").html("<span style=\"color: black\" id=\"pSpan\" ></span>");
            });
        });
    </script>
</head>
<body bgcolor="#faebd7">
<h1 align="center">用户登录</h1>
<form action="http://localhost:9999/cqupt_nba/user/login2" method="post">
    <input type="hidden" name="action" value="login">
    <table align="center">
        <tr>
            <td>用户名:</td>
            <td><input type="text" id="username" name="username">
            <td><span style="color: black" id="usSpan" ></span></td>
        </tr>
        <tr>
            <td> 密码:</td>
            <td><input type="password" id="password" name="password"></td>
            <td><span style="color: black" id="pSpan" ></span></td>
        </tr>
        <tr>
            <td> <input type="submit" value="登录" id="submit"></td>
            <td align="center"><input type="reset" id="reset"></td>
        </tr>
    </table>
</form>
</body>
</html>