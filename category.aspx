<%@ Page Language="VB" MasterPageFile="Site.master" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub TextBoxPostcode_TextChanged(sender As Object, e As EventArgs)
        Session("TextBoxPostcode") = TextBoxPostcode.Text
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Session("TextBoxPostcode") = TextBoxPostcode.Text
    End Sub
</script>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .label-element.state-editing,.preview-mode .rich-text-content,.rich-text-content.editing-mode{cursor:text}.common-rich-content-style{white-space:pre-line;word-wrap:break-word}*{-webkit-tap-highlight-color:rgba(255,255,255,0)}
        </style>
   <script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>
<script type="text/javascript" style="color: #FFFFFF; font-size: large">
    $(function () {
        var currentPosition = 0;
        var slideWidth = 800;
        var slides = $('.slide');
        var numberOfSlides = slides.length;
        var slideShowInterval;
        var speed = 6000;
        //Assign a timer, so it will run periodically
        slideShowInterval = setInterval(changePosition, speed);
        slides.wrapAll('<div id="slidesHolder"></div>')
        slides.css({
            'float': 'left'
        });
        //set #slidesHolder width equal to the total width of all the slides
        $('#slidesHolder').css('width', slideWidth * numberOfSlides);
        $('#slideshow').prepend('<span class="nav" id="leftNav"><img src="/leftbutton.png"></span>')
        .append('<span class="nav" id="rightNav"><img src="/rightbutton.jpg"></span>');
        manageNav(currentPosition);
        //tell the buttons what to do when clicked
        $('.nav').bind('click', function () {
            //determine new position
            currentPosition = ($(this).attr('id') == 'rightNav') ? currentPosition + 1 : currentPosition - 1;
            //hide/show controls
            manageNav(currentPosition);
            clearInterval(slideShowInterval);
            slideShowInterval = setInterval(changePosition, speed);
            moveSlide();
        });
        function manageNav(position) {
            if (position == 190) {
                $('#leftNav').hide()
            }
            else {
                $('#leftNav').show()
            }
            if (position == numberOfSlides - 1) {
                $('#rightNav').hide()
            }
            else { $('#rightNav').show() }
        }
        function changePosition() {
            if (currentPosition == numberOfSlides - 1) {
                currentPosition = 0;
                manageNav(currentPosition);
            }
            else {
                currentPosition++;
                manageNav(currentPosition);
            }
            moveSlide();
        }
        function moveSlide() {
            $('#slidesHolder').animate({ 'marginLeft': slideWidth * (-currentPosition) });
        };
    });
</script>
<style type="text/css">

    #slideshow {
position: relative;
}
#slideshow #slideshowWindow {
height: 257px;
margin: 0;
overflow: hidden;
padding: 0;
position: relative;
width: 800px;
}
#slideshow #slideshowWindow .slide {
height: 257px;
margin: 0;
padding: 0;
position: relative;
width: 800px;
}
#ul.polaroids a:after {
  content: attr(title);
}
#slideshow #slideshowWindow .slide .slideText {
background-repeat: repeat;
color: #FFFFFF;
font-family: Myriad Pro,Arial,Helvetica,sans-serif;
height: 257px;
left: 0;
margin: 0;
padding: 0;
position: absolute;
top: 3px;
width: 160%;
}
#slideshow #slideshowWindow .slide .slideText a:link, #slideshow #slideshowWindow .slide .slideText a:visited {
color: #FFFFFF;
text-decoration: none;
}
#slideshow #slideshowWindow .slide .slideText h2, #slideshow #slideshowWindow .slide .slideText p {
color: #FFFFFF;
margin: 10px 0 0 320px;
padding: 0;
        width: 308px;
    }
.nav
{
display:block;
text-indent:-10000px;
position:absolute;
cursor:pointer;
}
#leftNav
{
top:223px;
left:320px;
width:94px;
height:34px;
background-repeat:no-repeat;
z-index:999;
color:antiquewhite;

}
#rightNav
{
top:225px;
left:450px;
width:53px;
height:26px;
background-repeat:no-repeat;
z-index:999;
color:antiquewhite;
}

        .auto-style17 {
            width: 74px;
            height: 51px;
        }
        .auto-style26
    .transparent-style{

    background-color: #ffffff;
    opacity: .4;

}
    .auto-style30 {
        width: 343px;
    }
    .auto-style35 {
        font-style: normal;
        font-variant: normal;
        font-weight: normal;
        font-size: 1.2em;
        line-height: normal;
        font-family: "Trebuchet MS", Arial, sans-serif;
        color: #888;
        width: 516px;
        margin-bottom: 10px;
        text-align: center;
        height: 52px;
    }
    .auto-style41 {
        margin-bottom: 10px;
        font: 1.2em Trebuchet MS, Arial, sans-serif;
        color: #888;
        width: 344px;
    }
    </style> 
    <script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>
    <script src="jquery.tooltip.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function InitializeToolTip() {
            $(".gridViewToolTip").tooltip({
                track: true,
                delay: 0,
                showURL: false,
                fade: 100,
                bodyHandler: function () {
                    return $($(this).next().html());
                },
                showURL: false
            });
        }
    </script>
    <script type="text/javascript">
        $(function () {
            InitializeToolTip();
        })
    </script>
    <style type="text/css">
        #tooltip
        {
            position: absolute;
            z-index: 0;
            border: 1px solid #111;
            background-color: #C2E0FF;
            padding: 5px;
            opacity: 0.85;
        }
        #tooltip h3, #tooltip div
        {
            margin: 0;
        }
        </style>
      <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            width: 89%;
            height: 56px;
        }
        
        
        .style4
        {
            width: 34px;
        }
        .style5
        {
            color: #FFFFFF;
        }
          .newStyle1 {
              font-size: x-small;
          }
        </style>
    <style type="text/css">
    
        .auto-style63 {
            width: 124px;
            height: 86px;
            position: absolute;
            left: 287px;
            top: 360px;
            }
        .auto-style71 {
            width: 301px;
            height: 24px;
            position: relative;
            left: 0px;
            top: -116px;
        }
        .auto-style75 {
            width: 373px;
            height: 69px;
            position: absolute;
            left: 475px;
            top: 322px;
        }
        .auto-style78 {
            width: 284px;
            height: 68px;
        }
        .auto-style91 {
            width: 125px;
            height: 50px;
            position: absolute;
            left: 96px;
            top: 4px;
        }
        .auto-style98 {
            position: relative;
            display: inline-block;
            left: 0px;
            top: 0px;
            width: 251px;
            height: 257px;
        }
        .auto-style99 {
            position: absolute;
            top: 81px;
            left: 138px;
        }
        .auto-style101 {
            position: absolute;
            top: 39px;
            left: 89px;
            height: 15px;
            width: 137px;
            color: #00FF00
        }
        .auto-style102 {
            position: absolute;
            top: 116px;
            left: 10px;
        }
        .auto-style103 {
            position: absolute;
            top: 116px;
            left: 11px;
        }
        .auto-style105 {
            position: absolute;
            top: 81px;
            left: 138px;
            z-index: 1;
        }
        .auto-style111 {
        left: 0px;
        top: 0px;
        width: 330px;
        float: right;
    }
        .auto-style112 {
            color: #999999;
        }
        .auto-style113 {
            position: relative;
            display: inline-block;
            left: 17px;
            top: -1px;
            width: 274px;
            height: 175px;
        }
        .auto-style115 {
            position: relative;
            display: inline-block;
            left: -14px;
            top: 0px;
            width: 251px;
            height: 257px;
        }
        .auto-style116 {
            width: 516px;
        }
        .auto-style120 {
            position: relative;
        }
        .auto-style121 {
            height: 288px;
        }
        .auto-style122 {
        float: right;
        left: 0px;
        top: 0px;
        width: 999px;
        height: 255px;
    }
        .auto-style123 {
        text-align: center;
        height: 31px;
    }
        .auto-style124 {
            color: #FFFFFF;
            font-family: "Myriad Pro";
            font-size: medium;
            background-color: #996600;
        }
        </style>
      
     
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <table>
        <tr>
           
            <td>
                <div id="slideshow" class="auto-style122" >
       <div id="slideshowWindow" >
           <div class="slide">
<img src="photoGallery/a.jpg" />
<div class="slideText">
<p class="slideLink"><asp:FormView ID="FormView1" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                             <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong><br /> 
                                                               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                               <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                              
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>
       <div class="slide" >
<img src="photoGallery/loader.jpg" />
           <div class="slideText">

<p class="slideLink"><asp:FormView ID="FormView2" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True" PageIndex="1">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong>
                                                               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>
    <div class="slide">
<img src="photoGallery/b.jpg" />
<div class="slideText">

<p class="slideLink"><asp:FormView ID="FormView6" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True" PageIndex="4">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong><br /> 
                                                               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                               <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                              
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>

        
</div>
<div class="slide">
<img src="photoGallery/c.jpg" />
    <div class="slideText">

<p class="slideLink"><asp:FormView ID="FormView7" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True" PageIndex="2">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong><br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                               <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>
    <div class="slide">
<img src="photoGallery/d.jpg" />
<div class="slideText">

<p class="slideLink"><asp:FormView ID="FormView11" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True" PageIndex="1" TabIndex="5">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong><br /> 
                                                               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                              
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>
         <div class="slide">
<img src="photoGallery/veg.jpg" />
<div class="slideText">

<p class="slideLink"><asp:FormView ID="FormView8" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True" PageIndex="6" TabIndex="3">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong><br /> 
                                                               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                               <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>
             <div class="slide">
<img src="photoGallery/turkish.jpg" />
<div class="slideText">

<p class="slideLink"><asp:FormView ID="FormView9" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True" PageIndex="1" TabIndex="7">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong><br /> 
                                                               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>
        <div class="slide">
<img src="photoGallery/khet.jpg" />
<div class="slideText">

<p class="slideLink"><asp:FormView ID="FormView12" runat="server" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style113" AllowPaging="True" PageIndex="1" TabIndex="8">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <strong> 
                                                               <asp:Label ID="retail" runat="server" CssClass="auto-style124" Text='<%# Eval("retailprice", "£{0:#.00}")%>' />
                                                               </strong><br /> 
                                                               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                               <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                              
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" Font-Size="XX-Small" VerticalAlign="Top" />
                                                       </asp:FormView></p>
</div>
</div>
      
       </div>&nbsp;</td>
            
        </tr>
    </table>

   

    


    <table style="background-color: #FFFFFF; ">
     
           
        <tr>
            
            <td class="auto-style35">FIND CATERING IN YOUR AREA.<br />
                
            </td>
            
           
            
        </tr>
        <tr>
            
            <td style="text-align: center;" class="auto-style116" >
                
            <table><tr><td style="vertical-align: top; text-align: center;" >
                
               
                Post Code<br /><br />
                    <asp:TextBox ID="TextBoxPostcode" runat="server" Font-Bold="True" Font-Size="X-Large" Height="62px" ForeColor="#996633" OnTextChanged="TextBoxPostcode_TextChanged" CssClass="auto-style111"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPostcode" ErrorMessage="Please enter the postcode of venue." ForeColor="#3366FF" CssClass="auto-style63"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxPostcode" ErrorMessage="First part of postcode: WC62" ForeColor="#FF3300" ValidationExpression="[A-Za-z]{1,2}[0-9A-Za-z]{1,2}" CssClass="auto-style71"></asp:RegularExpressionValidator>
                    
                    
                
               
                </td> 
                    <td style="vertical-align: top"><br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" CssClass="auto-style75" /><br />
                    <asp:Button ID="Button1" runat="server" Text="Search" Width="168px" BackColor="#996633" BorderColor="AliceBlue" Font-Bold ="True" ForeColor="White" Font-Size="Medium" OnClick="Button1_Click" Height="62px"/>
                </tr></table>
                <table border="0"><tr><td style="vertical-align: top; text-align: center;" class="auto-style121">
          
                        <asp:FormView ID="FormView10" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" ViewStateMode="Enabled">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" Height="1px" Wrap="False" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table>
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                               <br />
                                                               <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" Wrap="True" />
                                                       </asp:FormView><td class="auto-style121">
                        </td><td style="vertical-align: top; text-align: center;" class="auto-style121">
          
                        <asp:FormView ID="FormView5" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="1" EmptyDataText="Please enter your postcode.">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle ForeColor="#996600" VerticalAlign="Top" Height="1px" Wrap="False" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" Wrap="True" />
                                                       </asp:FormView><td class="auto-style121"><td style="vertical-align: top; text-align: center;" class="auto-style121">
          
                        <asp:FormView ID="FormView3" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="2">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle Wrap="False" Height="1px" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="                                                                       display: none;
                                                                       font-size: medium;
                                                                       color: #00FF00;
                                                                       background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" Wrap="True" />
                                                       </asp:FormView><td class="auto-style121">                        </td><td style="vertical-align: top; text-align: center;" class="auto-style121">
          
                        <asp:FormView ID="FormView4" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" ViewStateMode="Enabled" PageIndex="3">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle Wrap="False" Height="1px" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" Wrap="True" />
                                                       </asp:FormView></table>
              <br />  <hr />
                <table style="vertical-align: top"><tr><td style="width: 241px">
                </td><td style="width: 241px">

                                                        </td><td style="width: 241px">
                    

                                    </td><td style="width: 241px">


                                         </td></tr></table>
                <br />
                 <table><tr><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView13" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="4" EmptyDataText="&lt;a href=&quot;/regsupplier.aspx&quot;&gt;Register your business&lt;/a&gt;">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>
                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView14" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="5">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle ForeColor="#996600" VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView15" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style115" AllowPaging="True" PageIndex="6">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="                                                                       display: none;
                                                                       font-size: medium;
                                                                       color: #00FF00;
                                                                       background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView16" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="7">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView></table>
                <br /><hr />
                <table style="vertical-align: top"><tr><td style="width: 241px">
                </td><td style="width: 241px">

                        &nbsp;</td><td style="width: 241px"> 

                    
                    </td><td>
                        
                         </td></tr></table>
                <br />
                <table><tr><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView17" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="8" EmptyDataText="&lt;a href=&quot;/regevent.aspx&quot;&gt;Register your event.&lt;/a&gt;">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               

                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>
                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView18" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="9">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle ForeColor="#996600" VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                             <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView19" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="10">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="                                                                       display: none;
                                                                       font-size: medium;
                                                                       color: #00FF00;
                                                                       background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView20" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource6" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="11">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView></table>
                <br />
                <br /><hr />
                <table><tr><td style="width: 241px">
                
                    </td><td style="width: 241px">
                        &nbsp;</td> <td style="width: 241px">
                        

                         </td><td>
                             

                              </td></tr></table>
                <table><tr><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView21" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource4" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" EmptyDataText="&lt;a href=&quot;/regsupplier.aspx&quot;&gt;Register your business&lt;/a&gt;">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>
                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView22" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource4" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="1">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle ForeColor="#996600" VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView23" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource9" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
<a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="                                                                       display: none;
                                                                       font-size: medium;
                                                                       color: #00FF00;
                                                                       background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView24" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource14" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView></table><br />
                <hr />
                <table><tr><td style="width: 241px">
                
                    </td><td style="width: 241px">
                        </td> <td style="width: 241px">
                        

                         </td><td>
                             
                              </td></tr></table>
                <br />
                <table><tr><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView25" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource11" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True" PageIndex="7">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                               <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style103" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>
                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView26" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource17" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                            <EmptyDataRowStyle ForeColor="#996600" VerticalAlign="Top" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView27" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource12" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="                                                                       display: none;
                                                                       font-size: medium;
                                                                       color: #00FF00;
                                                                       background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; z-index: 1;" BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style99" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView><td>                        </td><td style="vertical-align: top; text-align: center;">
          
                        <asp:FormView ID="FormView28" runat="server" BackColor="White" BorderStyle="None" CellPadding="3" DataSourceID="AccessDataSource15" GridLines="Horizontal" DataKeyNames="supplierid" CssClass="auto-style98" AllowPaging="True">
                                                          
                                                            <EditItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr1") %>'  />
                                                                 ID:
                                                               <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("company") %>' />
                                                               <br />
                                                               Supplier:
                                                               <asp:TextBox  ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Minimum:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               Area:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               Minimum Order:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                                               <br />
                                                               MAx:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </EditItemTemplate>
                                                           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                           <InsertItemTemplate>
                                                               Name:
                                                               <asp:TextBox ID="TAXTextBox" runat="server" Text='<%# Bind("suppliercompany") %>' />
                                                               <br />
                                                               Price:
                                                               <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Website:
                                                               <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                                                               <br />
                                                               Description:
                                                               <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                                                               <br />
                                                               Name:
                                                               <asp:TextBox ID="AirwaysNameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                                               <br />
                                                               Total:
                                                               <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                                                               <br />
                                                               Supply Area:
                                                               <asp:TextBox ID="OfferEndDateTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                                               <br />
                                                               Post Code:
                                                               <asp:TextBox ID="LuggageTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                                               <br />
                                                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                           </InsertItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("company") %>' Font-Size="Small" CssClass="auto-style91" style="vertical-align: top; padding: 4px"  />
                                                              <a href="/checking.aspx?Catid=<%# Eval("catalogid", "{0}")%>" class="gridViewToolTip" style="padding: 4px; height: 50px; vertical-align: top;"> £<%# Eval("retailprice", "{0:#.00}")%>Details »
                         </a>

                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div>
                                                             
                                                               &nbsp;<br /> 
                                                               <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl='<%# Bind("catalogid", "/checking.aspx?catid={0}")%> ' ImageHeight="180px" ImageWidth="210px" >Picture</asp:HyperLink>
                                                              <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/bg.jpg');">
                            <table width="260">
                              
                                   <tr> <td>
                                      Price:  £<%# Eval("retailprice", "{0:#.00}")%></td> <td> Meal Name<%# Eval("cname")%></td> <td> Meal Name: <asp:Label ID="Label5" runat="server" Text='<%# Bind("cname") %>' Font-Bold="True" BackColor="#CCFF66" ForeColor="#003300" Font-Size="Large" /></td>
                                    
                                         
                                             <tr>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>'> </asp:HyperLink>
                                                 <td>Minimum order: <%# Eval("minimumquantity")%></td>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("postcode")%></td>
                                               </tr> <tr>
                                                   <td>
                                    
                                        <td>
                                                     
                                             
                                         </tr>
                                                                      
                                    
                            </table>
                        </div> <br />
                                                              
                                                                                                                             
                                                               
                                                               <asp:Label ID="description" runat="server" Text='<%# Bind("catdescription") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" CssClass="auto-style101" />
                                                               <asp:Label ID="TAXLabel" runat="server" Text='<%# Bind("cname") %>' Font-Size="Small" style="vertical-align: top; padding: 4px; " BackColor="#C2E0FF" Font-Italic="True" ForeColor="#CC9900" Height="16px" CssClass="auto-style105" />
                                                                 <a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" />
                         </a>
                                                               <br />Minimum Order:
                                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" /><br />
                                                               &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" BackColor="#C2E0FF" CssClass="auto-style102" ForeColor="#CC9900" />
                                                               
                                                               <div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('logo.png');">
                            <table width="260">
                              
                                   <tr style="color:blue;"> 
                                       <td>
                                      <%# Eval("cname")%></td></tr>
                                      <tr>  <td><%# Eval("minimumquantity")%></td></tr>
                                
                                                 <asp:HyperLink ID="HyperLink12" runat="server" ImageUrl='<%# Bind("extraimage1", "http://karnalee.easycgi.com/catering/photoGallery/{0}.jpg") %>' NavigateUrl="/photoGallery/logo.jpg" ></asp:HyperLink>
                                             </tr>
                                       <tr>
                                                 
                                                     <td> <%# Eval("suppliercompany")%></td>
                                                     <tr>
                                                         <td> <%# Eval("postcode")%></td>
                                                     </tr>
                                                     <tr>
                                                         <td></td>
                                                     </tr>
                                               </tr> 
                               
                            </table> 
                        </div>
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" />
                                                       </asp:FormView></table><br />
                <hr class="auto-style120" />
                <br />
                <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="3" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource>
                <asp:AccessDataSource ID="AccessDataSource7" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="4" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource>
                <table style="vertical-align: top"><tr><td style="vertical-align: top">
                <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="2" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource>
                                  <br /><asp:AccessDataSource ID="AccessDataSource8" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="10" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource><br />
                    <asp:AccessDataSource ID="AccessDataSource9" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="11" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource><br />
                    <asp:AccessDataSource ID="AccessDataSource10" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="12" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource><br />
                    <asp:AccessDataSource ID="AccessDataSource11" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="5" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource><br /><asp:AccessDataSource ID="AccessDataSource12" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:Parameter DefaultValue="9" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource>
                                  <asp:AccessDataSource ID="AccessDataSource13" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:Parameter DefaultValue="10" Name="?" />
                                      </SelectParameters>
                                  </asp:AccessDataSource>
                                  <asp:AccessDataSource ID="AccessDataSource14" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:Parameter DefaultValue="11" Name="?" />
                                      </SelectParameters>
                                  </asp:AccessDataSource>
                                  <asp:AccessDataSource ID="AccessDataSource15" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:Parameter DefaultValue="12" Name="?" />
                                      </SelectParameters>
                                  </asp:AccessDataSource>
                                  <br />
                                  <asp:AccessDataSource ID="AccessDataSource16" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:Parameter DefaultValue="13" Name="?" />
                                      </SelectParameters>
                                  </asp:AccessDataSource>
                                  <asp:AccessDataSource ID="AccessDataSource17" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:Parameter DefaultValue="14" Name="?" />
                                      </SelectParameters>
                                  </asp:AccessDataSource>
                                  <br />

                                  <asp:AccessDataSource ID="AccessDataSource6" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode, products.ccategory FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (categories.catdescription = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:QueryStringParameter Name="?" QueryStringField="catid" />
                                      </SelectParameters>
</asp:AccessDataSource>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="1" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource>
                   
                    </td></tr></table>
                <br />
                <asp:AccessDataSource ID="AccessDataSource5" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [Region], [Postcode] FROM [postcode] ORDER BY [Region]">
</asp:AccessDataSource>
                    </td>
            
            
            
        </tr>
        <td class="auto-style123" style="background-image: url('/bg.jpeg'); color: #C0C0C0;"><a href="aboutus.aspx"> <span class="auto-style112">ABOUT US</span></a>
            </td>
        <tr>
            
            <td style="vertical-align: top;" class="auto-style108" >
                <div class="auto-style68" >
                  <a href="aboutus.aspx" class="auto-style78">  <img alt="Feast.team"  src="whatwedo.png" border="0" /><br />
                    <span class="auto-style112">WHAT WE DO</span><br /></a>
                    <br />
                    <div class="auto-style41" style="text-align: center; vertical-align: top;">
                        <a href="regsupplier.aspx">
                        <img alt="feast.team" class="auto-style17" src="weare.png" border="0" />
                        <br class="auto-style112" />
                        <span class="auto-style112">REGISTER YOUR BUSINESS</span><br /></a>
                    </div>
                    <div class="rich-text-content">
                         <p class="MsoNormal">
                     <a href="regevent.aspx">  <img src="project.jpg" class="auto-style112" border="0" /><br class="auto-style112" />
                             <span class="auto-style112">REGISTER YOUR EVENT</span></a><br class="auto-style112" /><br />
                        </div>
                </div>
                    
                    
                    
                
            </td>
            
             </tr> 
                    
            
            
       

    </table>
     <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [categoryid], [catdescription] FROM [categories]">
</asp:AccessDataSource>

    </asp:Content>


