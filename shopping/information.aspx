<%@ Page Language="C#" AutoEventWireup="true" CodeFile="information.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Information</title>
       <link href="images/css.css" rel="stylesheet" type="text/css" />   
       <script type="text/javascript" src="jscript.js"></script>
</head>

<body>
    <form id="form1" runat="server">

<div class="admin">
<div class="admin1">
      <div class="adminleft1_1">Member Center</div>
</div>
<div class="admin2"></div>
<div class="admin3"><img src="images/admin_06.gif" width="38" height="53" alt=""></div>

<div class="adminright">
  <div class="login">
    <ul class="tab1" style="margin-left:40px">
	<li class="c3"><img src="images/login_02.gif" width="16" height="17" alt="" /><span style="font-size:14px; font-weight:bold;"> Your Information</span>(With<span style="color:#FF0000; font-weight:bold;">*</span>is Required)</li>
	<li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />User Name：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox9" runat="server" MaxLength="20" Width="320" Enabled="False" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>*</span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Email：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox10" runat="server" MaxLength="40" Width="320"></asp:TextBox>*</span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Real Name：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox11" runat="server" MaxLength="20" Width="320"></asp:TextBox>*</span>     </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Phone Number ：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox12" runat="server" MaxLength="15" Width="200"></asp:TextBox>*</span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Male：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>male</asp:ListItem>
            <asp:ListItem>female</asp:ListItem>
        </asp:DropDownList></span></li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Card Number ：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox3" runat="server" MaxLength="15" Width="320"></asp:TextBox></span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Zip：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
        <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" Width="200"></asp:TextBox></span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Adress Line 1：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
              <asp:TextBox ID="TextBox16" runat="server" MaxLength="200" Width="450"></asp:TextBox>* </span> </li>
    <li class="c1" ><img src="images/login_03.gif" width="12" height="16" alt="" />Adress Line 2：</li>
    <li class="c2" ><span style="color:#FF0000; font-weight:bold;">
              <asp:TextBox ID="TextBox1" runat="server" MaxLength="200" Width="450"></asp:TextBox> </span> </li>
    <li class="c1" >  &nbsp;&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="images/customer1.png"
                          Width="53px" OnClientClick=" return v6();" OnClick="ImageButton1_Click"  /></li><li class="c2"></li>
    </ul>
  </div>
</div>

<%--<div class="admin4"></div>--%>

</div>
    </form>
</body>
</html>
