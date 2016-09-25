<%@ Page Title="Banner and Logo" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="logo_banner.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.logo_banner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col m6">
                <h1 class="center" style="font-weight: 600; color: #388E3C">CITY LOGO</h1>
                <div class="col m12 center">
                    <asp:Image ID="EditCityLogo" Style="width: 50%; height: 50%" runat="server" />
                    <center><label>*Current logo of the city</label></center>
                    <asp:Button ID="btnUploadLogo" Text="Upload and Save" runat="server" CssClass="waves-effect waves-light btn green" OnClick="UploadLogoButton_Click" />
                    <br />
                    <div class="center" style="padding-left: 15%; padding-top: 3%">
                        <asp:FileUpload ID="cityLogoFileUpload" runat="server" CssClass="center dropify" /></div>
                </div>
            </div>
            <div class="col m6">
                <h1 class="center" style="font-weight: 600; color: #388E3C">CITY BANNER</h1>
                <div class="col m12 center">
                    <asp:Image ID="EditCityBanner" Style="width: 50%; height: 50%" runat="server" />
                    <center><label>*Current banner of the city</label></center>
                    <asp:Button ID="btnUploadBanner" Text="Upload and Save" runat="server" CssClass="waves-effect waves-light btn green" OnClick="UploadBannerButton_Click" />
                    <br />
                    <div class="center" style="padding-left: 15%; padding-top: 3%">
                        <asp:FileUpload ID="cityBannerFileUpload" runat="server" CssClass="center dropify" /></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
