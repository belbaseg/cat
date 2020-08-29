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
height: 300px;
left: 0;
margin: 0;
padding: 0;
position: absolute;
top: 3px;
width: 100%;
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
            left: 287px;
            top: 360px;
            }
        .auto-style71 {
            width: 301px;
            height: 24px;
            position: relative;
            left: -1px;
            top: 0px;
        }
        .auto-style75 {
            width: 373px;
            height: 69px;
            left: 475px;
            top: 322px;
        }
        .auto-style78 {
            width: 284px;
            height: 68px;
        }
        .auto-style91 {
            width: 245px;
            height: 9px;
            left: 97px;
            top: -41px;
            color: #FFFFFF;
            background-color: #996600;
        }
        .auto-style98 {
            position: relative;
            display: inline-block;
            left: 0px;
            top: 0px;
            width: 251px;
            height: 257px;
        }
        .auto-style111 {
        left: 0px;
        top: 0px;
        width: 330px;
        float: right;
        empty-cells: hide;
    }
        .auto-style112 {
            color: #999999;
        }
        .auto-style116 {
            width: 516px;
        }
        .auto-style121 {
            height: 288px;
        }
        </style>
      
     
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    

   

    


    <table style="background-color: #FFFFFF; ">
     
           
        <tr>
            
            <td style="text-align: center;" class="auto-style116" >
                
            
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
                                                               <em>
                                                               <asp:Label ID="Label2" runat="server" CssClass="auto-style91" Font-Size="X-Large" ForeColor="White" style="vertical-align: top; padding: 4px; height: 50px;" Text='<%# Bind("company") %>' />
                                                               </em>
                                                              
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
                                                              
                                                                                                                             
                                                               
                                                               
                                                               <br /> 
                                                               Price:<a  style="padding: 4px; height: 50px; vertical-align: top; font-size: x-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #FFFFFF; background-color: #996600;">£<%# Eval("retailprice", "{0:#.00}")%></a><br /><a href="http://shopsite.easycgi.com/ss11.2/sc/order.cgi?storeid=*14894f27aac4408718c41102&amp;dbname=products&amp;function=add&amp;prod_name_Bold_Normal=Kathmandu Tikka&amp;prod_price_Bold_Normal=5.40&amp;itemnum=<%# Eval("ccode")%>&amp;<%# Eval("cname")%>:freeopt=Size <%# Eval("cname")%> "><img src="addcrt.png" /></a><div id="tooltip" style="display: none; font-size: medium; color: #00FF00; background-image: url('/photoGallery/logo.jpg');">
                            <table>
                              
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
                                                                      
                                    
                                       <caption>
                                           <br />
                                       </caption>
                                                          

                            </table></div>
                                                               <br />Minimum Order:
                                                               <asp:Label ID="Label3" runat="server" Text='<%# Bind("minimumquantity") %>' Font-Size="Small"  ForeColor="#003300" Font-Bold="False" />
                                                              
                                                             Max:  <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("maximumquantity") %>' Font-Bold="False" ForeColor="#003300" Font-Size="Small" />
                                                               &nbsp;<asp:Label ID="OfferEndDateLabel" runat="server" Text='<%# Bind("Region") %>' BackColor="#66CCFF" ForeColor="Yellow" Font-Size="Small" />
                                                              
                                                               
                                                               <asp:Label ID="LuggageLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' Font-Size="Small" />
                                                               &nbsp;
                                                               
                                                           </ItemTemplate>
                                                            <PagerSettings Visible="False" />
                                                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                           <RowStyle ForeColor="#4A3C8C" HorizontalAlign="Left" BackColor="#E7E7FF" Font-Size="Small" VerticalAlign="Top" Wrap="True" />
                                                       </asp:FormView><td class="auto-style121">
                        </td><td></table><br /><br /><br />
                <asp:FormView ID="FormView11" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AccessDataSource7" ForeColor="#663300" GridLines="Horizontal" Width="451px" BackImageUrl="bga.jpg" Font-Bold="False" Font-Italic="True" Font-Names="Rockwell Condensed" Font-Size="Medium">
                    <EditItemTemplate>
                        category:
                        <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                        <br />
                        company:
                        <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                        <br />
                        supplierid:
                        <asp:Label ID="supplieridLabel1" runat="server" Text='<%# Eval("supplierid") %>' />
                        <br />
                        Postcode:
                        <asp:TextBox ID="PostcodeTextBox" runat="server" Text='<%# Bind("Postcode") %>' />
                        <br />
                        Town - Area:
                        <asp:TextBox ID="Town___AreaTextBox" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                        <br />
                        Region:
                        <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                        <br />
                        Expr1:
                        <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                        <br />
                        supplierCompany:
                        <asp:TextBox ID="supplierCompanyTextBox" runat="server" Text='<%# Bind("supplierCompany") %>' />
                        <br />
                        catdescription:
                        <asp:TextBox ID="catdescriptionTextBox" runat="server" Text='<%# Bind("catdescription") %>' />
                        <br />
                        cname:
                        <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                        <br />
                        retailprice:
                        <asp:TextBox ID="retailpriceTextBox" runat="server" Text='<%# Bind("retailprice", "{0:#.00}") %>' />
                        <br />
                        minimumquantity:
                        <asp:TextBox ID="minimumquantityTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                        <br />
                        maximumquantity:
                        <asp:TextBox ID="maximumquantityTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                        <br />
                        comments:
                        <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                        <br />
                        extraimage1:
                        <asp:TextBox ID="extraimage1TextBox" runat="server" Text='<%# Bind("extraimage1") %>' />
                        <br />
                        catalogid:
                        <asp:Label ID="catalogidLabel1" runat="server" Text='<%# Eval("catalogid") %>' />
                        <br />
                        ccode:
                        <asp:TextBox ID="ccodeTextBox" runat="server" Text='<%# Bind("ccode") %>' />
                        <br />
                        features:
                        <asp:TextBox ID="featuresTextBox" runat="server" Text='<%# Bind("features") %>' />
                        <br />
                        cimageurl:
                        <asp:TextBox ID="cimageurlTextBox" runat="server" Text='<%# Bind("cimageurl") %>' />
                        <br />
                        specialoffer:
                        <asp:TextBox ID="specialofferTextBox" runat="server" Text='<%# Bind("specialoffer") %>' />
                        <br />
                        cdateavailable:
                        <asp:TextBox ID="cdateavailableTextBox" runat="server" Text='<%# Bind("cdateavailable") %>' />
                        <br />
                        extendedimage:
                        <asp:TextBox ID="extendedimageTextBox" runat="server" Text='<%# Bind("extendedimage") %>' />
                        <br />
                        extraimage2:
                        <asp:TextBox ID="extraimage2TextBox" runat="server" Text='<%# Bind("extraimage2") %>' />
                        <br />
                        extraimage3:
                        <asp:TextBox ID="extraimage3TextBox" runat="server" Text='<%# Bind("extraimage3") %>' />
                        <br />
                        extraimage4:
                        <asp:TextBox ID="extraimage4TextBox" runat="server" Text='<%# Bind("extraimage4") %>' />
                        <br />
                        youtube:
                        <asp:TextBox ID="youtubeTextBox" runat="server" Text='<%# Bind("youtube") %>' />
                        <br />
                        productmetatitle:
                        <asp:TextBox ID="productmetatitleTextBox" runat="server" Text='<%# Bind("productmetatitle") %>' />
                        <br />
                        cdescription:
                        <asp:TextBox ID="cdescriptionTextBox" runat="server" Text='<%# Bind("cdescription") %>' />
                        <br />
                        largeextendedimage:
                        <asp:TextBox ID="largeextendedimageTextBox" runat="server" Text='<%# Bind("largeextendedimage") %>' />
                        <br />
                        largeextraimage1:
                        <asp:TextBox ID="largeextraimage1TextBox" runat="server" Text='<%# Bind("largeextraimage1") %>' />
                        <br />
                        largeextraimage2:
                        <asp:TextBox ID="largeextraimage2TextBox" runat="server" Text='<%# Bind("largeextraimage2") %>' />
                        <br />
                        largeextraimage3:
                        <asp:TextBox ID="largeextraimage3TextBox" runat="server" Text='<%# Bind("largeextraimage3") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                   
                    <ItemTemplate>
                        Supplier:
                        <asp:Label ID="companyLabel" runat="server" Text='<%# Bind("company") %>' />
                        <br />
                        <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' /><br />
                         Supply Area:
                        <asp:Label ID="Town___AreaLabel" runat="server" Text='<%# Bind("[Town - Area]") %>' />
                                              
                        <br />
                        Taste:
                        <asp:Label ID="catdescriptionLabel" runat="server" Text='<%# Bind("catdescription") %>' />
                        <br />
                        Name:
                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Bind("cname") %>' />
                        <br />
                        Price:
                        <asp:Label ID="retailpriceLabel" runat="server" Text='<%# Bind("retailprice", "£{0:#.00}") %>' />
                        <br />
                        Minimum Order:
                        <asp:Label ID="minimumquantityLabel" runat="server" Text='<%# Bind("minimumquantity") %>' />
                        <br />
                        Maximum:
                        <asp:Label ID="maximumquantityLabel" runat="server" Text='<%# Bind("maximumquantity") %>' />
                        <br />
                        <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
                        <br />
                        <asp:HyperLink ID="HyperLink1" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage1", "{0}.jpg") %>' ></asp:HyperLink>
                        <br />
                                                Details:
                        <asp:Label ID="featuresLabel" runat="server" Text='<%# Bind("features") %>' />
                        <br />
                       <asp:HyperLink ID="HyperLink3" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("cimageurl", "{0}.jpg") %>' ></asp:HyperLink>
                        <br />
                        Offer:
                        <asp:Label ID="specialofferLabel" runat="server" Text='<%# Bind("specialoffer", "£{0:#.00}") %>' />
                        <br />
                        Available Date:
                        <asp:Label ID="cdateavailableLabel" runat="server" Text='<%# Bind("cdateavailable") %>' />
                        <br />
                        <asp:HyperLink ID="HyperLink4" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extendedimage", "{0}.jpg") %>' ></asp:HyperLink>
                        <br />
                       <asp:HyperLink ID="HyperLink5" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage2", "{0}.jpg") %>' ></asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink6" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage3", "{0}.jpg") %>' ></asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink8" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("extraimage4", "{0}.jpg") %>' ></asp:HyperLink>
                                                <br />
                        Supplier's youtube link:
                        <asp:Label ID="youtubeLabel" runat="server" Text='<%# Bind("youtube") %>' />
                        <br />
                        Description:
                        <asp:Label ID="cdescriptionLabel" runat="server" Text='<%# Bind("cdescription") %>' />
                        <br />
                        <asp:HyperLink ID="HyperLink9" class="gridViewToolTip" runat="server" ImageUrl='<%# Bind("largeextendedimage", "{0}.jpg") %>' ></asp:HyperLink>
                           <br />
                        &nbsp;<asp:Label ID="largeextraimage1Label" runat="server" Text='<%# Bind("largeextraimage1") %>' />
                        <br />
                        &nbsp;<asp:Label ID="largeextraimage2Label" runat="server" Text='<%# Bind("largeextraimage2") %>' />
                        <br />
                        &nbsp;<asp:Label ID="largeextraimage3Label" runat="server" Text='<%# Bind("largeextraimage3") %>' />
                        <br />
                    </ItemTemplate>
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                </asp:FormView>
              <br />  <hr />
                
                
                
               
                <asp:AccessDataSource ID="AccessDataSource7" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode, products.features, products.cimageurl, products.specialoffer, products.cdateavailable, products.extendedimage, products.extraimage2, products.extraimage3, products.extraimage4, products.youtube, products.productmetatitle, products.cdescription, products.largeextendedimage, products.largeextraimage1, products.largeextraimage2, products.largeextraimage3 FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (products.catalogid = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:QueryStringParameter DefaultValue="" Name="?" QueryStringField="catid" />
                                      </SelectParameters>
</asp:AccessDataSource>
                <table style="vertical-align: top"><tr><td style="vertical-align: top">
                <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (suppliers.category = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" DefaultValue="1" />
                                          <asp:Parameter DefaultValue="2" Name="?" />
                                      </SelectParameters>
</asp:AccessDataSource>
                                  <br /><br />
                    <br />
                    <br />
                    <br />
                                  <br />
                                  <br />

                                  <asp:AccessDataSource ID="AccessDataSource6" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.category, suppliers.company, suppliers.supplierid, postcode.Postcode, postcode.[Town - Area], postcode.Region, suppliers.postcode AS Expr1, products.supplierCompany, categories.catdescription, products.cname, products.retailprice, products.minimumquantity, products.maximumquantity, suppliers.comments, products.extraimage1, products.catalogid, products.ccode FROM (((suppliers INNER JOIN categories ON suppliers.category = categories.categoryid) INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN products ON suppliers.supplierid = products.supplierCompany) WHERE (postcode.Postcode LIKE '%' + ? + '%') AND (products.catalogid = ?)">
                                      <SelectParameters>
                                          <asp:SessionParameter Name="?" SessionField="TextBoxPostcode" />
                                          <asp:QueryStringParameter Name="?" QueryStringField="catid" />
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
                    
            
            
       

    </table><table><tr><td style="vertical-align: top; text-align: center;" >
                
               
                <br /><br />
                    <asp:TextBox ID="TextBoxPostcode" runat="server" Font-Bold="True" Font-Size="X-Large" Height="62px" ForeColor="#996633" OnTextChanged="TextBoxPostcode_TextChanged" CssClass="auto-style111" BorderStyle="None"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPostcode" ErrorMessage="Please enter the postcode of venue." ForeColor="#3366FF" CssClass="auto-style63"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxPostcode" ErrorMessage="First part of postcode: WC62" ForeColor="#FF3300" ValidationExpression="[A-Za-z]{1,2}[0-9A-Za-z]{1,2}" CssClass="auto-style71"></asp:RegularExpressionValidator>
                    
                    
                
               
                </td> 
                    <td style="vertical-align: top"><br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" CssClass="auto-style75" style="z-index: 1" /><br />
                </tr></table>
     <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [categoryid], [catdescription] FROM [categories]">
</asp:AccessDataSource>

    </table>
</asp:Content>


