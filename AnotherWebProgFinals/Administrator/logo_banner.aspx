<%@ Page Title="Banner and Logo" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="logo_banner.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.logo_banner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col m12 center">
                <h1 class="center" style="font-weight: 600; color: #388E3C">CITY BANNER</h1>
                <asp:Image ID="EditCityBanner" Style="width: 100%; height: 50%" runat="server" />
                <center><label>*Current banner of the city</label></center>
                <br />
                <asp:FileUpload ID="cityBannerFileUpload" runat="server" CssClass="center dropify" data-max-height="150"
                    data-min-height="100" data-max-width="1000" data-min-width="900" data-allowed-file-extensions="jpg png"/>
                <asp:Button ID="btnUploadBanner" Text="Upload and Save" runat="server" CssClass="waves-effect waves-light btn green" Style="margin-top: 25px" OnClick="UploadBannerButton_Click" />
            </div>
        </div>

        <div class="row">
            <div class="col m12 center">
                <h1 class="center" style="font-weight: 600; color: #388E3C">CITY LOGO</h1>
                <asp:Image ID="EditCityLogo" Style="width: 50%; height: 50%" runat="server" />
                <center><label>*Current logo of the city</label></center>
                
                <br />
                <asp:FileUpload ID="cityLogoFileUpload" runat="server" CssClass="center dropify" data-allowed-file-extensions="jpg png"
                    data-min-height="1024" data-max-height="2050" data-min-width="1024" data-max-width="2050" data-allowed-formats="square"/>
                <asp:Button ID="btnUploadLogo" Text="Upload and Save" runat="server" CssClass="waves-effect waves-light btn green"  Style="margin-top: 25px; margin-bottom: 25px" OnClick="UploadLogoButton_Click" />
            </div>
        </div>
    </div>
</asp:Content>
