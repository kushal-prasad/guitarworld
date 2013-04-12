<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductPage.aspx.cs" Inherits="ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #product_image_box {
            float: left;
            width: 339px;
        }

        #Product_image_boxinmage {
            position: relative;
            width: 265px;
            height: 265px;
            overflow: hidden;
            margin-left: 20px;
        }

        
        .more_views {
            padding-bottom: 20px;
            text-align: center;
        }

        
        .product-shop {
            margin-left: 361px;
            width: 300px;
            margin-top: 20px;
        }

        
        .productview {
            margin-bottom: 3px;
        }

        
        .availability {
            font-family: "Arial Black";
            color: #FFCC66;
        }
        .price-box {
            color: #800000;
            font-size: xx-large;
            font-weight: bold;
            font-family: Calibri;
        }

        
        .tab-container {
            padding: 15px;
            border-style: none;
            border-color: #FFFFFF;
            width: 600px;
            float: none;
            position: relative;
            top: 20px;
            clear: both;
        }

        
        .std {
            text-align: left;
        }


        .tab {
            background-position: left top;
            clear: none;
            padding: 15px 15px;
            min-height: 100px;
            background-image: url('images/tab-container-bg.gif');
            background-repeat: no-repeat;
        }

        .TagButton {
            background-color: #FFFFFF;
            border: thin none #FFFFFF;
            font-family: Algerian;
            font-size: large;
        }
            
        .TagButton:hover{
            background-color: #66FFFF;
        }

        .Rate_header {
            width: 70px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="productview">
                        <div id="product_image_box">
                            <a class="Product_image_boxinmage" id="Product_image_boxinmage"><img  src="images/fender-strat-black-box.jpg" alt="Fender 2012 American Standard Stratocaster MN - Black" title="Fender 2012 American Standard Stratocaster MN - Black" style="border: medium double #FFCC00; width: 300px;"/></a><br />
                            <br />
                            <div class="more_views">
                                <a class="product_gallary"><img src="images/fender-strat-black-2.jpg"  style="width: 70px; height: 70px"/></a>
                                <a class="product_gallary"><img src="images/fender-strat-black-3.jpg"  style="width: 70px; height: 70px"/></a>
                                <a class="product_gallary"><img src="images/fender-strat-black-4.jpg"  style="width: 70px; height: 70px"/></a>
                                <a class="product_gallary"><img src="images/fender-strat-black-5.jpg"  style="width: 70px; height: 70px"/></a>
                                <a class="product_gallary"><img src="images/fender-strat-black-6.jpg"  style="width: 70px; height: 70px"/></a>
                                <a class="product_gallary"><img src="images/fender-strat-black-7.jpg"  style="width: 70px; height: 70px"/></a>
                            </div>
                        </div>

                        <div class="product-shop">
                            <div class="product-name">
                                <h1>Fender 2012 American Standard Stratocaster MN - Black</h1>
                            </div>
                            <p class="availability out-of-stock">Availability: <span style="color: #FF0000">Out of stock</span></p>     
                            <div class="price-box">
                                <span class="price">$1,099.00</span> 
                            </div>                  
                            <div class="add-to-box">
                                <asp:Button ID="AddtoCart" runat="server" style="font-family: Aharoni; color: #FFFFFF; background-color: #FFCC00" Text="Add to Cart" />
                            </div>
                        </div>

                        <div class="tab-container">
                            <div id="tabmenu">
                                    <div class="Button_list">
                                        <asp:Button ID="Description" runat="server" style="margin-left: 4px" Text="Description" Width="120px" CssClass="TagButton" OnClick="Description_Click" />
                                        <asp:Button ID="Shipping" runat="server" style="margin-left: 2px" Text="Shipping" Width="120px" CssClass="TagButton" OnClick="Shipping_Click" />
                                        <asp:Button ID="Returns" runat="server" style="margin-left: 2px" Text="Returns" Width="120px" CssClass="TagButton" OnClick="Returns_Click" />
                                        <asp:Button ID="Comment" runat="server"  style="margin-left: 3px" Text="Comment" Width="120px" CssClass="TagButton" OnClick="Comment_Click" />
                                    </div>
                             </div>
                            <div class="tab">
                                <asp:MultiView  ID="MultiView1" runat="server" ActiveViewIndex="0">
                                <asp:View ID="PropertyView" runat="server" ViewStateMode="Enabled">
                                    <div class="std">
                                        <h2 style="color: #800000; ">Fender American Standard Stratocaster</h2>
                                        <p>The Fender American Stratocaster Electric Guitar is one of  the great iconic guitars of the rock and roll and blues traditions, and for  good reason. A Strat offers a singular palette of tones unattainable with any  other guitar, sinuous lines that make it inexplicably beautiful, and a hall of  fame full of Strat players who have to inspired one another to redefine music,  again and again, for the past 60 years. </p>
                                        <p>Rather than rest on well-earned laurels, Fender continue to  improve this classic with upgrades that include a richer, deeper neck tint for  a more elegant and expensive appearance. Glossed neck front for improved looks  with satin back for smooth playability. Bent steel Fender saddles with classic  look and great tone. String spacing narrowed for modern playability, saddle  height screws re-sized to reduce rough feel, and string slot on saddle  elongated to reduce string friction or breakage. Copper Infused Cast Strat  Bridge Block (steel with copper- 100% metal) for increased mass and improved  tone. Custom staggered pickup magnets improve string-to-string balance and give  the G-string better tone. Cosmetic upgrades for 2012 include aged plastic  parts.</p>
                                        <p>The return of the American Standard Series Strat continues  Fender's tradition of commitment to the people who play Fender instruments out  there in the real world. Today's American Standard Stratocaster guitars are  worthy heirs of their revered ancestors-mindful of player needs and taking full  advantage of modern advances, yet remaining completely true to the elements and  spirit that made these instruments legendary in the first place. Improvements  include redesigned bridges, neck and body finishes, and a Fender-exclusive  high-tech molded case. Still there are the beloved hand-rolled fingerboard  edges, alnico V pickups and staggered tuning machines for tone and stability  guaranteed to last a lifetime (with its limited lifetime warranty)! So make history  with the redesigned American Standard!</p>
                                        <h3>Fender American Standard Stratocaster Features:</h3>
                                        <ul>
                                            <li>Solid Alder Body</li>
                                            <li>Modern C-shaped Maple Neck with Maple  Fingerboard</li>
                                            <li>Glossed Neck Front with Satin Back</li>
                                            <li>Three Custom Shop Fat ’50s Pickups</li>
                                            <li>No-load Tone Control </li>
                                            <li>Bent Steel Fender Saddles</li>
                                            <li>Copper Infused High Mass Strat Bridge Block  (steel with copper-100% metal) for Improved Tone</li>
                                            <li>Thinner Undercoat for Improved Body Resonance</li>
                                            <li>American 2-Point Tremolo Tailpiece </li>
                                            <li>Aged White Plastic Parts</li>
                                        </ul>
                                    </div>
                                </asp:View>
                                <asp:View ID="ShppingView" runat="server">
                                    <div class="std" style="display: block;">
                                        <h2 style="color: #800000">Shipping</h2>
                                        <p><strong>Free International Shipping on Effect Pedal Orders over $400.&nbsp; Use coupon code: INTLSHIP.</strong><br> *Not valid with other discount codes.&nbsp;</p>
                                        <p>Proguitarshop.com will ship completed orders Monday-Firday. Order  placed and paid before 8:30 PST will ship that same day. All completed  orders after the cutoff time will ship within 24 hours.  Proguitarshop.com does not ship on Saturday or Sunday.</p>
                                        <p>Most orders shipping within the US will ship USPS Priority Mail with  delivery confirmation. Standard delivery time is 2-3 days. An automated  email with a a delivery confirmation number will be sent. This number  may be entered at USPS.com, however, the Priority Mail service does not  offer step by step tracking. It will only update once the item has been  delivered.</p>
                                        <p>Most orders shipping outside the US will ship USPS Express  International. The estimated deilvery time for international orders is  3-5 days. All international orders will ship with a tracking number. An  automated email with tracking details will be sent.</p>
                                        <p>Larger items such as amplifiers and guitars may be shipped via UPS  Ground service in the US and UPS World-Wide Expedited service for  international orders. An automated email with tracking information will  be sent to the recipient.</p>
                                        <p>Worldwide shipping excludes the following brands: T-Rex, Vox, Marshall, Korg, Fender, Squire, Gretsch, Schecter, Orange, Tech 21, TC Electronic, BOSS/Roland, Pedaltrain, Voodoo Lab, MXR/Dunlop, Ibanez, ISP Technologies, EMG.&nbsp;</p>
                                    </div>
                                </asp:View>
                                <asp:View ID="ReturnView" runat="server">
                                    <div class="std" style="display: block;"><h2 style="color: #800000">Returns</h2>
                                        <p><a href="/pgs_return_form.pdf">Download PGS Return Form (104k PDF)</a></p>
                                        <p>If you are not 100% satisfied with your purchase you may return it for a full refund of the original purchase price. We offer a 60-day return policy on all pedals. We ask that you please return the product in the original product packaging along with all included materials (manual, warranty card, all accessories) and in the original condition that it was received. Pedals returned in undesirable condition (scratched, nicked, or modified) may be subject to a restocking fee of up to 25% of the purchase price. We must receive the product within 60 days of you receiving it. All guitar and amplifier purchases must be returned within 15 days of receiving the unit with all original packaging and materials.</p>
                                        <p>Please pack carefully. Do not attach a label to manufacturer’s box. Use a shipping box for packing your return. You may choose any shipping service you like to return the package to us. We strongly recommend some sort of tracking or delivery confirmation and insurance. Lost packages happen; this will help protect you from loss.</p>
                                        <p>Returns are processed twice a week, usually within 72 hours of receiving them. Refunds will be issued to the credit card or Paypal account used for purchase. Please keep in mind that credit card refunds can take up to 10 business days to post on the account once the refund has been processed.</p>
                                    </div>
                                </asp:View>
                                <asp:View ID="CommentView" runat="server">
                                     <div class="std" style="display: block;">
                                         <h2 style="color: #800000">Review of our product</h2>
                                         <asp:Table ID="Rate_Table" runat="server" BorderColor="Black" BorderStyle="Solid">
                                             <asp:TableRow runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" TableSection="TableHeader">
                                                 <asp:TableCell runat="server">How do you rate this product ?</asp:TableCell>
                                                 <asp:TableCell runat="server">1 Star</asp:TableCell>
                                                 <asp:TableCell runat="server">2 Stars</asp:TableCell>
                                                 <asp:TableCell runat="server">3 Stars</asp:TableCell>
                                                 <asp:TableCell runat="server">4 Stars</asp:TableCell>
                                                 <asp:TableCell runat="server">5 Stars</asp:TableCell>
                                             </asp:TableRow>
                                             <asp:TableRow runat="server" BackColor="White" ForeColor="#333333">
                                                 <asp:TableCell ID="Quality" runat="server" Font-Size="Medium">Quality</asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Quality_One_Star" runat="server" value="1"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Quality_Two_Star" runat="server" value="2"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Quality_Three_Star" runat="server" value="3"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Quality_Four_Star" runat="server" value="4"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Quality_Five_Star" runat="server" value="5"/></asp:TableCell>                                               
                                             </asp:TableRow>
                                             <asp:TableRow runat="server" Font-Size="Medium">
                                                 <asp:TableCell ID="Price" runat="server">Price</asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Price_One_Star" runat="server" value="1"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Price_Two_Star" runat="server" value="2"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Price_Three_Star" runat="server" value="3"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Price_Four_Star" runat="server" value="4"/></asp:TableCell>
                                                 <asp:TableCell runat="server"><asp:RadioButton ID="Price_Five_Star" runat="server" value="5"/></asp:TableCell>
                                             </asp:TableRow>
                                           </asp:Table>
                                         
                                         
                                     </div>
                                </asp:View>
                            </asp:MultiView>
                            </div>
                        </div>
                </div>
</asp:Content>

