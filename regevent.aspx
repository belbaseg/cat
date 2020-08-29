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
color: #ccffd7;
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
        width: 566px;
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
    .auto-style33 {
        width: 83px;
        height: 72px;
    }
    .auto-style35 {
        font-style: normal;
        font-variant: normal;
        font-weight: normal;
        font-size: 1.2em;
        line-height: normal;
        font-family: "Trebuchet MS", Arial, sans-serif;
        color: #888;
        width: 566px;
        margin-bottom: 10px;
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
    .auto-style42 {
        width: 566px;
        height: 136px;
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
        width: 566px;
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
    .auto-style50 {
        width: 83px;
    }
    .auto-style51 {
        width: 198px;
    }
    .auto-style52 {
        width: 557px;
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
              <a href="projects.aspx">  <img alt="cateringpal.com" class="auto-style33" src="project.jpg" /></a></td>
            

        </tr>
        <tr>
            
            <td class="auto-style35" style="text-align: center">FIND CATERING IN YOUR AREA.<br />
                <br />
            </td>
            
            <td class="auto-style28" style="vertical-align: top;">REGISTER YOUR EVENT.<br />
                <br />
            </td>
            
        </tr>
        <tr>
            
            <td style="font-family: 'times New Roman', Times, serif; vertical-align: top; caption-side: top;" class="auto-style42">
                
            <table><tr><td>
                &nbsp;<td>
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource2" DataKeyNames="registrantid" DefaultMode="Insert" style="z-index: 2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <EditItemTemplate>
                            registrantid:
                            <asp:Label ID="registrantidLabel1" runat="server" Text='<%# Eval("registrantid") %>' />
                            <br />
                            firstname:
                            <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                            <br />
                            lastname:
                            <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                            <br />
                            address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            city:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            state:
                            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                            <br />
                            postcode:
                            <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                            <br />
                            country:
                            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                            <br />
                            company:
                            <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                            <br />
                            phone:
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                            <br />
                            workphone:
                            <asp:TextBox ID="workphoneTextBox" runat="server" Text='<%# Bind("workphone") %>' />
                            <br />
                            mobilephone:
                            <asp:TextBox ID="mobilephoneTextBox" runat="server" Text='<%# Bind("mobilephone") %>' />
                            <br />
                            fax:
                            <asp:TextBox ID="faxTextBox" runat="server" Text='<%# Bind("fax") %>' />
                            <br />
                            email:
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                            <br />
                            comments:
                            <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                            <br />
                            logincount:
                            <asp:TextBox ID="logincountTextBox" runat="server" Text='<%# Bind("logincount") %>' />
                            <br />
                            lastlogindate:
                            <asp:TextBox ID="lastlogindateTextBox" runat="server" Text='<%# Bind("lastlogindate") %>' />
                            <br />
                            regpassword:
                            <asp:TextBox ID="regpasswordTextBox" runat="server" Text='<%# Bind("regpassword") %>' />
                            <br />
                            publicpassword:
                            <asp:TextBox ID="publicpasswordTextBox" runat="server" Text='<%# Bind("publicpassword") %>' />
                            <br />
                            eventdate:
                            <asp:TextBox ID="eventdateTextBox" runat="server" Text='<%# Bind("eventdate") %>' />
                            <br />
                            eventtype:
                            <asp:TextBox ID="eventtypeTextBox" runat="server" Text='<%# Bind("eventtype") %>' />
                            <br />
                            eventdateend:
                            <asp:TextBox ID="eventdateendTextBox" runat="server" Text='<%# Bind("eventdateend") %>' />
                            <br />
                            cofirstname:
                            <asp:TextBox ID="cofirstnameTextBox" runat="server" Text='<%# Bind("cofirstname") %>' />
                            <br />
                            colastname:
                            <asp:TextBox ID="colastnameTextBox" runat="server" Text='<%# Bind("colastname") %>' />
                            <br />
                            coaddress:
                            <asp:TextBox ID="coaddressTextBox" runat="server" Text='<%# Bind("coaddress") %>' />
                            <br />
                            cocity:
                            <asp:TextBox ID="cocityTextBox" runat="server" Text='<%# Bind("cocity") %>' />
                            <br />
                            costate:
                            <asp:TextBox ID="costateTextBox" runat="server" Text='<%# Bind("costate") %>' />
                            <br />
                            copostcode:
                            <asp:TextBox ID="copostcodeTextBox" runat="server" Text='<%# Bind("copostcode") %>' />
                            <br />
                            cocountry:
                            <asp:TextBox ID="cocountryTextBox" runat="server" Text='<%# Bind("cocountry") %>' />
                            <br />
                            cophone:
                            <asp:TextBox ID="cophoneTextBox" runat="server" Text='<%# Bind("cophone") %>' />
                            <br />
                            coemail:
                            <asp:TextBox ID="coemailTextBox" runat="server" Text='<%# Bind("coemail") %>' />
                            <br />
                            sendfirstname:
                            <asp:TextBox ID="sendfirstnameTextBox" runat="server" Text='<%# Bind("sendfirstname") %>' />
                            <br />
                            sendlastname:
                            <asp:TextBox ID="sendlastnameTextBox" runat="server" Text='<%# Bind("sendlastname") %>' />
                            <br />
                            sendaddress:
                            <asp:TextBox ID="sendaddressTextBox" runat="server" Text='<%# Bind("sendaddress") %>' />
                            <br />
                            sendcity:
                            <asp:TextBox ID="sendcityTextBox" runat="server" Text='<%# Bind("sendcity") %>' />
                            <br />
                            sendstate:
                            <asp:TextBox ID="sendstateTextBox" runat="server" Text='<%# Bind("sendstate") %>' />
                            <br />
                            sendpostcode:
                            <asp:TextBox ID="sendpostcodeTextBox" runat="server" Text='<%# Bind("sendpostcode") %>' />
                            <br />
                            sendcountry:
                            <asp:TextBox ID="sendcountryTextBox" runat="server" Text='<%# Bind("sendcountry") %>' />
                            <br />
                            sendphone:
                            <asp:TextBox ID="sendphoneTextBox" runat="server" Text='<%# Bind("sendphone") %>' />
                            <br />
                            sendemail:
                            <asp:TextBox ID="sendemailTextBox" runat="server" Text='<%# Bind("sendemail") %>' />
                            <br />
                            regdate:
                            <asp:TextBox ID="regdateTextBox" runat="server" Text='<%# Bind("regdate") %>' />
                            <br />
                            regtime:
                            <asp:TextBox ID="regtimeTextBox" runat="server" Text='<%# Bind("regtime") %>' />
                            <br />
                            shippingtype:
                            <asp:TextBox ID="shippingtypeTextBox" runat="server" Text='<%# Bind("shippingtype") %>' />
                            <br />
                            regorderid:
                            <asp:TextBox ID="regorderidTextBox" runat="server" Text='<%# Bind("regorderid") %>' />
                            <br />
                            publicallowed:
                            <asp:TextBox ID="publicallowedTextBox" runat="server" Text='<%# Bind("publicallowed") %>' />
                            <br />
                            regother1:
                            <asp:TextBox ID="regother1TextBox" runat="server" Text='<%# Bind("regother1") %>' />
                            <br />
                            regother2:
                            <asp:TextBox ID="regother2TextBox" runat="server" Text='<%# Bind("regother2") %>' />
                            <br />
                            processed:
                            <asp:CheckBox ID="processedCheckBox" runat="server" Checked='<%# Bind("processed") %>' />
                            <br />
                            thankyounote:
                            <asp:TextBox ID="thankyounoteTextBox" runat="server" Text='<%# Bind("thankyounote") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Register" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <InsertItemTemplate>
                            Name:
                            <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstnameTextBox" ErrorMessage="Please enter your Name." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <br />
                            Address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            City:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            Postcode:
                            <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                            <br />
                            Phone:
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Phone Number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <br />
                            Email:
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email Address" ForeColor="Fuchsia"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Please enter correct Email address." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                            Message:
                            <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' Height="30px" Width="216px" />
                            <br />
                            Event Type:
                            <asp:TextBox ID="eventtypeTextBox" runat="server" Text='<%# Bind("eventtype") %>' />
                            <br />
                            Event Date:
                            <asp:TextBox ID="eventdateendTextBox" runat="server" Text='<%# Bind("eventdateend") %>' />
                            
                            <BR /><table><tr><td class="auto-style50"></td><td>dd/mm/yyyy</td></tr></table>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="eventdateendTextBox" ErrorMessage="Please enter your event date." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <br /><br /><table><tr><td class="auto-style52">    </td><td class="auto-style51"><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Register" BackColor="#0033CC" Font-Size="Large" ForeColor="Yellow" /></td></tr></table>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Visible="False" />
                        </InsertItemTemplate>
                        <InsertRowStyle VerticalAlign="Top" />
                        <ItemTemplate>
                            registrantid:
                            <asp:Label ID="registrantidLabel" runat="server" Text='<%# Eval("registrantid") %>' />
                            <br />
                            firstname:
                            <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                            <br />
                            lastname:
                            <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                            <br />
                            address:
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            city:
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            state:
                            <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                            <br />
                            postcode:
                            <asp:Label ID="postcodeLabel" runat="server" Text='<%# Bind("postcode") %>' />
                            <br />
                            country:
                            <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
                            <br />
                            company:
                            <asp:Label ID="companyLabel" runat="server" Text='<%# Bind("company") %>' />
                            <br />
                            phone:
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                            <br />
                            workphone:
                            <asp:Label ID="workphoneLabel" runat="server" Text='<%# Bind("workphone") %>' />
                            <br />
                            mobilephone:
                            <asp:Label ID="mobilephoneLabel" runat="server" Text='<%# Bind("mobilephone") %>' />
                            <br />
                            fax:
                            <asp:Label ID="faxLabel" runat="server" Text='<%# Bind("fax") %>' />
                            <br />
                            email:
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                            <br />
                            comments:
                            <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
                            <br />
                            logincount:
                            <asp:Label ID="logincountLabel" runat="server" Text='<%# Bind("logincount") %>' />
                            <br />
                            lastlogindate:
                            <asp:Label ID="lastlogindateLabel" runat="server" Text='<%# Bind("lastlogindate") %>' />
                            <br />
                            regpassword:
                            <asp:Label ID="regpasswordLabel" runat="server" Text='<%# Bind("regpassword") %>' />
                            <br />
                            publicpassword:
                            <asp:Label ID="publicpasswordLabel" runat="server" Text='<%# Bind("publicpassword") %>' />
                            <br />
                            eventdate:
                            <asp:Label ID="eventdateLabel" runat="server" Text='<%# Bind("eventdate") %>' />
                            <br />
                            eventtype:
                            <asp:Label ID="eventtypeLabel" runat="server" Text='<%# Bind("eventtype") %>' />
                            <br />
                            eventdateend:
                            <asp:Label ID="eventdateendLabel" runat="server" Text='<%# Bind("eventdateend") %>' />
                            <br />
                            cofirstname:
                            <asp:Label ID="cofirstnameLabel" runat="server" Text='<%# Bind("cofirstname") %>' />
                            <br />
                            colastname:
                            <asp:Label ID="colastnameLabel" runat="server" Text='<%# Bind("colastname") %>' />
                            <br />
                            coaddress:
                            <asp:Label ID="coaddressLabel" runat="server" Text='<%# Bind("coaddress") %>' />
                            <br />
                            cocity:
                            <asp:Label ID="cocityLabel" runat="server" Text='<%# Bind("cocity") %>' />
                            <br />
                            costate:
                            <asp:Label ID="costateLabel" runat="server" Text='<%# Bind("costate") %>' />
                            <br />
                            copostcode:
                            <asp:Label ID="copostcodeLabel" runat="server" Text='<%# Bind("copostcode") %>' />
                            <br />
                            cocountry:
                            <asp:Label ID="cocountryLabel" runat="server" Text='<%# Bind("cocountry") %>' />
                            <br />
                            cophone:
                            <asp:Label ID="cophoneLabel" runat="server" Text='<%# Bind("cophone") %>' />
                            <br />
                            coemail:
                            <asp:Label ID="coemailLabel" runat="server" Text='<%# Bind("coemail") %>' />
                            <br />
                            sendfirstname:
                            <asp:Label ID="sendfirstnameLabel" runat="server" Text='<%# Bind("sendfirstname") %>' />
                            <br />
                            sendlastname:
                            <asp:Label ID="sendlastnameLabel" runat="server" Text='<%# Bind("sendlastname") %>' />
                            <br />
                            sendaddress:
                            <asp:Label ID="sendaddressLabel" runat="server" Text='<%# Bind("sendaddress") %>' />
                            <br />
                            sendcity:
                            <asp:Label ID="sendcityLabel" runat="server" Text='<%# Bind("sendcity") %>' />
                            <br />
                            sendstate:
                            <asp:Label ID="sendstateLabel" runat="server" Text='<%# Bind("sendstate") %>' />
                            <br />
                            sendpostcode:
                            <asp:Label ID="sendpostcodeLabel" runat="server" Text='<%# Bind("sendpostcode") %>' />
                            <br />
                            sendcountry:
                            <asp:Label ID="sendcountryLabel" runat="server" Text='<%# Bind("sendcountry") %>' />
                            <br />
                            sendphone:
                            <asp:Label ID="sendphoneLabel" runat="server" Text='<%# Bind("sendphone") %>' />
                            <br />
                            sendemail:
                            <asp:Label ID="sendemailLabel" runat="server" Text='<%# Bind("sendemail") %>' />
                            <br />
                            regdate:
                            <asp:Label ID="regdateLabel" runat="server" Text='<%# Bind("regdate") %>' />
                            <br />
                            regtime:
                            <asp:Label ID="regtimeLabel" runat="server" Text='<%# Bind("regtime") %>' />
                            <br />
                            shippingtype:
                            <asp:Label ID="shippingtypeLabel" runat="server" Text='<%# Bind("shippingtype") %>' />
                            <br />
                            regorderid:
                            <asp:Label ID="regorderidLabel" runat="server" Text='<%# Bind("regorderid") %>' />
                            <br />
                            publicallowed:
                            <asp:Label ID="publicallowedLabel" runat="server" Text='<%# Bind("publicallowed") %>' />
                            <br />
                            regother1:
                            <asp:Label ID="regother1Label" runat="server" Text='<%# Bind("regother1") %>' />
                            <br />
                            regother2:
                            <asp:Label ID="regother2Label" runat="server" Text='<%# Bind("regother2") %>' />
                            <br />
                            processed:
                            <asp:CheckBox ID="processedCheckBox" runat="server" Checked='<%# Bind("processed") %>' Enabled="false" />
                            <br />
                            thankyounote:
                            <asp:Label ID="thankyounoteLabel" runat="server" Text='<%# Bind("thankyounote") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    </asp:FormView>
                    <td>
                    &nbsp;<td>
                    &nbsp;</td></tr></table>
                <br />
            <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [categoryid], [catdescription] FROM [categories]">
</asp:AccessDataSource></td>
            
            <td tyle="text-align: justify" style="vertical-align: top;" class="auto-style45">
                <p class="MsoNormal"><form>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM [registrant] WHERE [registrantid] = ?" InsertCommand="INSERT INTO [registrant] ([firstname], [lastname], [address], [city], [state], [postcode], [country], [company], [phone], [workphone], [mobilephone], [fax], [email], [comments], [logincount], [lastlogindate], [regpassword], [publicpassword], [eventdate], [eventtype], [eventdateend], [cofirstname], [colastname], [coaddress], [cocity], [costate], [copostcode], [cocountry], [cophone], [coemail], [sendfirstname], [sendlastname], [sendaddress], [sendcity], [sendstate], [sendpostcode], [sendcountry], [sendphone], [sendemail], [regdate], [regtime], [shippingtype], [regorderid], [publicallowed], [regother1], [regother2], [processed], [thankyounote]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [registrant]" UpdateCommand="UPDATE [registrant] SET [firstname] = ?, [lastname] = ?, [address] = ?, [city] = ?, [state] = ?, [postcode] = ?, [country] = ?, [company] = ?, [phone] = ?, [workphone] = ?, [mobilephone] = ?, [fax] = ?, [email] = ?, [comments] = ?, [logincount] = ?, [lastlogindate] = ?, [regpassword] = ?, [publicpassword] = ?, [eventdate] = ?, [eventtype] = ?, [eventdateend] = ?, [cofirstname] = ?, [colastname] = ?, [coaddress] = ?, [cocity] = ?, [costate] = ?, [copostcode] = ?, [cocountry] = ?, [cophone] = ?, [coemail] = ?, [sendfirstname] = ?, [sendlastname] = ?, [sendaddress] = ?, [sendcity] = ?, [sendstate] = ?, [sendpostcode] = ?, [sendcountry] = ?, [sendphone] = ?, [sendemail] = ?, [regdate] = ?, [regtime] = ?, [shippingtype] = ?, [regorderid] = ?, [publicallowed] = ?, [regother1] = ?, [regother2] = ?, [processed] = ?, [thankyounote] = ? WHERE [registrantid] = ?">
        
        <InsertParameters>
            
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="regpassword" Type="String" />
            <asp:Parameter Name="publicpassword" Type="String" />
            <asp:Parameter Name="eventdate" Type="DateTime" />
            <asp:Parameter Name="eventtype" Type="String" />
            <asp:Parameter Name="eventdateend" Type="DateTime" />
            <asp:Parameter Name="cofirstname" Type="String" />
            <asp:Parameter Name="colastname" Type="String" />
            <asp:Parameter Name="coaddress" Type="String" />
            <asp:Parameter Name="cocity" Type="String" />
            <asp:Parameter Name="costate" Type="String" />
            <asp:Parameter Name="copostcode" Type="String" />
            <asp:Parameter Name="cocountry" Type="String" />
            <asp:Parameter Name="cophone" Type="String" />
            <asp:Parameter Name="coemail" Type="String" />
            <asp:Parameter Name="sendfirstname" Type="String" />
            <asp:Parameter Name="sendlastname" Type="String" />
            <asp:Parameter Name="sendaddress" Type="String" />
            <asp:Parameter Name="sendcity" Type="String" />
            <asp:Parameter Name="sendstate" Type="String" />
            <asp:Parameter Name="sendpostcode" Type="String" />
            <asp:Parameter Name="sendcountry" Type="String" />
            <asp:Parameter Name="sendphone" Type="String" />
            <asp:Parameter Name="sendemail" Type="String" />
            <asp:Parameter Name="regdate" Type="DateTime" />
            <asp:Parameter Name="regtime" Type="DateTime" />
            <asp:Parameter Name="shippingtype" Type="String" />
            <asp:Parameter Name="regorderid" Type="Int32" />
            <asp:Parameter Name="publicallowed" Type="String" />
            <asp:Parameter Name="regother1" Type="String" />
            <asp:Parameter Name="regother2" Type="String" />
            <asp:Parameter Name="processed" Type="Boolean" />
            <asp:Parameter Name="thankyounote" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="regpassword" Type="String" />
            <asp:Parameter Name="publicpassword" Type="String" />
            <asp:Parameter Name="eventdate" Type="DateTime" />
            <asp:Parameter Name="eventtype" Type="String" />
            <asp:Parameter Name="eventdateend" Type="DateTime" />
            <asp:Parameter Name="cofirstname" Type="String" />
            <asp:Parameter Name="colastname" Type="String" />
            <asp:Parameter Name="coaddress" Type="String" />
            <asp:Parameter Name="cocity" Type="String" />
            <asp:Parameter Name="costate" Type="String" />
            <asp:Parameter Name="copostcode" Type="String" />
            <asp:Parameter Name="cocountry" Type="String" />
            <asp:Parameter Name="cophone" Type="String" />
            <asp:Parameter Name="coemail" Type="String" />
            <asp:Parameter Name="sendfirstname" Type="String" />
            <asp:Parameter Name="sendlastname" Type="String" />
            <asp:Parameter Name="sendaddress" Type="String" />
            <asp:Parameter Name="sendcity" Type="String" />
            <asp:Parameter Name="sendstate" Type="String" />
            <asp:Parameter Name="sendpostcode" Type="String" />
            <asp:Parameter Name="sendcountry" Type="String" />
            <asp:Parameter Name="sendphone" Type="String" />
            <asp:Parameter Name="sendemail" Type="String" />
            <asp:Parameter Name="regdate" Type="DateTime" />
            <asp:Parameter Name="regtime" Type="DateTime" />
            <asp:Parameter Name="shippingtype" Type="String" />
            <asp:Parameter Name="regorderid" Type="Int32" />
            <asp:Parameter Name="publicallowed" Type="String" />
            <asp:Parameter Name="regother1" Type="String" />
            <asp:Parameter Name="regother2" Type="String" />
            <asp:Parameter Name="processed" Type="Boolean" />
            <asp:Parameter Name="thankyounote" Type="String" />
            <asp:Parameter Name="registrantid" Type="Int32" />
        </UpdateParameters>
</asp:AccessDataSource></form>
                </p>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" />
            </td>
            
        </tr>
        <tr>
            <td class="DDLightHeader" colspan="3" style="text-align: center; vertical-align: top;"><a href="aboutus.aspx"> ABOUT US</a>
            </td>
            
        </tr>
        <tr>
            
            <td class="auto-style15" style="vertical-align: top;">
                <div class="DDSubHeader" style="text-align: center" >
                  <a href="aboutus.aspx">  <img alt="cateringpal.com" class="auto-style23" src="whatwedo.png" /></a><br />
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
            
            <td style="vertical-align: top;" class="auto-style46"> <div class="auto-style41" style="text-align: center; vertical-align: top;">
                
                 <a href="regsupplier.aspx">   <img alt="cateringpal.com" class="auto-style17" src="weare.png" /></a> <br />
                
                    REGISTER YOUR BUSINESS.<br />
                </div>
                    <div class="rich-text-content">
                       
                            <p class="auto-style37" style="font-family: &quot;times New Roman&quot;, Times, serif">
                       
                                <asp:FormView ID="FormView2" runat="server" DataKeyNames="supplierid" DataSourceID="AccessDataSource3" DefaultMode="Insert" Visible="False">
                                    <EditItemTemplate>
                                        supplierid:
                                        <asp:Label ID="supplieridLabel1" runat="server" Text='<%# Eval("supplierid") %>' />
                                        <br />
                                        name:
                                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                        <br />
                                        supplieruserid:
                                        <asp:TextBox ID="supplieruseridTextBox" runat="server" Text='<%# Bind("supplieruserid") %>' />
                                        <br />
                                        firstname:
                                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                                        <br />
                                        lastname:
                                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                                        <br />
                                        address:
                                        <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                                        <br />
                                        city:
                                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                        <br />
                                        state:
                                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                                        <br />
                                        postcode:
                                        <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                        <br />
                                        country:
                                        <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                                        <br />
                                        company:
                                        <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                                        <br />
                                        phone:
                                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                                        <br />
                                        workphone:
                                        <asp:TextBox ID="workphoneTextBox" runat="server" Text='<%# Bind("workphone") %>' />
                                        <br />
                                        mobilephone:
                                        <asp:TextBox ID="mobilephoneTextBox" runat="server" Text='<%# Bind("mobilephone") %>' />
                                        <br />
                                        fax:
                                        <asp:TextBox ID="faxTextBox" runat="server" Text='<%# Bind("fax") %>' />
                                        <br />
                                        email:
                                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                        <br />
                                        comments:
                                        <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                                        <br />
                                        logincount:
                                        <asp:TextBox ID="logincountTextBox" runat="server" Text='<%# Bind("logincount") %>' />
                                        <br />
                                        lastlogindate:
                                        <asp:TextBox ID="lastlogindateTextBox" runat="server" Text='<%# Bind("lastlogindate") %>' />
                                        <br />
                                        website:
                                        <asp:TextBox ID="websiteTextBox" runat="server" Text='<%# Bind("website") %>' />
                                        <br />
                                        supplierpassword:
                                        <asp:TextBox ID="supplierpasswordTextBox" runat="server" Text='<%# Bind("supplierpassword") %>' />
                                        <br />
                                        accountno:
                                        <asp:TextBox ID="accountnoTextBox" runat="server" Text='<%# Bind("accountno") %>' />
                                        <br />
                                        template:
                                        <asp:TextBox ID="templateTextBox" runat="server" Text='<%# Bind("template") %>' />
                                        <br />
                                        commissionrate:
                                        <asp:TextBox ID="commissionrateTextBox" runat="server" Text='<%# Bind("commissionrate") %>' />
                                        <br />
                                        other1:
                                        <asp:TextBox ID="other1TextBox" runat="server" Text='<%# Bind("other1") %>' />
                                        <br />
                                        caterogy:
                                        <asp:TextBox ID="caterogyTextBox" runat="server" Text='<%# Bind("caterogy") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        name:
                                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                        <br />
                                        supplieruserid:
                                        <asp:TextBox ID="supplieruseridTextBox" runat="server" Text='<%# Bind("supplieruserid") %>' />
                                        <br />
                                        firstname:
                                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                                        <br />
                                        lastname:
                                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                                        <br />
                                        address:
                                        <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                                        <br />
                                        city:
                                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                        <br />
                                        state:
                                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                                        <br />
                                        postcode:
                                        <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                                        <br />
                                        country:
                                        <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                                        <br />
                                        company:
                                        <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                                        <br />
                                        phone:
                                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                                        <br />
                                        workphone:
                                        <asp:TextBox ID="workphoneTextBox" runat="server" Text='<%# Bind("workphone") %>' />
                                        <br />
                                        mobilephone:
                                        <asp:TextBox ID="mobilephoneTextBox" runat="server" Text='<%# Bind("mobilephone") %>' />
                                        <br />
                                        fax:
                                        <asp:TextBox ID="faxTextBox" runat="server" Text='<%# Bind("fax") %>' />
                                        <br />
                                        email:
                                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                        <br />
                                        comments:
                                        <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                                        <br />
                                        logincount:
                                        <asp:TextBox ID="logincountTextBox" runat="server" Text='<%# Bind("logincount") %>' />
                                        <br />
                                        lastlogindate:
                                        <asp:TextBox ID="lastlogindateTextBox" runat="server" Text='<%# Bind("lastlogindate") %>' />
                                        <br />
                                        website:
                                        <asp:TextBox ID="websiteTextBox" runat="server" Text='<%# Bind("website") %>' />
                                        <br />
                                        supplierpassword:
                                        <asp:TextBox ID="supplierpasswordTextBox" runat="server" Text='<%# Bind("supplierpassword") %>' />
                                        <br />
                                        accountno:
                                        <asp:TextBox ID="accountnoTextBox" runat="server" Text='<%# Bind("accountno") %>' />
                                        <br />
                                        template:
                                        <asp:TextBox ID="templateTextBox" runat="server" Text='<%# Bind("template") %>' />
                                        <br />
                                        commissionrate:
                                        <asp:TextBox ID="commissionrateTextBox" runat="server" Text='<%# Bind("commissionrate") %>' />
                                        <br />
                                        other1:
                                        <asp:TextBox ID="other1TextBox" runat="server" Text='<%# Bind("other1") %>' />
                                        <br />
                                        caterogy:
                                        <asp:TextBox ID="caterogyTextBox" runat="server" Text='<%# Bind("caterogy") %>' Visible='<%# Bind("category") %>' />
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedIndex='<%# Eval("caterogy") %>'>
                                        </asp:DropDownList>
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        supplierid:
                                        <asp:Label ID="supplieridLabel" runat="server" Text='<%# Eval("supplierid") %>' />
                                        <br />
                                        name:
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                                        <br />
                                        supplieruserid:
                                        <asp:Label ID="supplieruseridLabel" runat="server" Text='<%# Bind("supplieruserid") %>' />
                                        <br />
                                        firstname:
                                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                                        <br />
                                        lastname:
                                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                                        <br />
                                        address:
                                        <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                                        <br />
                                        city:
                                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                        <br />
                                        state:
                                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                                        <br />
                                        postcode:
                                        <asp:Label ID="postcodeLabel" runat="server" Text='<%# Bind("postcode") %>' />
                                        <br />
                                        country:
                                        <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
                                        <br />
                                        company:
                                        <asp:Label ID="companyLabel" runat="server" Text='<%# Bind("company") %>' />
                                        <br />
                                        phone:
                                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                                        <br />
                                        workphone:
                                        <asp:Label ID="workphoneLabel" runat="server" Text='<%# Bind("workphone") %>' />
                                        <br />
                                        mobilephone:
                                        <asp:Label ID="mobilephoneLabel" runat="server" Text='<%# Bind("mobilephone") %>' />
                                        <br />
                                        fax:
                                        <asp:Label ID="faxLabel" runat="server" Text='<%# Bind("fax") %>' />
                                        <br />
                                        email:
                                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                        <br />
                                        comments:
                                        <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
                                        <br />
                                        logincount:
                                        <asp:Label ID="logincountLabel" runat="server" Text='<%# Bind("logincount") %>' />
                                        <br />
                                        lastlogindate:
                                        <asp:Label ID="lastlogindateLabel" runat="server" Text='<%# Bind("lastlogindate") %>' />
                                        <br />
                                        website:
                                        <asp:Label ID="websiteLabel" runat="server" Text='<%# Bind("website") %>' />
                                        <br />
                                        supplierpassword:
                                        <asp:Label ID="supplierpasswordLabel" runat="server" Text='<%# Bind("supplierpassword") %>' />
                                        <br />
                                        accountno:
                                        <asp:Label ID="accountnoLabel" runat="server" Text='<%# Bind("accountno") %>' />
                                        <br />
                                        template:
                                        <asp:Label ID="templateLabel" runat="server" Text='<%# Bind("template") %>' />
                                        <br />
                                        commissionrate:
                                        <asp:Label ID="commissionrateLabel" runat="server" Text='<%# Bind("commissionrate") %>' />
                                        <br />
                                        other1:
                                        <asp:Label ID="other1Label" runat="server" Text='<%# Bind("other1") %>' />
                                        <br />
                                        caterogy:
                                        <asp:Label ID="caterogyLabel" runat="server" Text='<%# Bind("caterogy") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                </asp:FormView>
                            </p>
                            <p class="auto-style37" style="font-family: &quot;times New Roman&quot;, Times, serif">
                       
                                &nbsp;</p>
                            <p class="auto-style37" style="font-family: &quot;times New Roman&quot;, Times, serif">
                       
                                <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM [suppliers] WHERE [supplierid] = ?" InsertCommand="INSERT INTO [suppliers] ([name], [supplieruserid], [firstname], [lastname], [address], [city], [state], [postcode], [country], [company], [phone], [workphone], [mobilephone], [fax], [email], [comments], [logincount], [lastlogindate], [website], [supplierpassword], [accountno], [template], [commissionrate], [other1], [caterogy]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [suppliers]" UpdateCommand="UPDATE [suppliers] SET [name] = ?, [supplieruserid] = ?, [firstname] = ?, [lastname] = ?, [address] = ?, [city] = ?, [state] = ?, [postcode] = ?, [country] = ?, [company] = ?, [phone] = ?, [workphone] = ?, [mobilephone] = ?, [fax] = ?, [email] = ?, [comments] = ?, [logincount] = ?, [lastlogindate] = ?, [website] = ?, [supplierpassword] = ?, [accountno] = ?, [template] = ?, [commissionrate] = ?, [other1] = ?, [caterogy] = ? WHERE [supplierid] = ?">
        
                                    <DeleteParameters>
                                        <asp:Parameter Name="supplierid" Type="Int32" />
                                    </DeleteParameters>
        
        <InsertParameters>
            
            
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="supplieruserid" Type="String" />
            
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="supplierpassword" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
            <asp:Parameter Name="template" Type="String" />
            <asp:Parameter Name="commissionrate" Type="Single" />
            <asp:Parameter Name="other1" Type="String" />
            <asp:Parameter Name="caterogy" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="supplieruserid" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="supplierpassword" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
            <asp:Parameter Name="template" Type="String" />
            <asp:Parameter Name="commissionrate" Type="Single" />
            <asp:Parameter Name="other1" Type="String" />
            <asp:Parameter Name="caterogy" Type="Int32" />
            <asp:Parameter Name="supplierid" Type="Int32" />
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


