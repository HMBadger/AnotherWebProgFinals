<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="viewAnnouncement.aspx.cs" Inherits="AnotherWebProgFinals.User.viewAnnouncement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="section">
            <h1 style="color: #38833C; font-weight: 600" class="center">ANNOUNCEMENT</h1>
            <div id="blog-post-full">
                <!-- medium size post-->
                <div class="card medium">
                    <div class="card-image">
                        <!--gagawin na lang na static ung background ng view announcement, so isang kulay na lang para sa lahat-->
                        <img src="../images/background2.jpg" alt="sample">
                        <span class="card-title">Suspension of Classes</span><br />
                    </div>
                    <div class="card-content">
                        <p class="ultra-small">September 30, 2016</p>
                        <p>Due to Typhoon Pikachu, classes are suspended for All Levels (Preschool to College) from Today(September 30, 2016) to October 01, 2016. Please be guided
                            accordingly.
                        </p>
                    </div>
                    <div class="card-action">
                        By <a href="index.aspx">Admin Gentri</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
