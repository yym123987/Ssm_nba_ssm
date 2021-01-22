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
    <title>NBA重庆邮电大学官方网站账号注册</title>
    <!-- 写base标签永远固定相对路径跳转的结果-->
    <base href="http://localhost:9999/cqupt_nba/">
    <!--<script type="text/javascript" src="js/注册.js"></script>-->
    <script type="text/javascript" src="jQuery/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(function () {
            //给提交按钮绑定点击事件
            $("#submit").click(function () {
                //验证用户名
                var usernameText = $("#username").val();
                var usernamePatt=/^\w{8,14}$/;
                if(!usernamePatt.test(usernameText)){
                    $("#usSpan").html("<img src=\"imgs/false.jpg\" width=\"15\" height=\"15\">");
                    return false;//阻止元素的默认行为，防止网页跳转
                }else {
                    $("#usSpan").html("<img src=\"imgs/right.jpg\" width=\"15\" height=\"15\">");
                }
                //验证密码
                var passwordText = $("#password").val();
                var passwordPatt=/^\w{8,14}$/;
                if(!passwordPatt.test(passwordText)){
                    $("#pSpan").html("<img src=\"imgs/false.jpg\" width=\"15\" height=\"15\">");
                    return false;
                }else {
                    $("#pSpan").html("<img src=\"imgs/right.jpg\" width=\"15\" height=\"15\">");
                }
                //验证确认密码
                var re_passwordText = $("#re_password").val();
                var re_passwordPatt=/^\w{8,14}$/;
                if(re_passwordText!==passwordText){
                    $("#ppSpan").text("与原密码不符！");
                    return false;
                }else {
                    $("#ppSpan").html("<img src=\"imgs/right.jpg\" width=\"15\" height=\"15\">");
                }
                //验证邮箱
                var emailText = $("#email").val();
                var emailPatt=/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/
                if(!emailPatt.test(emailText)) {
                    $("#emSpan").text("邮箱格式不正确！");
                    return false;
                }else {
                    $("#emSpan").html("<img src=\"imgs/right.jpg\" width=\"15\" height=\"15\">");
                }
                //confirm()提示框函数
                if(!confirm("您是否确定注册！")){
                    return false;
                }
            });
            //给重置按钮绑定单机事件
            $("#reset").click(function () {
                //用户名
                $("#usSpan").html("<span style=\"color: black\" id=\"usSpan\" >必须由字母或数字或下划线组成，8-14位</span>");
                //密码
                $("#pSpan").html("<span style=\"color: black\" id=\"pSpan\" >必须由字母或数字或下划线组成，8-14位</span>");
                //确认密码
                $("#ppSpan").html("<span style=\"color: red\" id=\"ppSpan\"></span>");
                //邮箱
                $("#emSpan").html("<span style=\"color: red\" id=\"emSpan\"></span>");
            });
        });
    </script>
</head>
<body bgcolor="#ffe4c4">
<h1 align="center">NBA重庆邮电大学官方网站账号注册</h1>
<!-- form标签就是表单 action属性设置提交的服务器地址 method属性设置提交的方式GET(默认)或者POST 然后用input type="hidden" name="action" value="login"
     GET:不安全 数据较少 浏览器地址栏是action属性值（+？+请求参数）
     POST:相对于GET更安全 表单项的数据多的时候用 浏览器地址栏只有action属性值
     input type=text 是文件输入框 value属性设置默认显示内容
     input type=radio 单选框 name属性可以对其进行分组 checked="checked"表示默认选中
     type=checkbox 复选框
     select标签是下拉列表 option标签即选项
     textarea 标签是多行文本输入框(起始标签与结尾标签中的内容为默认内容) rows属性设置行数 cols属性设置每行的最大字数
     input type="reset" 重置按钮 value属性修改上面的文字
     input type="submit" 提交按钮   value属性修改上面的文字
     input type="file" 上传文件按钮
     input type="hidden" 隐藏域 当需要发送不需要用户参与的信息可使用（提交一样的上传给服务器）
     表单提交时没有将数据上传给服务器的三种情况:
     1、表单项没有name属性
     2、单选、复选、下拉列表中的option标签 都需要添加value属性
     3、表单项不在提交的form标签中
-->
<form action="user/nba" method="post">
    <input type="hidden" name="action" value="login">
    <table align="center">
        <tr>
            <td>用户名:</td>
            <td><input type="text" id="username" name="username"></td>
            <td><span style="color: black" id="usSpan" >必须由字母或数字或下划线组成，8-14位</span></td>
            <!--<td><img src="imgs/right.jpg" width="15" height="15"></td>-->
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" id="password" name="password"></td>
            <td><span style="color: black" id="pSpan" >必须由字母或数字或下划线组成，8-14位</span></td>
        </tr>
        <tr>
            <td>职业:</td>
            <td><input type="text" id="status" name="status"></td>
        </tr>
        <tr>
            <td>确认密码:</td>
            <td><input type="password" id="re_password"></td>
            <td><span style="color: red" id="ppSpan"></span></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td><input type="radio" name="sex">男
                <input type="radio" name="sex">女
            </td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td><input type="text" id="email" name="email"></td>
            <td><span style="color: red" id="emSpan"></span></td>
        </tr>
        <tr>
            <td>喜欢的球队:</td>
            <td><select name="team">
                <option>--请选择球队--</option>
                <option>湖人队</option>
                <option>雄鹿队</option>
                <option>勇士队</option>
                <option>快船队</option>
                <option>凯尔特人队</option>
                <option>开拓者队</option>
                <option>尼克斯队</option>
                <option>鹈鹕队</option>
                <option>热火队</option>
                <option>76人队</option>
                <option>雷霆队</option>
                <option>骑士队</option>
                <option>灰熊队</option>
                <option>篮网队</option>
                <option>太阳队</option>
                <option>其他</option>
            </select></td>
        </tr>
        <tr>
            <td>喜欢的球星:</td>
            <td><select name="player">
                <option>--请选择球星--</option>
                <option>勒布朗詹姆斯</option>
                <option>斯蒂芬库里</option>
                <option>安东尼戴维斯</option>
                <option>凯里欧文</option>
                <option>凯文杜兰特</option>
                <option>威斯布鲁克</option>
                <option>利拉德</option>
                <option>霍华德</option>
                <option>锡安威廉姆斯</option>
                <option>詹姆斯哈登</option>
                <option>莫兰特</option>
                <option>卡梅隆安东尼</option>
                <option>其他</option>
            </select><br/></td>
        </tr>
        <tr>
            <!--<td><input type="submit" value="确认注册" onclick="alert('注册成功！！！')"></td>-->
            <td><input type="submit" value="确认注册" id="submit"></td>
            <td align="center"><input type="reset" id="reset"></td>
        </tr>
    </table>
</form>
</body>
</html>