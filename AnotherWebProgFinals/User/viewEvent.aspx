<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="viewEvent.aspx.cs" Inherits="AnotherWebProgFinals.User.viewEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="section">
            <h1 style="color: #38833C; font-weight: 600" class="center">EVENTS</h1>

            <asp:ListView ID="EventsList" runat="server" DataSourceID="ViewingEventsDataSource" DataKeyNames="EventsID">
                <ItemTemplate>

                    <div class="row">
                        <div class="col m12">
                            <div id="blog-post-full">
                                <div class="card large">
                                    <div class="card-image">
                                        <img src="../images/background2.jpg" alt="sample">
                                        <span class="card-title"><%#Eval("Events_Title") %></span><br />
                                    </div>
                                    <div class="card-content">
                                        <p class="ultra-small">Posted On: <%#Eval("EVents_DatePosted", "{0:M-dd-yyyy}") %>; Will Start On: <%#Eval("Events_StartDate", "{0:M-dd-yyyy}") %>; Will End On: <%#Eval("Events_EndDate", "{0:M-dd-yyyy}") %></p>
                                        <p>
                                            <%#Eval("Events_Details") %>
                                        </p>
                                    </div>
                                    <div class="card-action">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
                <EmptyDataTemplate>
                    <h4 class="task-card-title center" style="color: dimgray; font-weight: 600">NO EVENTS TO SHOW</h4>
                </EmptyDataTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="ViewingEventsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:webprog %>"
                SelectCommand="SELECT * FROM [CityEvents] ORDER BY Events_StartDate DESC"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
