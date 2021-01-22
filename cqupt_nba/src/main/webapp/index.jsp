<%--
  Created by IntelliJ IDEA.
  User: Y1830
  Date: 2020/12/28
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh_CN"><!-- html标签的开始    lang="zh_CN"表示中文   -->
<head><!-- 表示头部信息，一般包含三部分:title标签 css样式 js代码 -->
    <meta charset="UTF-8">
    <title>NBA重庆邮电大学官方网站</title><!-- 标题 -->
    <link rel="stylesheet" type="text/css" href="css/css01.css">
    <script>
        alert("由于新冠病毒的影响，导致NBA直播暂时停播！")
    </script>
</head>
<body bgcolor="#ffc0cb"><!-- body标签是整个html页面显示的主体内容 -->
<table align="right">
    <tr>
        <th><a href="user/login" target="_blank">登录</a></th>
        <th><a href="user/regist" target="_blank">注册</a></th>
        <th><a href="user/update" target="_blank">设置</a></th>
    </tr>
</table>
<img src="imgs/4.jpg" width="100" height="150">
<!-- button按钮标签 -->
<button onclick="alert('由于新冠病毒的影响，导致NBA直播的暂时停播！')">NBA直播</button><br/>
<hr/>
<!-- &nbsp;一个字宽度的空行 &emsp;两个字宽度的空行 -->
&emsp;&emsp;直播播放器
&emsp;&emsp;&emsp;NBA球队
&emsp;&emsp;&emsp;NBA球员
<hr/>
<!--&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<a href="https://baike.baidu.com/item/洛杉矶湖人队" target="_blank">湖人队</a><br/>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<a href="https://baike.baidu.com/item/洛杉矶快船队" target="_blank">快船队</a><br/>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<a href="http://baike.baidu.com/fenlei/nba" target="_blank">...</a><br/>

a标签是标签的超链接  href属性设置连接的地址 target属性设置目标跳转

<a href="http://sports.qq.com" target="_blank">腾讯体育</a><br/>
<a href="http://sports.sina.com.cn/nba/" target="_blank">新浪体育</a><br/>
<a href="http://tv.cctv.com/live/cctv5/" target="_blank">CCTV5</a><br/>-->
<table cellspacing="50">
    <tr>
        <th><a href="http://sports.qq.com" target="_blank">腾讯体育</a></th>
        <th><a href="https://baike.baidu.com/item/洛杉矶湖人队" target="_blank">湖人队</a></th>
        <th><a href="https://baike.baidu.com/item/%E5%8B%92%E5%B8%83%E6%9C%97%C2%B7%E8%A9%B9%E5%A7%86%E6%96%AF/1989503?" target="_blank">勒布朗詹姆斯</a></th>
    </tr>
    <tr>
        <th><a href="http://sports.sina.com.cn/nba/" target="_blank">新浪体育</a></th>
        <th><a href="https://baike.baidu.com/item/洛杉矶快船队" target="_blank">快船队</a></th>
        <th><a href="https://baike.baidu.com/item/%E5%AE%89%E4%B8%9C%E5%B0%BC%C2%B7%E6%88%B4%E7%BB%B4%E6%96%AF?" target="_blank">安东尼戴维斯</a></th>
    </tr>
    <tr>
        <th><a href="http://tv.cctv.com/live/cctv5/" target="_blank">CCTV5</a></th>
        <th><a href="http://baike.baidu.com/fenlei/nba" target="_blank">...</a></th>
        <th><a href="https://baike.baidu.com/search/none?word=NBA%E6%89%80%E6%9C%89%E7%90%83%E5%91%98%E5%90%8D%E5%8D%95&pn=0&rn=10&enc=utf8" target="_blank">...</a></th>
    </tr>
</table>
<!-- h1——h6标签为标题标签 -->
<h1>头条信息:</h1><br/>
<!-- iframe标签可以在页面开辟一个小区域显示单独的页面 name属性定义一个名称 -->
<iframe src="imgs/7.jpg"  width="1800" height="500" name="aaa"></iframe>
<ul>
    <li><a href="01小窗口.html" target="aaa">今日比赛回放</a></li>
    <li><a href="02小窗口.html" target="aaa">今日十佳球</a></li>
</ul>
<!-- table标签为表格标签 tr行标签 td列标签 th表头标签 align属性设置表格相对于页面或者单元格文本对齐方式 b标签是字体加粗标签 cellspacing属性单元格间距-->
<!-- colspan属性设置跨列 rowspan属性设置跨行-->
<h1>今日战况</h1>
<table border="1" width="600" height="300">
    <tr>
        <td></td>
        <th><img src="./imgs/2.jpg" width="100" height="50"> 4</th>
        <th><img src="./imgs/3.jpg" width="100" height="50"> 2</th>
    </tr>
    <tr>
        <td align="center"><b>队名</b></td>
        <!-- <th>队名</th>与上面的效果相同  -->
        <td align="center"><b>湖人队</b></td>
        <td align="center"><b>雄鹿队</b></td>
    </tr>
    <tr>
        <td align="center"><b>比分</b></td>
        <td align="center"><b>105</b></td>
        <td align="center"><b>99</b></td>
    </tr>
</table><br/>
<h2>湖人四比二的大比分战胜雄鹿取得2019-2020年度的总冠军!!!</h2><br/>
<!-- img标签用来显示图片 src属性可以设置图片的路径 border属性用来添加边框 alt属性设置当指定路径找不到时，用来代替显示的文本内容 -->
<img src="./imgs/1.jpg" width="300" height="350" border="1"><br/>
FMVP:<br/>
<!--<button onclick="alert('勒布朗詹姆斯\n35岁，203厘米，244斤\nNBA司职小前锋')">勒布朗詹姆斯</button><br/>-->
<a href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=monline_3_dg&wd=%E5%8B%92%E5%B8%83%E6%9C%97%E8%A9%B9%E5%A7%86%E6%96%AF&oq=%25E6%25B9%2596%25E4%25BA%25BA%25E9%2598%259F&rsv_pq=e52c6ef3000290ed&rsv_t=c16eYYKHd8o5XYD0i2tOnkYLr1FnoHmnUWF%2Ft%2FIflZdu77LLsYe6c31Wp7XsHAQPLsAb&rqlang=cn&rsv_enter=1&rsv_dl=tb&rsv_sug3=14&rsv_sug1=19&rsv_sug7=100&rsv_sug2=0&inputT=7549&rsv_sug4=9232" target="_blank">勒布朗詹姆斯</a><br/>
湖人队首发五虎:<br/>
<!-- ul标签是无序列表 ol标签是有序标签 -->
<ul>
    <li>勒布朗詹姆斯</li>
    <li>丹尼格林</li>
    <li>布拉德利</li>
    <li>安东尼戴维斯</li>
    <li>麦基</li>
</ul>
<hr/><!-- hr/水平线 br/转行 -->
<!-- font字体标签 -->
<font color="blue" face="黑体" size="7">已达到页面底部！</font>
<!-- <script></script> -->
</body>
</html>