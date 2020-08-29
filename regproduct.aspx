<%@ Page Language="VB" MasterPageFile="Site.master" %>

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
        var speed = 3000;
        //Assign a timer, so it will run periodically
        slideShowInterval = setInterval(changePosition, speed);
        slides.wrapAll('<div id="slidesHolder"></div>')
        slides.css({
            'float': 'left'
        });
        //set #slidesHolder width equal to the total width of all the slides
        $('#slidesHolder').css('width', slideWidth * numberOfSlides);
        $('#slideshow').prepend('<span class="nav" id="leftNav">Move Left</span>')
        .append('<span class="nav" id="rightNav">Move Right</span>');
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
            if (position == 0) {
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

        .auto-style15 {
        width: 438px;
           : inline-block;
        z-index: -1;
        height: 427px;
    }
        .auto-style17 {
            width: 74px;
            height: 51px;
        }
        .auto-style19 {
            width: 75px;
            height: 66px;
        }
        .auto-style20 {
            height: 33px;
        }
        .auto-style23 {
        width: 71px;
        height: 68px;
    }
    .auto-style24 {
        width: 100%;
    }
    .auto-style26
    .transparent-style{

    background-color: #ffffff;
    opacity: .4;

}
    .auto-style27 {
        width: 342px;
        height: 50px;
        text-align: center;
    }
    .auto-style28 {
        margin-bottom: 10px;
        font: 1.2em Trebuchet MS, Arial, sans-serif;
        color: #888;
        width: 342px;
    }
    .auto-style30 {
        width: 343px;
    }
    .auto-style31 {
        width: 650px;
    }
    .auto-style32 {
        width: 883px;
        height: 697px;
    }
    .auto-style37 {
        text-align: justify;
        width: 347px;
    }
    .auto-style41 {
        margin-bottom: 10px;
        font: 1.2em Trebuchet MS, Arial, sans-serif;
        color: #888;
        width: 344px;
    }
    .auto-style44 {
        width: 438px;
    }
    .auto-style45 {
        width: 342px;
        height: 136px;
    }
    .auto-style46 {
        width: 342px;
        height: 427px;
    }
    .auto-style47 {
        width: 438px;
           : inline-block;
        z-index: -1;
        height: 50px;
    }
    .auto-style48 {
        width: 894px;
        position: relative;
        display: inline-block;
        left: 0px;
        top: 0px;
    }
    .auto-style49 {
        width: 137px;
    }
    .auto-style51 {
        width: 438px;
        height: 136px;
    }
    </style> 
     
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="fb-root"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.9&appId=1874002716171361";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <table class="auto-style48">
        <tr>
           
            <td class="auto-style49"></td><td>
                <div id="slideshow" style="text-align: right" >
       <div id="slideshowWindow">
           <div class="slide">
<img src="photoGallery/a.jpg" />
<div class="slideText">
<h2 class="slideTitle">British Feast</h2>
<p class="slideDes">Enjoy your British feast taste.</p>
<p class="slideLink"><a href="#">click here</a></p>
</div>
       <div class="slide" >
<img src="photoGallery/loader.jpg" />
           <div class="slideText">
<h2 class="slideTitle">Chinese Feast</h2>
<p class="slideDes">Enjoy your chinese feast taste.</p>
<p class="slideLink"><a href="#">click here</a></p>
</div>
    <div class="slide">
<img src="photoGallery/b.jpg" />
<div class="slideText">
<h2 class="slideTitle">Indian Feast</h2>
<p class="slideDes">Enjoy your Indian feast taste.</p>
<p class="slideLink"><a href="#">click here</a></p>
</div>

        <div class="slide">
<img src="photoGallery/d.jpg" />
<div class="slideText">
<h2 class="slideTitle">Turkish Feast</h2>
<p class="slideDes">Enjoy your Turkish feast taste.</p>
<p class="slideLink"><a href="#">click here</a></p>
</div>
</div>
<div class="slide">
<img src="photoGallery/c.jpg" />
    <div class="slideText">
<h2 class="slideTitle">Continental Feast</h2>
<p class="slideDes">Enjoy your continental feast taste.</p>
<p class="slideLink"><a href="#">click here</a></p>
</div>
    <div class="slide">
<img src="photoGallery/khet.jpg" />
<div class="slideText">
<h2 class="slideTitle">Vegitarian Feast</h2>
<p class="slideDes">Enjoy your vegitarian feast taste.</p>
<p class="slideLink"><a href="#">click here</a></p>
</div>

        <div class="slide">
<img src="photoGallery/khet.jpg" />
<div class="slideText">
<h2 class="slideTitle">African Feast</h2>
<p class="slideDes">Enjoy your taste</p>
<p class="slideLink"><a href="#">click here</a></p>
</div>
</div>
      
       </div>&nbsp;</td>
            
        </tr>
    </table>

   

    


    <table class="auto-style32" width: 100%;" style="background-color: #FFFFFF; ">
     
           
        <tr>
            <td class="auto-style47" style="text-align: center">
               <a href="default.aspx"> <img alt="Catering" class="auto-style19" src="logo.png" /></a></td>
            
            <td class="auto-style27" style="vertical-align: top;">
                <div class="auto-style41" style="text-align: center; vertical-align: top;">
                
                 <a href="aboutus.aspx">   <img alt="can" class="auto-style17" src="weare.png" /></a> <br />
                
                    REGISTER YOUR BUSINESS.<br />
                </div>
                    </td>
            

        </tr>
        <tr>
            
            <td class="DDSubHeader" style="text-align: center" colspan="2">
                       
                                <asp:FormView ID="FormView2" runat="server" DataKeyNames="catalogid" DataSourceID="AccessDataSource3" DefaultMode="Insert" BackImageUrl="~/bg.jpg" Width="464px" CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" GridLines="Both">
                                    <EditItemTemplate>
                                        catalogid:
                                        <asp:Label ID="catalogidLabel1" runat="server" Text='<%# Eval("catalogid") %>' />
                                        <br />
                                        ccode:
                                        <asp:TextBox ID="ccodeTextBox" runat="server" Text='<%# Bind("ccode") %>' />
                                        <br />
                                        cname:
                                        <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                        <br />
                                        cprice:
                                        <asp:TextBox ID="cpriceTextBox" runat="server" Text='<%# Bind("cprice") %>' />
                                        <br />
                                        ccategory:
                                        <asp:TextBox ID="ccategoryTextBox" runat="server" Text='<%# Bind("ccategory") %>' />
                                        <br />
                                        cdescurl:
                                        <asp:TextBox ID="cdescurlTextBox" runat="server" Text='<%# Bind("cdescurl") %>' />
                                        <br />
                                        features:
                                        <asp:TextBox ID="featuresTextBox" runat="server" Text='<%# Bind("features") %>' />
                                        <br />
                                        cimageurl:
                                        <asp:TextBox ID="cimageurlTextBox" runat="server" Text='<%# Bind("cimageurl") %>' />
                                        <br />
                                        cstock:
                                        <asp:TextBox ID="cstockTextBox" runat="server" Text='<%# Bind("cstock") %>' />
                                        <br />
                                        weight:
                                        <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                                        <br />
                                        mfg:
                                        <asp:TextBox ID="mfgTextBox" runat="server" Text='<%# Bind("mfg") %>' />
                                        <br />
                                        pother1:
                                        <asp:TextBox ID="pother1TextBox" runat="server" Text='<%# Bind("pother1") %>' />
                                        <br />
                                        pother2:
                                        <asp:TextBox ID="pother2TextBox" runat="server" Text='<%# Bind("pother2") %>' />
                                        <br />
                                        pother3:
                                        <asp:TextBox ID="pother3TextBox" runat="server" Text='<%# Bind("pother3") %>' />
                                        <br />
                                        subcategoryid:
                                        <asp:TextBox ID="subcategoryidTextBox" runat="server" Text='<%# Bind("subcategoryid") %>' />
                                        <br />
                                        retailprice:
                                        <asp:TextBox ID="retailpriceTextBox" runat="server" Text='<%# Bind("retailprice") %>' />
                                        <br />
                                        specialoffer:
                                        <asp:TextBox ID="specialofferTextBox" runat="server" Text='<%# Bind("specialoffer") %>' />
                                        <br />
                                        category:
                                        <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                                        <br />
                                        buttonimage:
                                        <asp:TextBox ID="buttonimageTextBox" runat="server" Text='<%# Bind("buttonimage") %>' />
                                        <br />
                                        cdateavailable:
                                        <asp:TextBox ID="cdateavailableTextBox" runat="server" Text='<%# Bind("cdateavailable") %>' />
                                        <br />
                                        cdateend:
                                        <asp:TextBox ID="cdateendTextBox" runat="server" Text='<%# Bind("cdateend") %>' />
                                        <br />
                                        allowusertext:
                                        <asp:TextBox ID="allowusertextTextBox" runat="server" Text='<%# Bind("allowusertext") %>' />
                                        <br />
                                        pother4:
                                        <asp:TextBox ID="pother4TextBox" runat="server" Text='<%# Bind("pother4") %>' />
                                        <br />
                                        pother5:
                                        <asp:TextBox ID="pother5TextBox" runat="server" Text='<%# Bind("pother5") %>' />
                                        <br />
                                        userid:
                                        <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                                        <br />
                                        keywords:
                                        <asp:TextBox ID="keywordsTextBox" runat="server" Text='<%# Bind("keywords") %>' />
                                        <br />
                                        template:
                                        <asp:TextBox ID="templateTextBox" runat="server" Text='<%# Bind("template") %>' />
                                        <br />
                                        extendedimage:
                                        <asp:TextBox ID="extendedimageTextBox" runat="server" Text='<%# Bind("extendedimage") %>' />
                                        <br />
                                        selectlist:
                                        <asp:TextBox ID="selectlistTextBox" runat="server" Text='<%# Bind("selectlist") %>' />
                                        <br />
                                        level3:
                                        <asp:TextBox ID="level3TextBox" runat="server" Text='<%# Bind("level3") %>' />
                                        <br />
                                        level4:
                                        <asp:TextBox ID="level4TextBox" runat="server" Text='<%# Bind("level4") %>' />
                                        <br />
                                        level5:
                                        <asp:TextBox ID="level5TextBox" runat="server" Text='<%# Bind("level5") %>' />
                                        <br />
                                        minimumquantity:
                                        <asp:TextBox ID="minimumquantityTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                        <br />
                                        supplierCompany:
                                        <asp:TextBox ID="supplierCompanyTextBox" runat="server" Text='<%# Bind("supplierCompany") %>' />
                                        <br />
                                        crossselling:
                                        <asp:TextBox ID="crosssellingTextBox" runat="server" Text='<%# Bind("crossselling") %>' />
                                        <br />
                                        hide:
                                        <asp:CheckBox ID="hideCheckBox" runat="server" Checked='<%# Bind("hide") %>' />
                                        <br />
                                        productmatch:
                                        <asp:TextBox ID="productmatchTextBox" runat="server" Text='<%# Bind("productmatch") %>' />
                                        <br />
                                        customermatch:
                                        <asp:TextBox ID="customermatchTextBox" runat="server" Text='<%# Bind("customermatch") %>' />
                                        <br />
                                        orderattachment:
                                        <asp:TextBox ID="orderattachmentTextBox" runat="server" Text='<%# Bind("orderattachment") %>' />
                                        <br />
                                        orderdownload:
                                        <asp:TextBox ID="orderdownloadTextBox" runat="server" Text='<%# Bind("orderdownload") %>' />
                                        <br />
                                        groupfordiscount:
                                        <asp:TextBox ID="groupfordiscountTextBox" runat="server" Text='<%# Bind("groupfordiscount") %>' />
                                        <br />
                                        clanguage:
                                        <asp:TextBox ID="clanguageTextBox" runat="server" Text='<%# Bind("clanguage") %>' />
                                        <br />
                                        points:
                                        <asp:TextBox ID="pointsTextBox" runat="server" Text='<%# Bind("points") %>' />
                                        <br />
                                        pointstobuy:
                                        <asp:TextBox ID="pointstobuyTextBox" runat="server" Text='<%# Bind("pointstobuy") %>' />
                                        <br />
                                        price2:
                                        <asp:TextBox ID="price2TextBox" runat="server" Text='<%# Bind("price2") %>' />
                                        <br />
                                        price3:
                                        <asp:TextBox ID="price3TextBox" runat="server" Text='<%# Bind("price3") %>' />
                                        <br />
                                        billprice:
                                        <asp:TextBox ID="billpriceTextBox" runat="server" Text='<%# Bind("billprice") %>' />
                                        <br />
                                        billinstallments:
                                        <asp:TextBox ID="billinstallmentsTextBox" runat="server" Text='<%# Bind("billinstallments") %>' />
                                        <br />
                                        billinstallmenttype:
                                        <asp:TextBox ID="billinstallmenttypeTextBox" runat="server" Text='<%# Bind("billinstallmenttype") %>' />
                                        <br />
                                        billinterval:
                                        <asp:TextBox ID="billintervalTextBox" runat="server" Text='<%# Bind("billinterval") %>' />
                                        <br />
                                        maximumquantity:
                                        <asp:TextBox ID="maximumquantityTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                        <br />
                                        frontpage:
                                        <asp:TextBox ID="frontpageTextBox" runat="server" Text='<%# Bind("frontpage") %>' />
                                        <br />
                                        inventoryproducts:
                                        <asp:TextBox ID="inventoryproductsTextBox" runat="server" Text='<%# Bind("inventoryproducts") %>' />
                                        <br />
                                        taxfree:
                                        <asp:CheckBox ID="taxfreeCheckBox" runat="server" Checked='<%# Bind("taxfree") %>' />
                                        <br />
                                        freeshipping:
                                        <asp:CheckBox ID="freeshippingCheckBox" runat="server" Checked='<%# Bind("freeshipping") %>' />
                                        <br />
                                        highercatalogid:
                                        <asp:TextBox ID="highercatalogidTextBox" runat="server" Text='<%# Bind("highercatalogid") %>' />
                                        <br />
                                        spdisplaytype:
                                        <asp:TextBox ID="spdisplaytypeTextBox" runat="server" Text='<%# Bind("spdisplaytype") %>' />
                                        <br />
                                        hassubproduct:
                                        <asp:TextBox ID="hassubproductTextBox" runat="server" Text='<%# Bind("hassubproduct") %>' />
                                        <br />
                                        impressions:
                                        <asp:TextBox ID="impressionsTextBox" runat="server" Text='<%# Bind("impressions") %>' />
                                        <br />
                                        cdateadded:
                                        <asp:TextBox ID="cdateaddedTextBox" runat="server" Text='<%# Bind("cdateadded") %>' />
                                        <br />
                                        cdateupdated:
                                        <asp:TextBox ID="cdateupdatedTextBox" runat="server" Text='<%# Bind("cdateupdated") %>' />
                                        <br />
                                        templatelisting:
                                        <asp:TextBox ID="templatelistingTextBox" runat="server" Text='<%# Bind("templatelisting") %>' />
                                        <br />
                                        extraimage1:
                                        <asp:TextBox ID="extraimage1TextBox" runat="server" Text='<%# Bind("extraimage1") %>' />
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
                                        extraimage5:
                                        <asp:TextBox ID="extraimage5TextBox" runat="server" Text='<%# Bind("extraimage5") %>' />
                                        <br />
                                        featuredflag:
                                        <asp:CheckBox ID="featuredflagCheckBox" runat="server" Checked='<%# Bind("featuredflag") %>' />
                                        <br />
                                        featuredflagorder:
                                        <asp:TextBox ID="featuredflagorderTextBox" runat="server" Text='<%# Bind("featuredflagorder") %>' />
                                        <br />
                                        rmadays:
                                        <asp:TextBox ID="rmadaysTextBox" runat="server" Text='<%# Bind("rmadays") %>' />
                                        <br />
                                        customerimage:
                                        <asp:CheckBox ID="customerimageCheckBox" runat="server" Checked='<%# Bind("customerimage") %>' />
                                        <br />
                                        producttype:
                                        <asp:TextBox ID="producttypeTextBox" runat="server" Text='<%# Bind("producttype") %>' />
                                        <br />
                                        youtube:
                                        <asp:TextBox ID="youtubeTextBox" runat="server" Text='<%# Bind("youtube") %>' />
                                        <br />
                                        movie:
                                        <asp:TextBox ID="movieTextBox" runat="server" Text='<%# Bind("movie") %>' />
                                        <br />
                                        productmetatitle:
                                        <asp:TextBox ID="productmetatitleTextBox" runat="server" Text='<%# Bind("productmetatitle") %>' />
                                        <br />
                                        variants:
                                        <asp:TextBox ID="variantsTextBox" runat="server" Text='<%# Bind("variants") %>' />
                                        <br />
                                        smFrequency:
                                        <asp:TextBox ID="smFrequencyTextBox" runat="server" Text='<%# Bind("smFrequency") %>' />
                                        <br />
                                        smPriority:
                                        <asp:TextBox ID="smPriorityTextBox" runat="server" Text='<%# Bind("smPriority") %>' />
                                        <br />
                                        gsmincluded:
                                        <asp:TextBox ID="gsmincludedTextBox" runat="server" Text='<%# Bind("gsmincluded") %>' />
                                        <br />
                                        loggedin:
                                        <asp:CheckBox ID="loggedinCheckBox" runat="server" Checked='<%# Bind("loggedin") %>' />
                                        <br />
                                        excustomermatch:
                                        <asp:TextBox ID="excustomermatchTextBox" runat="server" Text='<%# Bind("excustomermatch") %>' />
                                        <br />
                                        productmetakeyword:
                                        <asp:TextBox ID="productmetakeywordTextBox" runat="server" Text='<%# Bind("productmetakeyword") %>' />
                                        <br />
                                        productmetadescription:
                                        <asp:TextBox ID="productmetadescriptionTextBox" runat="server" Text='<%# Bind("productmetadescription") %>' />
                                        <br />
                                        cdescription:
                                        <asp:TextBox ID="cdescriptionTextBox" runat="server" Text='<%# Bind("cdescription") %>' />
                                        <br />
                                        extendeddesc:
                                        <asp:TextBox ID="extendeddescTextBox" runat="server" Text='<%# Bind("extendeddesc") %>' />
                                        <br />
                                        ProProCatDisplayCategoryID:
                                        <asp:TextBox ID="ProProCatDisplayCategoryIDTextBox" runat="server" Text='<%# Bind("ProProCatDisplayCategoryID") %>' />
                                        <br />
                                        bundleproidqty:
                                        <asp:TextBox ID="bundleproidqtyTextBox" runat="server" Text='<%# Bind("bundleproidqty") %>' />
                                        <br />
                                        featuredflag2:
                                        <asp:CheckBox ID="featuredflag2CheckBox" runat="server" Checked='<%# Bind("featuredflag2") %>' />
                                        <br />
                                        featuredflagorder2:
                                        <asp:TextBox ID="featuredflagorder2TextBox" runat="server" Text='<%# Bind("featuredflagorder2") %>' />
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
                                        largeextraimage4:
                                        <asp:TextBox ID="largeextraimage4TextBox" runat="server" Text='<%# Bind("largeextraimage4") %>' />
                                        <br />
                                        largeextraimage5:
                                        <asp:TextBox ID="largeextraimage5TextBox" runat="server" Text='<%# Bind("largeextraimage5") %>' />
                                        <br />
                                        displayproducttab:
                                        <asp:CheckBox ID="displayproducttabCheckBox" runat="server" Checked='<%# Bind("displayproducttab") %>' />
                                        <br />
                                        tapcaption:
                                        <asp:TextBox ID="tapcaptionTextBox" runat="server" Text='<%# Bind("tapcaption") %>' />
                                        <br />
                                        tapdescription:
                                        <asp:TextBox ID="tapdescriptionTextBox" runat="server" Text='<%# Bind("tapdescription") %>' />
                                        <br />
                                        gpf_variant_color:
                                        <asp:TextBox ID="gpf_variant_colorTextBox" runat="server" Text='<%# Bind("gpf_variant_color") %>' />
                                        <br />
                                        gpf_variant_size:
                                        <asp:TextBox ID="gpf_variant_sizeTextBox" runat="server" Text='<%# Bind("gpf_variant_size") %>' />
                                        <br />
                                        gpf_variant_pattern:
                                        <asp:TextBox ID="gpf_variant_patternTextBox" runat="server" Text='<%# Bind("gpf_variant_pattern") %>' />
                                        <br />
                                        gpf_variant_material:
                                        <asp:TextBox ID="gpf_variant_materialTextBox" runat="server" Text='<%# Bind("gpf_variant_material") %>' />
                                        <br />
                                        gpf_variant_brand:
                                        <asp:TextBox ID="gpf_variant_brandTextBox" runat="server" Text='<%# Bind("gpf_variant_brand") %>' />
                                        <br />
                                        gpf_variant_ageGroup:
                                        <asp:TextBox ID="gpf_variant_ageGroupTextBox" runat="server" Text='<%# Bind("gpf_variant_ageGroup") %>' />
                                        <br />
                                        gpf_variant_gender:
                                        <asp:TextBox ID="gpf_variant_genderTextBox" runat="server" Text='<%# Bind("gpf_variant_gender") %>' />
                                        <br />
                                        gpf_category:
                                        <asp:TextBox ID="gpf_categoryTextBox" runat="server" Text='<%# Bind("gpf_category") %>' />
                                        <br />
                                        gpf_variant_color_manual:
                                        <asp:TextBox ID="gpf_variant_color_manualTextBox" runat="server" Text='<%# Bind("gpf_variant_color_manual") %>' />
                                        <br />
                                        gpf_variant_size_manual:
                                        <asp:TextBox ID="gpf_variant_size_manualTextBox" runat="server" Text='<%# Bind("gpf_variant_size_manual") %>' />
                                        <br />
                                        gpf_variant_pattern_manual:
                                        <asp:TextBox ID="gpf_variant_pattern_manualTextBox" runat="server" Text='<%# Bind("gpf_variant_pattern_manual") %>' />
                                        <br />
                                        gpf_variant_material_manual:
                                        <asp:TextBox ID="gpf_variant_material_manualTextBox" runat="server" Text='<%# Bind("gpf_variant_material_manual") %>' />
                                        <br />
                                        gpf_variant_brand_manual:
                                        <asp:TextBox ID="gpf_variant_brand_manualTextBox" runat="server" Text='<%# Bind("gpf_variant_brand_manual") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <InsertItemTemplate>
                                        Product Code:
                                        <asp:TextBox ID="ccodeTextBox" runat="server" Text='<%# Bind("ccode") %>' />
                                        <br />
                                        Product Name:
                                        <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="cpriceTextBox" runat="server" Text='<%# Bind("cprice") %>' />
                                        <br />
                                        Category:
                                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="AccessDataSource2" DataTextField="catdescription" DataValueField="categoryid" SelectedIndex='<%# Bind("ccategory") %>'>
                                        </asp:DropDownList>
                                        <br />
                                        Details:
                                        <asp:TextBox ID="featuresTextBox" runat="server" Text='<%# Bind("features") %>' />
                                        <br />
                                        Calories:
                                        <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                                        <br />
                                        Fat:
                                        <asp:TextBox ID="pother1TextBox" runat="server" Text='<%# Bind("pother1") %>' />
                                        <br />
                                        Taste:
                                        <asp:TextBox ID="pother2TextBox" runat="server" Text='<%# Bind("pother2") %>' />
                                        <br />
                                        Ingredients:
                                        <asp:TextBox ID="pother3TextBox" runat="server" Text='<%# Bind("pother3") %>' />
                                        <br />
                                        Retail Price:
                                        <asp:TextBox ID="retailpriceTextBox" runat="server" Text='<%# Bind("retailprice") %>' />
                                        <br />Offer:
                                        <asp:TextBox ID="specialofferTextBox" runat="server" Text='<%# Bind("specialoffer") %>' />
                                        <br />
                                        Category:
                                        <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                                        <br />
                                        Available Date:
                                        <asp:TextBox ID="cdateavailableTextBox" runat="server" Text='<%# Bind("cdateavailable") %>' />
                                        <br />
                                        Season end(if):
                                        <asp:TextBox ID="cdateendTextBox" runat="server" Text='<%# Bind("cdateend") %>' />
                                        <br />
                                        Image Name:
                                        <asp:TextBox ID="extendedimageTextBox" runat="server" Text='<%# Bind("extendedimage") %>' /><a href="Fileupload.aspx" target="_blank">Upload</a>
                                        <br />
                                        Minimum Quantity:
                                        <asp:TextBox ID="minimumquantityTextBox" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                        <br />
                                        Company:
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource4" DataTextField="company" DataValueField="company" SelectedIndex='<%# Bind("supplierCompany") %>'>
                                        </asp:DropDownList>
                                        <br />
                                        Discount:
                                        <asp:TextBox ID="groupfordiscountTextBox" runat="server" Text='<%# Bind("groupfordiscount") %>' />
                                        <br />
                                        Price-2:
                                        <asp:TextBox ID="price2TextBox" runat="server" Text='<%# Bind("price2") %>' />
                                        <br />
                                        Price-3:
                                        <asp:TextBox ID="price3TextBox" runat="server" Text='<%# Bind("price3") %>' />
                                        <br />
                                        Bill Price:
                                        <asp:TextBox ID="billpriceTextBox" runat="server" Text='<%# Bind("billprice") %>' />
                                        <br />
                                        Terval Cost ?
                                        <asp:TextBox ID="billintervalTextBox" runat="server" Text='<%# Bind("billinterval") %>' />
                                        <br />
                                        Maximum Quantity:
                                        <asp:TextBox ID="maximumquantityTextBox" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                        <br />
                                        Menu image Name:
                                        <asp:TextBox ID="extraimage1TextBox" runat="server" Text='<%# Bind("extraimage1") %>' />
                                        <a href="Fileupload.aspx" target="_blank">Upload</a><br />Extra image2 Name:
                                        <asp:TextBox ID="extraimage2TextBox" runat="server" Text='<%# Bind("extraimage2") %>' /><a href="Fileupload.aspx" target="_blank">Upload</a>
                                        <br />
                                        Youtube link:
                                        <asp:TextBox ID="youtubeTextBox" runat="server" Text='<%# Bind("youtube") %>' />
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Register" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Visible="False" />
                                    </InsertItemTemplate>
                                    <InsertRowStyle Font-Italic="True" />
                                    <ItemTemplate>
                                        catalogid:
                                        <asp:Label ID="catalogidLabel" runat="server" Text='<%# Eval("catalogid") %>' />
                                        <br />
                                        ccode:
                                        <asp:Label ID="ccodeLabel" runat="server" Text='<%# Bind("ccode") %>' />
                                        <br />
                                        cname:
                                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Bind("cname") %>' />
                                        <br />
                                        cprice:
                                        <asp:Label ID="cpriceLabel" runat="server" Text='<%# Bind("cprice") %>' />
                                        <br />
                                        ccategory:
                                        <asp:Label ID="ccategoryLabel" runat="server" Text='<%# Bind("ccategory") %>' />
                                        <br />
                                        cdescurl:
                                        <asp:Label ID="cdescurlLabel" runat="server" Text='<%# Bind("cdescurl") %>' />
                                        <br />
                                        features:
                                        <asp:Label ID="featuresLabel" runat="server" Text='<%# Bind("features") %>' />
                                        <br />
                                        cimageurl:
                                        <asp:Label ID="cimageurlLabel" runat="server" Text='<%# Bind("cimageurl") %>' />
                                        <br />
                                        cstock:
                                        <asp:Label ID="cstockLabel" runat="server" Text='<%# Bind("cstock") %>' />
                                        <br />
                                        weight:
                                        <asp:Label ID="weightLabel" runat="server" Text='<%# Bind("weight") %>' />
                                        <br />
                                        mfg:
                                        <asp:Label ID="mfgLabel" runat="server" Text='<%# Bind("mfg") %>' />
                                        <br />
                                        pother1:
                                        <asp:Label ID="pother1Label" runat="server" Text='<%# Bind("pother1") %>' />
                                        <br />
                                        pother2:
                                        <asp:Label ID="pother2Label" runat="server" Text='<%# Bind("pother2") %>' />
                                        <br />
                                        pother3:
                                        <asp:Label ID="pother3Label" runat="server" Text='<%# Bind("pother3") %>' />
                                        <br />
                                        subcategoryid:
                                        <asp:Label ID="subcategoryidLabel" runat="server" Text='<%# Bind("subcategoryid") %>' />
                                        <br />
                                        retailprice:
                                        <asp:Label ID="retailpriceLabel" runat="server" Text='<%# Bind("retailprice") %>' />
                                        <br />
                                        specialoffer:
                                        <asp:Label ID="specialofferLabel" runat="server" Text='<%# Bind("specialoffer") %>' />
                                        <br />
                                        category:
                                        <asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' />
                                        <br />
                                        buttonimage:
                                        <asp:Label ID="buttonimageLabel" runat="server" Text='<%# Bind("buttonimage") %>' />
                                        <br />
                                        cdateavailable:
                                        <asp:Label ID="cdateavailableLabel" runat="server" Text='<%# Bind("cdateavailable") %>' />
                                        <br />
                                        cdateend:
                                        <asp:Label ID="cdateendLabel" runat="server" Text='<%# Bind("cdateend") %>' />
                                        <br />
                                        allowusertext:
                                        <asp:Label ID="allowusertextLabel" runat="server" Text='<%# Bind("allowusertext") %>' />
                                        <br />
                                        pother4:
                                        <asp:Label ID="pother4Label" runat="server" Text='<%# Bind("pother4") %>' />
                                        <br />
                                        pother5:
                                        <asp:Label ID="pother5Label" runat="server" Text='<%# Bind("pother5") %>' />
                                        <br />
                                        userid:
                                        <asp:Label ID="useridLabel" runat="server" Text='<%# Bind("userid") %>' />
                                        <br />
                                        keywords:
                                        <asp:Label ID="keywordsLabel" runat="server" Text='<%# Bind("keywords") %>' />
                                        <br />
                                        template:
                                        <asp:Label ID="templateLabel" runat="server" Text='<%# Bind("template") %>' />
                                        <br />
                                        extendedimage:
                                        <asp:Label ID="extendedimageLabel" runat="server" Text='<%# Bind("extendedimage") %>' />
                                        <br />
                                        selectlist:
                                        <asp:Label ID="selectlistLabel" runat="server" Text='<%# Bind("selectlist") %>' />
                                        <br />
                                        level3:
                                        <asp:Label ID="level3Label" runat="server" Text='<%# Bind("level3") %>' />
                                        <br />
                                        level4:
                                        <asp:Label ID="level4Label" runat="server" Text='<%# Bind("level4") %>' />
                                        <br />
                                        level5:
                                        <asp:Label ID="level5Label" runat="server" Text='<%# Bind("level5") %>' />
                                        <br />
                                        minimumquantity:
                                        <asp:Label ID="minimumquantityLabel" runat="server" Text='<%# Bind("minimumquantity") %>' />
                                        <br />
                                        supplierCompany:
                                        <asp:Label ID="supplierCompanyLabel" runat="server" Text='<%# Bind("supplierCompany") %>' />
                                        <br />
                                        crossselling:
                                        <asp:Label ID="crosssellingLabel" runat="server" Text='<%# Bind("crossselling") %>' />
                                        <br />
                                        hide:
                                        <asp:CheckBox ID="hideCheckBox" runat="server" Checked='<%# Bind("hide") %>' Enabled="false" />
                                        <br />
                                        productmatch:
                                        <asp:Label ID="productmatchLabel" runat="server" Text='<%# Bind("productmatch") %>' />
                                        <br />
                                        customermatch:
                                        <asp:Label ID="customermatchLabel" runat="server" Text='<%# Bind("customermatch") %>' />
                                        <br />
                                        orderattachment:
                                        <asp:Label ID="orderattachmentLabel" runat="server" Text='<%# Bind("orderattachment") %>' />
                                        <br />
                                        orderdownload:
                                        <asp:Label ID="orderdownloadLabel" runat="server" Text='<%# Bind("orderdownload") %>' />
                                        <br />
                                        groupfordiscount:
                                        <asp:Label ID="groupfordiscountLabel" runat="server" Text='<%# Bind("groupfordiscount") %>' />
                                        <br />
                                        clanguage:
                                        <asp:Label ID="clanguageLabel" runat="server" Text='<%# Bind("clanguage") %>' />
                                        <br />
                                        points:
                                        <asp:Label ID="pointsLabel" runat="server" Text='<%# Bind("points") %>' />
                                        <br />
                                        pointstobuy:
                                        <asp:Label ID="pointstobuyLabel" runat="server" Text='<%# Bind("pointstobuy") %>' />
                                        <br />
                                        price2:
                                        <asp:Label ID="price2Label" runat="server" Text='<%# Bind("price2") %>' />
                                        <br />
                                        price3:
                                        <asp:Label ID="price3Label" runat="server" Text='<%# Bind("price3") %>' />
                                        <br />
                                        billprice:
                                        <asp:Label ID="billpriceLabel" runat="server" Text='<%# Bind("billprice") %>' />
                                        <br />
                                        billinstallments:
                                        <asp:Label ID="billinstallmentsLabel" runat="server" Text='<%# Bind("billinstallments") %>' />
                                        <br />
                                        billinstallmenttype:
                                        <asp:Label ID="billinstallmenttypeLabel" runat="server" Text='<%# Bind("billinstallmenttype") %>' />
                                        <br />
                                        billinterval:
                                        <asp:Label ID="billintervalLabel" runat="server" Text='<%# Bind("billinterval") %>' />
                                        <br />
                                        maximumquantity:
                                        <asp:Label ID="maximumquantityLabel" runat="server" Text='<%# Bind("maximumquantity") %>' />
                                        <br />
                                        frontpage:
                                        <asp:Label ID="frontpageLabel" runat="server" Text='<%# Bind("frontpage") %>' />
                                        <br />
                                        inventoryproducts:
                                        <asp:Label ID="inventoryproductsLabel" runat="server" Text='<%# Bind("inventoryproducts") %>' />
                                        <br />
                                        taxfree:
                                        <asp:CheckBox ID="taxfreeCheckBox" runat="server" Checked='<%# Bind("taxfree") %>' Enabled="false" />
                                        <br />
                                        freeshipping:
                                        <asp:CheckBox ID="freeshippingCheckBox" runat="server" Checked='<%# Bind("freeshipping") %>' Enabled="false" />
                                        <br />
                                        highercatalogid:
                                        <asp:Label ID="highercatalogidLabel" runat="server" Text='<%# Bind("highercatalogid") %>' />
                                        <br />
                                        spdisplaytype:
                                        <asp:Label ID="spdisplaytypeLabel" runat="server" Text='<%# Bind("spdisplaytype") %>' />
                                        <br />
                                        hassubproduct:
                                        <asp:Label ID="hassubproductLabel" runat="server" Text='<%# Bind("hassubproduct") %>' />
                                        <br />
                                        impressions:
                                        <asp:Label ID="impressionsLabel" runat="server" Text='<%# Bind("impressions") %>' />
                                        <br />
                                        cdateadded:
                                        <asp:Label ID="cdateaddedLabel" runat="server" Text='<%# Bind("cdateadded") %>' />
                                        <br />
                                        cdateupdated:
                                        <asp:Label ID="cdateupdatedLabel" runat="server" Text='<%# Bind("cdateupdated") %>' />
                                        <br />
                                        templatelisting:
                                        <asp:Label ID="templatelistingLabel" runat="server" Text='<%# Bind("templatelisting") %>' />
                                        <br />
                                        extraimage1:
                                        <asp:Label ID="extraimage1Label" runat="server" Text='<%# Bind("extraimage1") %>' />
                                        <br />
                                        extraimage2:
                                        <asp:Label ID="extraimage2Label" runat="server" Text='<%# Bind("extraimage2") %>' />
                                        <br />
                                        extraimage3:
                                        <asp:Label ID="extraimage3Label" runat="server" Text='<%# Bind("extraimage3") %>' />
                                        <br />
                                        extraimage4:
                                        <asp:Label ID="extraimage4Label" runat="server" Text='<%# Bind("extraimage4") %>' />
                                        <br />
                                        extraimage5:
                                        <asp:Label ID="extraimage5Label" runat="server" Text='<%# Bind("extraimage5") %>' />
                                        <br />
                                        featuredflag:
                                        <asp:CheckBox ID="featuredflagCheckBox" runat="server" Checked='<%# Bind("featuredflag") %>' Enabled="false" />
                                        <br />
                                        featuredflagorder:
                                        <asp:Label ID="featuredflagorderLabel" runat="server" Text='<%# Bind("featuredflagorder") %>' />
                                        <br />
                                        rmadays:
                                        <asp:Label ID="rmadaysLabel" runat="server" Text='<%# Bind("rmadays") %>' />
                                        <br />
                                        customerimage:
                                        <asp:CheckBox ID="customerimageCheckBox" runat="server" Checked='<%# Bind("customerimage") %>' Enabled="false" />
                                        <br />
                                        producttype:
                                        <asp:Label ID="producttypeLabel" runat="server" Text='<%# Bind("producttype") %>' />
                                        <br />
                                        youtube:
                                        <asp:Label ID="youtubeLabel" runat="server" Text='<%# Bind("youtube") %>' />
                                        <br />
                                        movie:
                                        <asp:Label ID="movieLabel" runat="server" Text='<%# Bind("movie") %>' />
                                        <br />
                                        productmetatitle:
                                        <asp:Label ID="productmetatitleLabel" runat="server" Text='<%# Bind("productmetatitle") %>' />
                                        <br />
                                        variants:
                                        <asp:Label ID="variantsLabel" runat="server" Text='<%# Bind("variants") %>' />
                                        <br />
                                        smFrequency:
                                        <asp:Label ID="smFrequencyLabel" runat="server" Text='<%# Bind("smFrequency") %>' />
                                        <br />
                                        smPriority:
                                        <asp:Label ID="smPriorityLabel" runat="server" Text='<%# Bind("smPriority") %>' />
                                        <br />
                                        gsmincluded:
                                        <asp:Label ID="gsmincludedLabel" runat="server" Text='<%# Bind("gsmincluded") %>' />
                                        <br />
                                        loggedin:
                                        <asp:CheckBox ID="loggedinCheckBox" runat="server" Checked='<%# Bind("loggedin") %>' Enabled="false" />
                                        <br />
                                        excustomermatch:
                                        <asp:Label ID="excustomermatchLabel" runat="server" Text='<%# Bind("excustomermatch") %>' />
                                        <br />
                                        productmetakeyword:
                                        <asp:Label ID="productmetakeywordLabel" runat="server" Text='<%# Bind("productmetakeyword") %>' />
                                        <br />
                                        productmetadescription:
                                        <asp:Label ID="productmetadescriptionLabel" runat="server" Text='<%# Bind("productmetadescription") %>' />
                                        <br />
                                        cdescription:
                                        <asp:Label ID="cdescriptionLabel" runat="server" Text='<%# Bind("cdescription") %>' />
                                        <br />
                                        extendeddesc:
                                        <asp:Label ID="extendeddescLabel" runat="server" Text='<%# Bind("extendeddesc") %>' />
                                        <br />
                                        ProProCatDisplayCategoryID:
                                        <asp:Label ID="ProProCatDisplayCategoryIDLabel" runat="server" Text='<%# Bind("ProProCatDisplayCategoryID") %>' />
                                        <br />
                                        bundleproidqty:
                                        <asp:Label ID="bundleproidqtyLabel" runat="server" Text='<%# Bind("bundleproidqty") %>' />
                                        <br />
                                        featuredflag2:
                                        <asp:CheckBox ID="featuredflag2CheckBox" runat="server" Checked='<%# Bind("featuredflag2") %>' Enabled="false" />
                                        <br />
                                        featuredflagorder2:
                                        <asp:Label ID="featuredflagorder2Label" runat="server" Text='<%# Bind("featuredflagorder2") %>' />
                                        <br />
                                        largeextendedimage:
                                        <asp:Label ID="largeextendedimageLabel" runat="server" Text='<%# Bind("largeextendedimage") %>' />
                                        <br />
                                        largeextraimage1:
                                        <asp:Label ID="largeextraimage1Label" runat="server" Text='<%# Bind("largeextraimage1") %>' />
                                        <br />
                                        largeextraimage2:
                                        <asp:Label ID="largeextraimage2Label" runat="server" Text='<%# Bind("largeextraimage2") %>' />
                                        <br />
                                        largeextraimage3:
                                        <asp:Label ID="largeextraimage3Label" runat="server" Text='<%# Bind("largeextraimage3") %>' />
                                        <br />
                                        largeextraimage4:
                                        <asp:Label ID="largeextraimage4Label" runat="server" Text='<%# Bind("largeextraimage4") %>' />
                                        <br />
                                        largeextraimage5:
                                        <asp:Label ID="largeextraimage5Label" runat="server" Text='<%# Bind("largeextraimage5") %>' />
                                        <br />
                                        displayproducttab:
                                        <asp:CheckBox ID="displayproducttabCheckBox" runat="server" Checked='<%# Bind("displayproducttab") %>' Enabled="false" />
                                        <br />
                                        tapcaption:
                                        <asp:Label ID="tapcaptionLabel" runat="server" Text='<%# Bind("tapcaption") %>' />
                                        <br />
                                        tapdescription:
                                        <asp:Label ID="tapdescriptionLabel" runat="server" Text='<%# Bind("tapdescription") %>' />
                                        <br />
                                        gpf_variant_color:
                                        <asp:Label ID="gpf_variant_colorLabel" runat="server" Text='<%# Bind("gpf_variant_color") %>' />
                                        <br />
                                        gpf_variant_size:
                                        <asp:Label ID="gpf_variant_sizeLabel" runat="server" Text='<%# Bind("gpf_variant_size") %>' />
                                        <br />
                                        gpf_variant_pattern:
                                        <asp:Label ID="gpf_variant_patternLabel" runat="server" Text='<%# Bind("gpf_variant_pattern") %>' />
                                        <br />
                                        gpf_variant_material:
                                        <asp:Label ID="gpf_variant_materialLabel" runat="server" Text='<%# Bind("gpf_variant_material") %>' />
                                        <br />
                                        gpf_variant_brand:
                                        <asp:Label ID="gpf_variant_brandLabel" runat="server" Text='<%# Bind("gpf_variant_brand") %>' />
                                        <br />
                                        gpf_variant_ageGroup:
                                        <asp:Label ID="gpf_variant_ageGroupLabel" runat="server" Text='<%# Bind("gpf_variant_ageGroup") %>' />
                                        <br />
                                        gpf_variant_gender:
                                        <asp:Label ID="gpf_variant_genderLabel" runat="server" Text='<%# Bind("gpf_variant_gender") %>' />
                                        <br />
                                        gpf_category:
                                        <asp:Label ID="gpf_categoryLabel" runat="server" Text='<%# Bind("gpf_category") %>' />
                                        <br />
                                        gpf_variant_color_manual:
                                        <asp:Label ID="gpf_variant_color_manualLabel" runat="server" Text='<%# Bind("gpf_variant_color_manual") %>' />
                                        <br />
                                        gpf_variant_size_manual:
                                        <asp:Label ID="gpf_variant_size_manualLabel" runat="server" Text='<%# Bind("gpf_variant_size_manual") %>' />
                                        <br />
                                        gpf_variant_pattern_manual:
                                        <asp:Label ID="gpf_variant_pattern_manualLabel" runat="server" Text='<%# Bind("gpf_variant_pattern_manual") %>' />
                                        <br />
                                        gpf_variant_material_manual:
                                        <asp:Label ID="gpf_variant_material_manualLabel" runat="server" Text='<%# Bind("gpf_variant_material_manual") %>' />
                                        <br />
                                        gpf_variant_brand_manual:
                                        <asp:Label ID="gpf_variant_brand_manualLabel" runat="server" Text='<%# Bind("gpf_variant_brand_manual") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                </asp:FormView>
            </td>
            
        </tr>
        <tr>
            
            <td style="font-family: 'times New Roman', Times, serif; vertical-align: top; caption-side: top;" class="auto-style51">
                
            <table><tr><td>
                &nbsp;<td>
                    &nbsp;<td>
                    &nbsp;<td>
                    &nbsp;</td></tr></table>
                <br />
            </td>
            
            <td tyle="text-align: justify" style="vertical-align: top;" class="auto-style45">
                <p class="MsoNormal"><asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [categoryid], [catdescription] FROM [categories]">
        
</asp:AccessDataSource>
                    <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [company], [supplierid] FROM [suppliers]">
        
</asp:AccessDataSource>
                </p>
            </td>
            
        </tr>
        <tr>
            <td class="DDLightHeader" colspan="2" style="text-align: center; vertical-align: top;"><a href="aboutus.aspx"> ABOUT US      </tr>
        <tr>
            
            <td class="auto-style15" style="vertical-align: top;">
                <div class="DDSubHeader" style="text-align: center" >
                  <a href="aboutus.aspx">  <img alt="CAN" class="auto-style23" src="whatwedo.png" /></a><br />
                    WHAT WE DO<br />
                    <br /></div>
                    <div style="font-family: 'times New Roman', Times, serif; text-align: justify;" class="auto-style44">
                        <br />
                    </div>
                    <div>
                        <br />
                    </div>
                    <div style="text-align: justify;" class="auto-style39">
                    <video width='340' height='360' controls>
 
   <!-- Safari / iOS video    -->
   <source src='/photoGallery/VIDEO0070_Trim.mp4' type='video/mp4' />
 
   <!-- Firefox / Opera / Chrome10 -->
   <source src='SomeVideo.OGG' type='video/ogg' />
 
   <!-- fallback - no support for the HTML Video Tag -->
   <img src='NO-VIDEO.JPG' width='640' height='360'
        alt='No HTML5 VIdeo Support'
        title='No video playback capabilities' />
</video>
                   </div>
                
            </td>
            
            <td style="vertical-align: top;" class="auto-style46"> 
                    <div class="rich-text-content">
                       
                            <p class="auto-style37" style="font-family: &quot;times New Roman&quot;, Times, serif">
                       
                                &nbsp;</p>
                            <p class="auto-style37" style="font-family: &quot;times New Roman&quot;, Times, serif">
                       
                                &nbsp;</p>
                            <p class="auto-style37" style="font-family: &quot;times New Roman&quot;, Times, serif">
                       
                                <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM [products] WHERE [catalogid] = ?" InsertCommand="INSERT INTO [products] ([ccode], [cname], [cprice], [ccategory], [cdescurl], [features], [cimageurl], [cstock], [weight], [mfg], [pother1], [pother2], [pother3], [subcategoryid], [retailprice], [specialoffer], [category], [buttonimage], [cdateavailable], [cdateend], [allowusertext], [pother4], [pother5], [userid], [keywords], [template], [extendedimage], [selectlist], [level3], [level4], [level5], [minimumquantity], [supplierCompany], [crossselling], [hide], [productmatch], [customermatch], [orderattachment], [orderdownload], [groupfordiscount], [clanguage], [points], [pointstobuy], [price2], [price3], [billprice], [billinstallments], [billinstallmenttype], [billinterval], [maximumquantity], [frontpage], [inventoryproducts], [taxfree], [freeshipping], [highercatalogid], [spdisplaytype], [hassubproduct], [impressions], [cdateadded], [cdateupdated], [templatelisting], [extraimage1], [extraimage2], [extraimage3], [extraimage4], [extraimage5], [featuredflag], [featuredflagorder], [rmadays], [customerimage], [producttype], [youtube], [movie], [productmetatitle], [variants], [smFrequency], [smPriority], [gsmincluded], [loggedin], [excustomermatch], [productmetakeyword], [productmetadescription], [cdescription], [extendeddesc], [ProProCatDisplayCategoryID], [bundleproidqty], [featuredflag2], [featuredflagorder2], [largeextendedimage], [largeextraimage1], [largeextraimage2], [largeextraimage3], [largeextraimage4], [largeextraimage5], [displayproducttab], [tapcaption], [tapdescription], [gpf_variant_color], [gpf_variant_size], [gpf_variant_pattern], [gpf_variant_material], [gpf_variant_brand], [gpf_variant_ageGroup], [gpf_variant_gender], [gpf_category], [gpf_variant_color_manual], [gpf_variant_size_manual], [gpf_variant_pattern_manual], [gpf_variant_material_manual], [gpf_variant_brand_manual]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [ccode] = ?, [cname] = ?, [cprice] = ?, [ccategory] = ?, [cdescurl] = ?, [features] = ?, [cimageurl] = ?, [cstock] = ?, [weight] = ?, [mfg] = ?, [pother1] = ?, [pother2] = ?, [pother3] = ?, [subcategoryid] = ?, [retailprice] = ?, [specialoffer] = ?, [category] = ?, [buttonimage] = ?, [cdateavailable] = ?, [cdateend] = ?, [allowusertext] = ?, [pother4] = ?, [pother5] = ?, [userid] = ?, [keywords] = ?, [template] = ?, [extendedimage] = ?, [selectlist] = ?, [level3] = ?, [level4] = ?, [level5] = ?, [minimumquantity] = ?, [supplierCompany] = ?, [crossselling] = ?, [hide] = ?, [productmatch] = ?, [customermatch] = ?, [orderattachment] = ?, [orderdownload] = ?, [groupfordiscount] = ?, [clanguage] = ?, [points] = ?, [pointstobuy] = ?, [price2] = ?, [price3] = ?, [billprice] = ?, [billinstallments] = ?, [billinstallmenttype] = ?, [billinterval] = ?, [maximumquantity] = ?, [frontpage] = ?, [inventoryproducts] = ?, [taxfree] = ?, [freeshipping] = ?, [highercatalogid] = ?, [spdisplaytype] = ?, [hassubproduct] = ?, [impressions] = ?, [cdateadded] = ?, [cdateupdated] = ?, [templatelisting] = ?, [extraimage1] = ?, [extraimage2] = ?, [extraimage3] = ?, [extraimage4] = ?, [extraimage5] = ?, [featuredflag] = ?, [featuredflagorder] = ?, [rmadays] = ?, [customerimage] = ?, [producttype] = ?, [youtube] = ?, [movie] = ?, [productmetatitle] = ?, [variants] = ?, [smFrequency] = ?, [smPriority] = ?, [gsmincluded] = ?, [loggedin] = ?, [excustomermatch] = ?, [productmetakeyword] = ?, [productmetadescription] = ?, [cdescription] = ?, [extendeddesc] = ?, [ProProCatDisplayCategoryID] = ?, [bundleproidqty] = ?, [featuredflag2] = ?, [featuredflagorder2] = ?, [largeextendedimage] = ?, [largeextraimage1] = ?, [largeextraimage2] = ?, [largeextraimage3] = ?, [largeextraimage4] = ?, [largeextraimage5] = ?, [displayproducttab] = ?, [tapcaption] = ?, [tapdescription] = ?, [gpf_variant_color] = ?, [gpf_variant_size] = ?, [gpf_variant_pattern] = ?, [gpf_variant_material] = ?, [gpf_variant_brand] = ?, [gpf_variant_ageGroup] = ?, [gpf_variant_gender] = ?, [gpf_category] = ?, [gpf_variant_color_manual] = ?, [gpf_variant_size_manual] = ?, [gpf_variant_pattern_manual] = ?, [gpf_variant_material_manual] = ?, [gpf_variant_brand_manual] = ? WHERE [catalogid] = ?">
        
                                    <DeleteParameters>
                                        <asp:Parameter Name="catalogid" Type="Int32" />
                                    </DeleteParameters>
        
        <InsertParameters>
            
            <asp:Parameter Name="ccode" Type="String" />
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cprice" Type="Decimal" />
            <asp:Parameter Name="ccategory" Type="Int32" />
            <asp:Parameter Name="cdescurl" Type="String" />
            <asp:Parameter Name="features" Type="String" />
            <asp:Parameter Name="cimageurl" Type="String" />
            <asp:Parameter Name="cstock" Type="Int32" />
            <asp:Parameter Name="weight" Type="String" />
            <asp:Parameter Name="mfg" Type="String" />
            <asp:Parameter Name="pother1" Type="String" />
            <asp:Parameter Name="pother2" Type="String" />
            <asp:Parameter Name="pother3" Type="String" />
            <asp:Parameter Name="subcategoryid" Type="Int32" />
            <asp:Parameter Name="retailprice" Type="Decimal" />
            <asp:Parameter Name="specialoffer" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="buttonimage" Type="String" />
            <asp:Parameter Name="cdateavailable" Type="DateTime" />
            <asp:Parameter Name="cdateend" Type="DateTime" />
            <asp:Parameter Name="allowusertext" Type="String" />
            <asp:Parameter Name="pother4" Type="String" />
            <asp:Parameter Name="pother5" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="keywords" Type="String" />
            <asp:Parameter Name="template" Type="String" />
            <asp:Parameter Name="extendedimage" Type="String" />
            <asp:Parameter Name="selectlist" Type="String" />
            <asp:Parameter Name="level3" Type="String" />
            <asp:Parameter Name="level4" Type="String" />
            <asp:Parameter Name="level5" Type="String" />
            <asp:Parameter Name="minimumquantity" Type="Int32" />
            <asp:Parameter Name="supplierCompany" Type="Int32" />
            <asp:Parameter Name="crossselling" Type="String" />
            <asp:Parameter Name="hide" Type="Boolean" />
            <asp:Parameter Name="productmatch" Type="String" />
            <asp:Parameter Name="customermatch" Type="String" />
            <asp:Parameter Name="orderattachment" Type="String" />
            <asp:Parameter Name="orderdownload" Type="String" />
            <asp:Parameter Name="groupfordiscount" Type="String" />
            <asp:Parameter Name="clanguage" Type="String" />
            <asp:Parameter Name="points" Type="Int32" />
            <asp:Parameter Name="pointstobuy" Type="Int32" />
            <asp:Parameter Name="price2" Type="Decimal" />
            <asp:Parameter Name="price3" Type="Decimal" />
            <asp:Parameter Name="billprice" Type="Decimal" />
            <asp:Parameter Name="billinstallments" Type="Int32" />
            <asp:Parameter Name="billinstallmenttype" Type="String" />
            <asp:Parameter Name="billinterval" Type="Int32" />
            <asp:Parameter Name="maximumquantity" Type="Int32" />
            <asp:Parameter Name="frontpage" Type="String" />
            <asp:Parameter Name="inventoryproducts" Type="String" />
            <asp:Parameter Name="taxfree" Type="Boolean" />
            <asp:Parameter Name="freeshipping" Type="Boolean" />
            <asp:Parameter Name="highercatalogid" Type="Int32" />
            <asp:Parameter Name="spdisplaytype" Type="String" />
            <asp:Parameter Name="hassubproduct" Type="String" />
            <asp:Parameter Name="impressions" Type="Int32" />
            <asp:Parameter Name="cdateadded" Type="DateTime" />
            <asp:Parameter Name="cdateupdated" Type="DateTime" />
            <asp:Parameter Name="templatelisting" Type="String" />
            <asp:Parameter Name="extraimage1" Type="String" />
            <asp:Parameter Name="extraimage2" Type="String" />
            <asp:Parameter Name="extraimage3" Type="String" />
            <asp:Parameter Name="extraimage4" Type="String" />
            <asp:Parameter Name="extraimage5" Type="String" />
            <asp:Parameter Name="featuredflag" Type="Boolean" />
            <asp:Parameter Name="featuredflagorder" Type="Int32" />
            <asp:Parameter Name="rmadays" Type="Int32" />
            <asp:Parameter Name="customerimage" Type="Boolean" />
            <asp:Parameter Name="producttype" Type="String" />
            <asp:Parameter Name="youtube" Type="String" />
            <asp:Parameter Name="movie" Type="String" />
            <asp:Parameter Name="productmetatitle" Type="String" />
            <asp:Parameter Name="variants" Type="String" />
            <asp:Parameter Name="smFrequency" Type="String" />
            <asp:Parameter Name="smPriority" Type="String" />
            <asp:Parameter Name="gsmincluded" Type="String" />
            <asp:Parameter Name="loggedin" Type="Boolean" />
            <asp:Parameter Name="excustomermatch" Type="String" />
            <asp:Parameter Name="productmetakeyword" Type="String" />
            <asp:Parameter Name="productmetadescription" Type="String" />
            <asp:Parameter Name="cdescription" Type="String" />
            <asp:Parameter Name="extendeddesc" Type="String" />
            <asp:Parameter Name="ProProCatDisplayCategoryID" Type="String" />
            <asp:Parameter Name="bundleproidqty" Type="String" />
            <asp:Parameter Name="featuredflag2" Type="Boolean" />
            <asp:Parameter Name="featuredflagorder2" Type="Int32" />
            <asp:Parameter Name="largeextendedimage" Type="String" />
            <asp:Parameter Name="largeextraimage1" Type="String" />
            <asp:Parameter Name="largeextraimage2" Type="String" />
            <asp:Parameter Name="largeextraimage3" Type="String" />
            <asp:Parameter Name="largeextraimage4" Type="String" />
            <asp:Parameter Name="largeextraimage5" Type="String" />
            <asp:Parameter Name="displayproducttab" Type="Boolean" />
            <asp:Parameter Name="tapcaption" Type="String" />
            <asp:Parameter Name="tapdescription" Type="String" />
            <asp:Parameter Name="gpf_variant_color" Type="String" />
            <asp:Parameter Name="gpf_variant_size" Type="String" />
            <asp:Parameter Name="gpf_variant_pattern" Type="String" />
            <asp:Parameter Name="gpf_variant_material" Type="String" />
            <asp:Parameter Name="gpf_variant_brand" Type="String" />
            <asp:Parameter Name="gpf_variant_ageGroup" Type="String" />
            <asp:Parameter Name="gpf_variant_gender" Type="String" />
            <asp:Parameter Name="gpf_category" Type="String" />
            <asp:Parameter Name="gpf_variant_color_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_size_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_pattern_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_material_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_brand_manual" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ccode" Type="String" />
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cprice" Type="Decimal" />
            <asp:Parameter Name="ccategory" Type="Int32" />
            <asp:Parameter Name="cdescurl" Type="String" />
            <asp:Parameter Name="features" Type="String" />
            <asp:Parameter Name="cimageurl" Type="String" />
            <asp:Parameter Name="cstock" Type="Int32" />
            <asp:Parameter Name="weight" Type="String" />
            <asp:Parameter Name="mfg" Type="String" />
            <asp:Parameter Name="pother1" Type="String" />
            <asp:Parameter Name="pother2" Type="String" />
            <asp:Parameter Name="pother3" Type="String" />
            <asp:Parameter Name="subcategoryid" Type="Int32" />
            <asp:Parameter Name="retailprice" Type="Decimal" />
            <asp:Parameter Name="specialoffer" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="buttonimage" Type="String" />
            <asp:Parameter Name="cdateavailable" Type="DateTime" />
            <asp:Parameter Name="cdateend" Type="DateTime" />
            <asp:Parameter Name="allowusertext" Type="String" />
            <asp:Parameter Name="pother4" Type="String" />
            <asp:Parameter Name="pother5" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="keywords" Type="String" />
            <asp:Parameter Name="template" Type="String" />
            <asp:Parameter Name="extendedimage" Type="String" />
            <asp:Parameter Name="selectlist" Type="String" />
            <asp:Parameter Name="level3" Type="String" />
            <asp:Parameter Name="level4" Type="String" />
            <asp:Parameter Name="level5" Type="String" />
            <asp:Parameter Name="minimumquantity" Type="Int32" />
            <asp:Parameter Name="supplierCompany" Type="Int32" />
            <asp:Parameter Name="crossselling" Type="String" />
            <asp:Parameter Name="hide" Type="Boolean" />
            <asp:Parameter Name="productmatch" Type="String" />
            <asp:Parameter Name="customermatch" Type="String" />
            <asp:Parameter Name="orderattachment" Type="String" />
            <asp:Parameter Name="orderdownload" Type="String" />
            <asp:Parameter Name="groupfordiscount" Type="String" />
            <asp:Parameter Name="clanguage" Type="String" />
            <asp:Parameter Name="points" Type="Int32" />
            <asp:Parameter Name="pointstobuy" Type="Int32" />
            <asp:Parameter Name="price2" Type="Decimal" />
            <asp:Parameter Name="price3" Type="Decimal" />
            <asp:Parameter Name="billprice" Type="Decimal" />
            <asp:Parameter Name="billinstallments" Type="Int32" />
            <asp:Parameter Name="billinstallmenttype" Type="String" />
            <asp:Parameter Name="billinterval" Type="Int32" />
            <asp:Parameter Name="maximumquantity" Type="Int32" />
            <asp:Parameter Name="frontpage" Type="String" />
            <asp:Parameter Name="inventoryproducts" Type="String" />
            <asp:Parameter Name="taxfree" Type="Boolean" />
            <asp:Parameter Name="freeshipping" Type="Boolean" />
            <asp:Parameter Name="highercatalogid" Type="Int32" />
            <asp:Parameter Name="spdisplaytype" Type="String" />
            <asp:Parameter Name="hassubproduct" Type="String" />
            <asp:Parameter Name="impressions" Type="Int32" />
            <asp:Parameter Name="cdateadded" Type="DateTime" />
            <asp:Parameter Name="cdateupdated" Type="DateTime" />
            <asp:Parameter Name="templatelisting" Type="String" />
            <asp:Parameter Name="extraimage1" Type="String" />
            <asp:Parameter Name="extraimage2" Type="String" />
            <asp:Parameter Name="extraimage3" Type="String" />
            <asp:Parameter Name="extraimage4" Type="String" />
            <asp:Parameter Name="extraimage5" Type="String" />
            <asp:Parameter Name="featuredflag" Type="Boolean" />
            <asp:Parameter Name="featuredflagorder" Type="Int32" />
            <asp:Parameter Name="rmadays" Type="Int32" />
            <asp:Parameter Name="customerimage" Type="Boolean" />
            <asp:Parameter Name="producttype" Type="String" />
            <asp:Parameter Name="youtube" Type="String" />
            <asp:Parameter Name="movie" Type="String" />
            <asp:Parameter Name="productmetatitle" Type="String" />
            <asp:Parameter Name="variants" Type="String" />
            <asp:Parameter Name="smFrequency" Type="String" />
            <asp:Parameter Name="smPriority" Type="String" />
            <asp:Parameter Name="gsmincluded" Type="String" />
            <asp:Parameter Name="loggedin" Type="Boolean" />
            <asp:Parameter Name="excustomermatch" Type="String" />
            <asp:Parameter Name="productmetakeyword" Type="String" />
            <asp:Parameter Name="productmetadescription" Type="String" />
            <asp:Parameter Name="cdescription" Type="String" />
            <asp:Parameter Name="extendeddesc" Type="String" />
            <asp:Parameter Name="ProProCatDisplayCategoryID" Type="String" />
            <asp:Parameter Name="bundleproidqty" Type="String" />
            <asp:Parameter Name="featuredflag2" Type="Boolean" />
            <asp:Parameter Name="featuredflagorder2" Type="Int32" />
            <asp:Parameter Name="largeextendedimage" Type="String" />
            <asp:Parameter Name="largeextraimage1" Type="String" />
            <asp:Parameter Name="largeextraimage2" Type="String" />
            <asp:Parameter Name="largeextraimage3" Type="String" />
            <asp:Parameter Name="largeextraimage4" Type="String" />
            <asp:Parameter Name="largeextraimage5" Type="String" />
            <asp:Parameter Name="displayproducttab" Type="Boolean" />
            <asp:Parameter Name="tapcaption" Type="String" />
            <asp:Parameter Name="tapdescription" Type="String" />
            <asp:Parameter Name="gpf_variant_color" Type="String" />
            <asp:Parameter Name="gpf_variant_size" Type="String" />
            <asp:Parameter Name="gpf_variant_pattern" Type="String" />
            <asp:Parameter Name="gpf_variant_material" Type="String" />
            <asp:Parameter Name="gpf_variant_brand" Type="String" />
            <asp:Parameter Name="gpf_variant_ageGroup" Type="String" />
            <asp:Parameter Name="gpf_variant_gender" Type="String" />
            <asp:Parameter Name="gpf_category" Type="String" />
            <asp:Parameter Name="gpf_variant_color_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_size_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_pattern_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_material_manual" Type="String" />
            <asp:Parameter Name="gpf_variant_brand_manual" Type="String" />
            <asp:Parameter Name="catalogid" Type="Int32" />
        </UpdateParameters>
</asp:AccessDataSource></p>
             </div> </td> </tr> 
                    
            
            
       

    </table>
    <table><tr><td class="auto-style30"></td><td class="auto-style31">
    <div class="fb-page";"auto-style30" data-href="https://www.facebook.com/" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com//">Nepali Team</a></blockquote></div>
   </td></tr></table> <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM `Menu1` WHERE `id` = ?" InsertCommand="INSERT INTO `Menu1` (`id`, `name`, `seq`, `pmenuitemid`, `url`, `contentid`, `openin`, `productmatch`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `id`, `name`, `seq`, `pmenuitemid`, `url`, `contentid`, `openin`, `productmatch` FROM `Menu1`" UpdateCommand="UPDATE `Menu1` SET `name` = ?, `seq` = ?, `pmenuitemid` = ?, `url` = ?, `contentid` = ?, `openin` = ?, `productmatch` = ? WHERE `id` = ?">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="seq" Type="Int32" />
            <asp:Parameter Name="pmenuitemid" Type="Int32" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="contentid" Type="Int32" />
            <asp:Parameter Name="openin" Type="String" />
            <asp:Parameter Name="productmatch" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="seq" Type="Int32" />
            <asp:Parameter Name="pmenuitemid" Type="Int32" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="contentid" Type="Int32" />
            <asp:Parameter Name="openin" Type="String" />
            <asp:Parameter Name="productmatch" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
</asp:AccessDataSource>

    </asp:Content>


