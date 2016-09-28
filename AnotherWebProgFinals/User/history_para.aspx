<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="history_para.aspx.cs" Inherits="AnotherWebProgFinals.User.history_para" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="center" style="color: #4CAF50; font-weight: 600">HISTORY OF GENERAL TRIAS</h1>

    <asp:SqlDataSource ID="CityHistoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" SelectCommand="SELECT [strDate], [strHistoryTitle], [txtHistory] FROM [CityHistory]"></asp:SqlDataSource>
    <asp:FormView ID="CityHistoryFormView" runat="server" DataSourceID="CityHistoryDataSource">
        <ItemTemplate>
            <p style="text-align: center">
                <%# Eval("txtHistory").ToString().Replace(Environment.NewLine,"<br />") %>
            </p>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
