function onclickFun() {
    //先获取标签对象
    var uElementById = document.getElementById("username");
    var udale = uElementById.value;
    //innerHTML 表示起始标签和结束标签中的内容  这个属性可读可写
    var usSpanObj = document.getElementById("usSpan");
    //使用正则表达式来验证字符串是否合法
    var pact = /^\w{8,14}$/;
    if(pact.test(udale)){
        /*usSpanObj.innerHTML="用户名合法！";*/
        usSpanObj.innerHTML="<img src=\"imgs/right.jpg\" width=\"15\" height=\"15\">";
    }else {
        usSpanObj.innerHTML="<img src=\"imgs/false.jpg\" width=\"15\" height=\"15\">";
    }
    return false;
}
function onclickFun2() {
    //先获取标签对象
    var uElementById = document.getElementById("username");
    var udale = uElementById.value;
    //使用正则表达式来验证字符串是否合法
    var pact = /^\w{8,14}$/;
    if(pact.test(udale)){
        alert("用户名合法！");
    }else {
        alert("用户名不合法！");
    }
}
