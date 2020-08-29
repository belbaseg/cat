<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            width: 494px;
            height: 205px;
        }
    </style>
     <script>
         var map;
         function initMap() {
             map = new google.maps.Map(document.getElementById('map'), {
                 center: { lat: -34.397, lng: 150.644 },
                 zoom: 8
             });
         }
    </script>
    <script src="https://www.google.co.uk/maps/place/Peterborough+PE7/@52.5523142,-0.2511021,17z/data=!4m5!3m4!1s0x47d8077dccaa4605:0xbe3a8941fe3df097!8m2!3d52.5103197!4d-0.2193207"
    async defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="padding-left: 400px;" class="auto-style25"><tr><td"></td><td style="text-align: right">
     
    <div data-line-height="1.6" style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-line; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; line-height: 1.6;">
        <span style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); font-size: 18px;"> <br />
    E-mail: &nbsp; &nbsp;&nbsp;<span class="theme-text-color-1-2" style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); color: rgb(38, 109, 196);"><u style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0);"><a class="wz-link" data-attached-link="{&quot;type&quot;:&quot;Email&quot;,&quot;url&quot;:&quot;info@can-international.org&quot;,&quot;title&quot;:&quot;info@can-international.org&quot;}" href="mailto:info@can-international.org" style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); text-decoration: none; color: inherit;">info@</a>nepali.team</u></span></span></div>
    <div data-line-height="1.6" style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-line; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; line-height: 1.6;">
        <span style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); font-size: 18px;">Website: <span class="theme-text-color-1-2" style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); color: rgb(38, 109, 196);"><u style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0);"><a class="wz-link internal-link" data-attached-link="{&quot;type&quot;:&quot;Pages&quot;,&quot;url&quot;:&quot;1403784258535&quot;,&quot;title&quot;:&quot;HOME&quot;}" href="http://nepali.team/" style="-webkit-tap-highlight-color: rgba(255, 255, 255, 0); text-decoration: none; color: inherit;">www.</a>nepali.team</u></span></span></div>
       
       </td></tr>
      
   </table> 
  <div>  <div id="map" style="text-align: right">
 <a href="https://www.google.co.uk/maps/place/Peterborough+PE7/@52.5518031,-0.2503569,15.7z/data=!4m5!3m4!1s0x47d8077dccaa4605:0xbe3a8941fe3df097!8m2!3d52.5103197!4d-0.2193207"  >   <img alt="Nepali.Team" src="photoGallery/map.jpg" /></a></div>
   
 
    </div>
</asp:Content>

