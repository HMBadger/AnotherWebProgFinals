<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="viewEvent.aspx.cs" Inherits="AnotherWebProgFinals.User.viewEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="section">
            <h1 style="color: #38833C; font-weight: 600" class="center">EVENTS</h1>
            <div id="blog-post-full">
                <!-- medium size post-->
                <div class="card large">
                    <div class="card-image">
                        <!--gagawin na lang na static ung background ng view announcement, so isang kulay na lang para sa lahat-->
                        <img src="../images/background2.jpg" alt="sample">
                        <span class="card-title">Gawad Parangal 2016</span><br />
                    </div>
                    <div class="card-content">
                        <p class="ultra-small">September 30, 2016</p>
                        <p>What:
                            <!--event name-->
                        </p>
                        <p>Who:
                            <!--participants-->
                        </p>
                        <p>When:
                            <!--date-->
                        </p>
                        <p>Where:
                            <!--place-->
                        </p>
                        <p>
                            <!--dito na yung additional details-->
                            Gawad Parangal is a Lorem Ipsum Dolor Sit Amet My God Ayaw ko na lol</p>
                    </div>
                    <div class="card-action">
                        By <a href="index.aspx">Admin Gentri</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
