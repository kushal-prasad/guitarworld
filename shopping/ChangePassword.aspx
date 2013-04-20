<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Change Password</title>
       <link href="images/css.css" rel="stylesheet" type="text/css" />   
       <script type="text/javascript" src="jscript.js"></script>
</head>

<body>
    <form id="form1" runat="server">

<div class="admin">
<div class="admin1">
      <div class="adminleft1_1">Change Password</div>
</div>
<div class="admin2"></div>
<div class="admin3"><img src="images/admin_06.gif" width="38" height="53" alt=""></div>

<div class="adminright">
  <div class="login">
    <ul class="tab1" style="margin-left:40px">
	<li class="c3"><img src="images/login_02.gif" width="16" height="17" alt="" /><span style="font-size:14px; font-weight:bold;"> Change Password</span>(With<span style="color:#FF0000; font-weight:bold;">*</span>is Required)</li>
	<li class="c4" ><img src="images/login_03.gif" width="12" height="16" alt="" />Current Password：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox9" runat="server" MaxLength="20" Width="320" Enabled="true" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>*</span> </li>
    <li class="c4" ><img src="images/login_03.gif" width="12" height="16" alt="" />New Password：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox10" runat="server" MaxLength="40" Width="320"></asp:TextBox>*</span> </li>
    <li class="c4" ><img src="images/login_03.gif" width="12" height="16" alt="" />Confirm Password：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="40" Width="320"></asp:TextBox>*</span> </li>
   
    <li class="c1" >  &nbsp;&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="images/customer1.png"
                          Width="53px" OnClientClick=" return v7();" OnClick="ImageButton1_Click"  /></li><li class="c2"></li>
    </ul>
  </div>
</div>

<%--<div class="admin4"></div>--%>

</div>
    </form>
</body>
</html>