<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AnotherWebProgFinals.User.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="CityBanner" Style="width: 100%; height: 100%; margin-bottom: 0; margin-top: 0" runat="server" />
    <div class="row dirtywhite">
        <div class="slider">
            <ul class="slides">
                <li>
                    <img src="../images/1.jpg">
                    <!-- random image -->
                    <div class="caption center-align">
                        <h3>This is our big Tagline!</h3>
                        <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                    </div>
                </li>
                <li>
                    <img src="../images/2.jpg">
                    <!-- random image -->
                    <div class="caption left-align">
                        <h3>Left Aligned Caption</h3>
                        <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                    </div>
                </li>
                <li>
                    <img src="../images/3.jpg">
                    <!-- random image -->
                    <div class="caption right-align">
                        <h3>Right Aligned Caption</h3>
                        <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                    </div>
                </li>
                <li>
                    <img src="../images/4.jpg">
                    <!-- random image -->
                    <div class="caption center-align">
                        <h3>This is our big Tagline!</h3>
                        <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!--LIMIT LANG NATIN SA RECENT 5 YUNG ANNOUCEMENTS/EVENTS-->
    <div class="row dirtywhite">
        <div class="col m6 s12">
            <ul id="task-card" class="collection with-header animated zoomInUp">
                <li class="collection-header green">
                    <h4 class="task-card-title" style="color: white; font-weight: 600">ANNOUNCEMENTS</h4>
                    <p class="task-card-date" style="color: white">Updated: March 26, 2015</p>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="viewAnnouncement.aspx" style="font-weight: 400">Public Advisory|Road Closure</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Suspension of Classes</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Liquor Ban</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Liquor Ban</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Liquor Ban</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
            </ul>
        </div>

        <div class="col m6 s12">
            <ul id="task-card" class="collection with-header animated zoomInDown">
                <li class="collection-header green">
                    <h4 class="task-card-title" style="color: white; font-weight: 600">EVENTS</h4>
                    <p class="task-card-date" style="color: white">Updated: March 26, 2015</p>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="viewEvent.aspx">Gawad Parangal 2016</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Town Fiesta</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Palarong Pambansa 2016</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Liquor Ban</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
                <li class="collection-item dismissable">
                    <label>
                        <a href="#">Liquor Ban</a><span class="ultra-small secondary-content">September 30, 2016<!--date ng event/announcement--></span>
                    </label>
                </li>
            </ul>
        </div>
    </div>

    <div class="parallax-container valign-wrapper">
        <div class="parallax">
            <img src="../images/background3.jpg" alt="Unsplashed background img 3">
        </div>
    </div>

    <div class="dirtywhite">
        <div class="container">
            <div class="section scrollspy">
                <div class="row">
                    <div class="col m6 s12 center animated fadeInLeft">
                        <asp:SqlDataSource ID="CityMissionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" SelectCommand="SELECT [txtMission] FROM [CityMission]"></asp:SqlDataSource>
                        <asp:FormView ID="CityMissionFormView" runat="server" DataSourceID="CityMissionDataSource">
                            <ItemTemplate>
                                <h1 class="center" style="color: #388E3C; font-weight: 600">MISSION</h1>
                                <p style="text-align: center; color: #388E3C" class="center">
                                    <asp:Label ID="cityMissionLabel" runat="server" Text='<%# Bind("txtMission") %>' />
                                </p>
                                </div>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                    <div class="col m6 s12 center animated fadeInRight">
                        <asp:SqlDataSource ID="CityVisionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" SelectCommand="SELECT [txtVision] FROM [CityVision]"></asp:SqlDataSource>
                        <asp:FormView ID="CityVisionFormView" runat="server" DataSourceID="CityVisionDataSource">
                            <ItemTemplate>
                                <h1 class="center" style="color: #388E3C; font-weight: 600">VISION</h1>
                                <p style="text-align: center; color: #388E3C" class="center">
                                    <asp:Label ID="cityVisionLabel" runat="server" Text='<%# Eval("txtVision") %>'></asp:Label>
                                </p>
                                </div>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
