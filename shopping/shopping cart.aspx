<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopping cart.aspx.cs" Inherits="shopping_cart" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="images/css.css" rel="stylesheet" type="text/css" />   
</head>
<body>
<form id="form1" runat="server">
<div id="main">

<div class="gw" >
    <ul class="gw1">
       <li class="c1">Option</li>
       <li class="c10">IMG</li>
       <li class="c2">Number </li>
       <li class="c2">Name</li>
       <li class="c3">Quantity</li>
       <li class="c3">Unit Price</li>
    </ul>

    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
    <ItemTemplate>
    <ul class="gw1">
<li class="c4"><input type="checkbox" name="sProduct" class="input2" value="<%# Eval("id") %>" /></li>
<li class="c9"> <%# Eval("user_image") %>  </li>
<li class="c5"> <%# Eval("user_shop") %></li>
<li class="c5"><%# Eval("user_shopname") %></li>
<li class="c6"><input type="text" name="textfield" class="input3" value="<%# Eval("user_sl") %>" /></li>
<li class="c6"><span style="color: #FF0000;">￥<%# Eval("user_rmb") %>.00</span></li>
</ul>
    </ItemTemplate>
    </asp:Repeater>

    <div class="gw1" style=" text-align:right; height:25px; margin-top:15px; float:left; border-top-width: 1px;border-right-width: 1px;border-bottom-width: 2px;border-left-width: 1px;border-top-style: none;border-right-style: none;border-bottom-style: solid;border-left-style: none;border-top-color: #ccc;border-right-color: #ccc;border-bottom-color: #ccc;border-left-color: #ccc; ">
        Your Subtotal：<samp style="color:#FF0000">￥<asp:Literal ID="Literal1" runat="server"></asp:Literal>.00</samp>
    </div>

       <%-- <br />--%>
<div class="gw1" style=" text-align:right;margin-top:15px;">
     <a href="newShop.aspx" title="continue shoping" style="margin-top:10px;"><img src="images/gw2.png" width="110" height="20" alt="" style="margin-top:10px;"/></a> 
     <a href="#" title="" onclick="confrimDelete('sProduct');" style="margin-top:10px;"><img src="images/gw3.png" width="56" height="20" alt="" style="margin-top:10px;"/></a></div>     
</div>

<%--  <div style="text-align:left">
      <article id="column-left">
      <table>
          <thead>
              <tr style="background-color:#c89b5b;width:352px;height:30px;text-align:left;"><th colspan="2"> Your Card Information</th></tr>
          </thead>
          <tbody>
              <tr><td rowspan="4"  style="width:150px;vertical-align:bottom;">here is image of cards</td>  <td style="vertical-align:bottom;height: 30px;" >Card Number</td></tr>
              <tr><td ><asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Width="220px"></asp:TextBox></td></tr>
              <tr><td style="vertical-align:bottom;height: 30px;" >Name On Card</td></tr>
              <tr><td ><asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Width="220px"></asp:TextBox></td></tr>             
          </tbody>
          <tfoot>           
          </tfoot>
      </table>  
<article id="column-left-botton" >
     <button type="button"><span style="font-size:12px;width:50px;"> &nbsp;&nbsp;Edit&nbsp;&nbsp; </span></button>
     <button type="button"><span style="font-size:12px;width:50px;"> &nbsp;Save&nbsp;</span></button>
</article>
         
      </article>     
 </div>


    <div style="text-align:left;">
        <article id="column-right">
        <table >
          <thead>
              <tr style="background-color:#c89b5b;width: 420px; height:30px;text-align:left;"><th colspan="2">Information</th></tr>
          </thead>
          <tbody >
              <%--<tr><td rowspan="4" >&nbsp;&nbsp;&nbsp;&nbsp;</td>  <td>Card Number</td></tr>--%>
             <%-- <tr><td colspan="2" style="vertical-align:bottom;height: 30px;">Name</td></tr>
              <tr><td colspan="2" style="width: 420px;"><asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" Width="300px"></asp:TextBox></td></tr>
              <tr><td style="vertical-align:bottom;height: 30px;" >Phone Number</td>
                  <td style="vertical-align:bottom;height: 30px;" >zip</td></tr>
              <tr><td ><asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Width="195px"></asp:TextBox></td><td>
                       <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Width="195px"></asp:TextBox></td></tr>
              <tr><td colspan="2" style="vertical-align:bottom;height: 30px;" >Address Line1</td></tr>
              <tr><td colspan="2" ><asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Width="402px"></asp:TextBox></td></tr>
              <tr><td colspan="2" style="vertical-align:bottom;height: 30px;" >Address Line1</td></tr>
              <tr><td colspan="2" ><asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" Width="402px"></asp:TextBox></td></tr>
          </tbody>
      </table> 
      <article id="column-right-botton" >
         <button type="button"><span style="font-size:12px;width:50px;"> &nbsp;&nbsp;Edit&nbsp;&nbsp; </span></button>
         <button type="button"><span style="font-size:12px;width:50px;"> &nbsp;Save&nbsp;</span></button>
      </article> 
      </article>      
    </div>--%>



  <div class="cartleft">
    <ul class="carttab1" style="text-align:left;">
	<li class="c3"><img src="images/login_02.gif" width="16" height="17" alt="" /><span style="font-size:14px; font-weight:bold;"> Card Information</span>(With<span style="color:#FF0000; font-weight:bold;">*</span>is Required)</li>
	<li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Card Number：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox9" runat="server" MaxLength="20" Width="320" Enabled="false"></asp:TextBox>*</span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Name On Card：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox10" runat="server" MaxLength="40" Width="320" Enabled="false"></asp:TextBox>*</span> </li>
</ul>
<article id="column-button0" >
     <button type="button" id="edit2" onclick="edit2_Click"><span style="font-size:12px;width:50px;"> &nbsp;&nbsp;Edit&nbsp;&nbsp; </span></button>
     <button type="button" id="save2" onclick="save2_Click"><span style="font-size:12px;width:50px;"> &nbsp;Save&nbsp;</span></button>
</article>
  </div>

<div class="cartright">
    <ul class="carttab1" style="text-align:left;">
	<li class="c3"><img src="images/login_02.gif" width="16" height="17" alt="" /><span style="font-size:14px; font-weight:bold;"> Your Information</span>(With<span style="color:#FF0000; font-weight:bold;">*</span>is Required)</li>
	<li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Name：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox8" runat="server" MaxLength="20" Width="320" Enabled="false"></asp:TextBox>*</span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Zip：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox11" runat="server" MaxLength="40" Width="320" Enabled="false"></asp:TextBox>*</span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Adress Line1：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="40" Width="320" Enabled="false"></asp:TextBox>*</span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Adress Line2：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox2" runat="server" MaxLength="40" Width="320" Enabled="false"></asp:TextBox>*</span> </li>
</ul>
     <article id="column-button1" >
         <button type="button" id="edit1" onclick="edit1_Click"><span style="font-size:12px;width:50px;"> &nbsp;&nbsp;Edit&nbsp;&nbsp; </span></button>
         <button type="button" id="save1" onclick="save1_Click"><span style="font-size:12px;width:50px;"> &nbsp;Save&nbsp;</span></button>
      </article> 
</div>

    <div >
        <article id="column-button">  
           <%-- <a href="uesr_pay.aspx" title="confirm"><img src="images/gw1.png" width="76" height="22" alt="" /></a>--%>      
            <a href="uesr_pay.aspx" title="pay it now"><img src="images/gw4.png" width="71" height="20" alt="" /></a>                
        </article>
    </div>


 </div> 
    </form>
</body>
</html>
