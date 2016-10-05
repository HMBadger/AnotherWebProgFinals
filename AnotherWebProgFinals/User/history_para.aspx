<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="history_para.aspx.cs" Inherits="AnotherWebProgFinals.User.history_para" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="center" style="color:transparent; font-weight: 600; margin-top:1%; font-size:150px; background:url(../images/history_img/haha.jpg)">HISTORY OF GENERAL TRIAS</p>
    <p class="center" style="font-size:50px">History of General Trias</p>
    <center><label style="font-size:15px">Read more about the history of our city and how it became what it is now</label></center>
    <img src="../images/border.jpg" class="responsive-img" style="margin-bottom:3%; margin-top:3%"/>
    <asp:SqlDataSource ID="CityHistoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" SelectCommand="SELECT [strDate], [strHistoryTitle], [txtHistory] FROM [CityHistory]"></asp:SqlDataSource>
    <asp:FormView ID="CityHistoryFormView" runat="server" DataSourceID="CityHistoryDataSource">
        <ItemTemplate>
            <div class="container">
            <p style="text-align: center; padding-left:10%; padding-right:10%;">
                <!--<img src="../images/history_img/aerial_shot.jpg" class="responsive-img"/>-->
                <%# Eval("txtHistory").ToString().Replace(Environment.NewLine,"<br />") %>
                <br /><br />
                
            </p>
            <p class="center" style="margin-bottom:5%">------ END ------</p>
            <div class="divider"></div>
                <font color="dimgray">To read more about the history of General Trias. Visit this website: <a href="https://en.wikipedia.org/wiki/General_Trias,_Cavite">https://en.wikipedia.org/wiki/General_Trias,_Cavite</a></font>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
