<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Electric.aspx.cs" Inherits="Electric" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="right">
     <div class="right8" style="margin-bottom:10px;">
                <div class="right8_1">
                    Recommendation
                    <img src="images/index_50.gif" width="61" height="24" alt="" /></div>
                <div class="right8_2">
                     <a href="good.aspx" title="recommendation"><img src="images/index_31.gif" width="47" height="28" alt="" /></a></div>
     </div>

<div class="acoustic">
<ul class="acoustic1">
<li class="c1"><a target="" href="shop.aspx"><img src="images/sort.png" height="19" /></a></li>
<li class="c2"><a target="" href="shop.aspx"><img src="images/sales.png" height="19"/></a> </li>
<li class="c2"><a target="" href="shop.aspx"><img src="images/credit.png" height="19"/></a></li>
<li class="c2"><a target="" href="shop.aspx"><img src="images/new.png" height="19"/></a></li>
<li class="c2"><a target="" href="shop.aspx"><img src="images/price.png" height="19"/></a></li>
<li class="c3"><a target="" href="shop.aspx"><img src="images/letter-2.png" height="19"/></a></li>
<li class="c4"><asp:TextBox ID="TextBox9" runat="server" MaxLength="2" Width="30" height="12"></asp:TextBox><button type="button"><span style="font-size:10px"> Submit</span></button></li>
<li class="c5"><b>Company</b><asp:TextBox ID="TextBox1" runat="server" MaxLength="50" Width="76" height="12"></asp:TextBox><button type="button"><span style="font-size:10px"> Submit</span></button></li>
</ul>
</div>
       <div class="right11">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="right11_1">
                            <div class="right11_1_1">
                                <a target="_blank" href="shop.aspx?id=<%# Eval("id") %>">
                                    <img src="<%# Eval("shop_tp") %>" alt="" /></a></div>
                            <div class="right11_1_2">
                                <%# Eval("shop_name") %>
                            </div>
                            <div class="right11_1_2">
                                Number：<%# Eval("shop_id") %></div>
                            <div class="right11_1_2">
                               Unit Price：<span style="color:#CC0000; font-size:14px;">￥<strong><%# (Eval("shop_rmb").ToString()) %></strong></span></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
        </div>
</div>


</asp:Content>

