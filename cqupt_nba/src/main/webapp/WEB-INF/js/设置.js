var checkAll=function () {
    var owns = document.getElementsByName("own");
    for (var i = 0; i < owns.length; i++) {
        owns[i].checked=true;
    }
}
var checkNo=function () {
    var owns = document.getElementsByName("own");
    for (var i = 0; i < owns.length; i++) {
        owns[i].checked=false;
    }
}
var checkReverse=function () {
    var owns = document.getElementsByName("own");
    for (var i = 0; i < owns.length; i++) {
        if(owns[i].checked){
            owns[i].checked=false;
        }else{
            owns[i].checked=true;
        }
    }
}
var reset=function () {
    var id = document.getElementsByName("own");
    for (var i = 0; i <id.length ; i++) {
        id[i].checked=false;
    }
}