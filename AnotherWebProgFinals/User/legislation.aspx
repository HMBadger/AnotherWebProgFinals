<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="legislation.aspx.cs" Inherits="AnotherWebProgFinals.User.legislation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col m12 center">
                <asp:Button ID="bttnpdf" runat="server" Text="Click for open PDF" Font-Bold="True" OnClick="bttnpdf_Click" Style="margin-top: 30px" />
            </div>
        </div>
    </div>

</asp:Content>
