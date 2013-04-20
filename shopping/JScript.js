// JScript 文件
function v10()
{
var a=document.getElementById("se")

if(a.value.length <= 0)
{
alert("请填写搜索的内容！！！");
return false;
}
else 
{
return true;
} 
}
function v()
{
    var a=document.getElementById('webname');
    var b=document.getElementById('webpaw');
    var c=document.getElementById('webnz');
     
     
    if(a.value.length<=0 || b.value.length<=0 || c.value.length<=0)
    {
        alert('With * is Required！！!');
        a.focus();
        return false;
    }
    else    
    {
        return true;
    }
}
function leftv()
{
    var a=document.getElementById('left_webname');
    var b=document.getElementById('left_webpaw');
    var c=document.getElementById('left_webnz');
     
     
    if(a.value.length<=0 || b.value.length<=0 || c.value.length<=0)
    {
        alert('With * is Required！！!');
        a.focus();
        return false;
    }
else 
{
return true;
} 
}
function v0()
{
var a=document.getElementById("TextBox1");
var a=document.getElementById("TextBox2");

if(a.value.length <= 0)
{
    alert("With * is Required！！！");
return false;
}
else 
{
return true;
} 
}
function v1()
{
var a=document.getElementById("TextBox1");
var a=document.getElementById("TextBox2");
var a=document.getElementById("TextBox3");
var a=document.getElementById("TextBox4");
var a=document.getElementById("TextBox5");
var a=document.getElementById("TextBox6");
var a=document.getElementById("TextBox9");
var a=document.getElementById("TextBox10");
var a=document.getElementById("TextBox11");
var a2=document.getElementById("TextBox2");
var a1=document.getElementById("TextBox3");
var a3 = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/; 

var a4=document.getElementById("TextBox5");
var a5=/^[a-zA-Z0-9_][a-zA-Z0-9_]{3,15}$/;
var a6=document.getElementById("TextBox1");

if(a.value.length <= 0)
{
    alert("With * is Required！！！");
return false;
}
if(!a5.exec(a6.value))
{
alert("请填写正确帐号！！");
return false;
}
if(a2.value != a1.value)
{
alert("密码前后不一至！！！");
return false;
	}
if(!a3.exec(a4.value))
{
alert("邮件格式错误！！！");
return false;
}

else 
{
return true;
} 
}
function v2()
{
var a=document.getElementById("TextBox3");
var a=document.getElementById("TextBox4");

if(a.value.length <= 0)
{
    alert("With * is Required！！！");
return false;
}
else 
{
return true;
} 
}
function sltChange()
{
        var sltIdx = document.getElementById('slt');
        
        var selectedValue = sltIdx.options[sltIdx.options.selectedIndex].value;
        window.open(selectedValue);
}

function copyToClipBoard()
{
      var clipBoardContent="";
      clipBoardContent+=this.location.href;
      window.clipboardData.setData("Text",clipBoardContent);
      alert("复制本文链接发给你QQ/MSN上的好友");
}
function v5()
{

document.getElementById("TextBox3").value=""; 
document.getElementById("TextBox4").value=""; 

return false;
}
function v6()
{//information
var a9=document.getElementById("TextBox9");
var a11=document.getElementById("TextBox11");
var a12 = document.getElementById("TextBox12");
var a10 = document.getElementById("TextBox10");
var a16 = document.getElementById("TextBox10");
var a3 = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/; 

if (a9.value.length <= 0 || a11.value.length <= 0 || a12.value.length <= 0 || a16.value.length <= 0)
{
    alert("With * is Required！！！");
return false;
}
if(!a3.exec(a10.value))
{
    alert("Wrong email format！！！");
return false;
}

else 
{
return true;
} 
}
function v7()
{//ChangePassword
var a=document.getElementById("TextBox9");
var a6=document.getElementById("TextBox10");
var a11=document.getElementById("TextBox1");

if(a.value.length <= 0)
{
    alert("With * is Required！！！");
return false;
}
if(a6.value != a11.value)
{
    alert("Password inconsistency！！！");
return false;
}
else 
{
return true;
} 
}
function v8()
{
var a=document.getElementById("TextBox1");
var a=document.getElementById("TextBox2");
var a=document.getElementById("TextBox3");

var a=document.getElementById("TextBox4");



if(a.value.length <= 0)
{
    alert("With * is Required！！！");
return false;
}


else 
{
return true;
} 
}


 function selectAll(obj,objmain)
     {
         var delchk=document.getElementsByName(obj);
         var i=0;
         for(i=0;i<delchk.length;i++)
         {
            delchk[i].checked=document.getElementsByName(objmain)[0].checked;
         }
     }
     
     function isCheck(obj)
     {
        var isSelect=document.getElementsByName(obj);
        var i=0;
        var chk;
        for(i=0;i<isSelect.length;i++)
        {
            if(isSelect[i].checked==true)
            {
                chk=true;
                return true;          
            }
            else
            {
                chk=false;
            }
        }
        if(chk==true)
        {
            return true;
        }
        else        
        {
            return false;
        }
     }
     
     function confrimDelete(obj)
     {
        if(isCheck(obj)==true)
        {
            if(confirm('Are you sure to delete?'))
            {
                form1.action='?ac=delall';form1.submit();
            }
        }
        else
        {
            alert("Please select!");
        }
     }




var D=new Function('obj','return document.getElementById(obj);')
function htmlbody(){
return (
   document.documentElement.clientHeight<=document.body.clientHeight
   &&document.documentElement.clientHeight!=0
)
?document.documentElement:document.body;
}
//浏览器滚动条位置
function scrollLeft(){return (!window.pageYOffset)?htmlbody().scrollLeft:window.pageXOffset;}
function scrollTop(){return (!window.innerHeight)?htmlbody().scrollTop:window.pageYOffset;}

//实际应距左距离
function getleft(strobjs,strLeftType,strleft){
var temp_getleft = 0;
if (strLeftType=="left"){
   temp_getleft = scrollLeft()*1 + strleft*1;
}else if (strLeftType=="mid"){
   (strleft*1<0)
   ?temp_getleft = scrollLeft()*1 + strleft*1
   + htmlbody().clientWidth*1/2 - strobjs.offsetWidth*1
   :temp_getleft = (scrollLeft()*1+strleft*1 + htmlbody().clientWidth*1/2);
}else if (strLeftType=="right"){
    temp_getleft 
    = scrollLeft()*1 + htmlbody().clientWidth*1 
    - strleft*1 - strobjs.offsetWidth*1;
}
return temp_getleft;
}

function moveTips(strobj,theTop,theLeft,theLeftType) {
var old,nowobj = D(strobj);
var nowleft = nowobj.style.left.replace("px","")*1;//返回在改变窗口大小或移动横滚动条前的距左部距离（数值）
var temp_left = getleft(nowobj,theLeftType,theLeft);//实际应距左距离
var re_theTop = theTop;
if (temp_left!=nowleft){//横向递增
   (Math.abs(temp_left-nowleft)>3&&Math.abs(temp_left-nowleft)<600)
   ?((temp_left>nowleft)?nowleft += Math.abs(temp_left-nowleft)/5
   :nowleft -= Math.abs(temp_left-nowleft)/5)
   :nowleft = temp_left;
   nowobj.style.left = nowleft + "px";
}
if (!openweb){old = re_theTop;var openweb;}/*这是默认高度*/;
var pos,tt=50;
pos = scrollTop()*1-nowobj.offsetTop*1+re_theTop*1;
pos = nowobj.offsetTop+pos/10;//纵向开始递增
if (pos < re_theTop) pos = re_theTop;
if (pos != old) {nowobj.style.top = pos+"px";tt=5;}
old = pos;
setTimeout("moveTips('"+strobj+"','"+theTop+"','"+theLeft+"','"+theLeftType+"')",tt);
}




