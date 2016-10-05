<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="event_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.event_maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C; margin-top:5%">CURRENT AND UPCOMING EVENTS</h1>
        <div class="row">
            <div class="col m12" style="padding:2%; padding-top:3%">
                <div class="right col s12 m8" style="border: 2px solid transparent; margin-bottom: 7%">
                <asp:Repeater ID="RepeaterEvents" runat="server" DataSourceID="CityEventsDataSource">
                    <HeaderTemplate>
   
                        <table  class="table-responsive z-depth-2" style="width: 98%; margin-bottom: 50px; padding: 3%" border="1">
                            <thead class="center" style="background-color:#006400; color:white">
                                <tr>
                                    <th class="center" style="font-weight: 400; padding-bottom:1%">Title
                                    </th>
                                    <th class="center" style="font-weight: 400">Date
                                    </th>
                                    <th class="center" style="font-weight: 400">Time
                                    </th>
                                    <th class="center" style="font-weight: 400">Location
                                    </th>
                                    <th class="center" style="font-weight: 400">Additional Details
                                    </th>
                                    <th class="center" style="font-weight: 400">Status
                                    </th>
                                    <th class="center" style="font-weight: 400">
                                        <p style="font-size:18px; color:transparent">Actions</p>
                                    </th>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody class="center">
                            <tr style="background-color:#F0FFF0">
                                <td class="center" style="width: 10%">
                                    <center><%# Eval("Events_Title") %></center>
                                </td>
                                <td class="center">
                                    <center><%# Eval("Events_Date") %></center>
                                </td>
                                <td class="center">
                                    <center><%# Eval("Events_Time") %></center>
                                </td>
                                <td class="center">
                                    <center><%# Eval("Events_Location") %></center>
                                </td>
                                <td class="center">
                                    <center><%# Eval("Events_Details").ToString().Replace(Environment.NewLine,"<br />") %></center>
                                </td>
                                <td>
                                    <center><asp:Label ID="statusLabel" runat="server" Text='<%# Eval("Events_IsActive") %>'></asp:Label></center>
                                </td>
                                <td>
                                    <a class="waves-effect waves-light btn blue lighten-1 modal-trigger" href="#editVision"><i class="mdi-editor-border-color"></i></a>
                                    <a class="waves-effect waves-light btn red lighten-1 modal-trigger" href="#delVision"><i class="mdi-navigation-close"></i></a></td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                </div>
                <asp:SqlDataSource ID="CityEventsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:webprog %>"
                    InsertCommand="INSERT INTO [CityEvents] ([Events_Title], [Events_Date], [Events_Time], [Events_Location], [Events_Details], [Events_IsActive]) VALUES (@Events_Title, @Events_Date, @Events_Time, @Events_Location, @Events_Details, @Events_IsActive)" OldValuesParameterFormatString="old_{0}"
                    SelectCommand="SELECT * FROM [CityEvents]" UpdateCommand="UPDATE [CityEvents] SET [Events_Title] = @Events_Title, [Events_Date] = @Events_Date, [Events_Time] = @Events_Time, [Events_Location] = @Events_Location, [Events_Details] = @Events_Details, [Events_IsActive] = @Events_IsActive
         WHERE [EventsID] = @old_EventsID">
                    <UpdateParameters>
                        <asp:Parameter Name="EventsID" Type="Int32" />
                        <asp:Parameter Name="Events_Title" Type="String" />
                        <asp:Parameter Name="Events_Date" Type="String" />
                        <asp:Parameter Name="Events_Time" Type="String" />
                        <asp:Parameter Name="Events_Location" Type="String" />
                        <asp:Parameter Name="Events_Details" Type="String" />
                        <asp:Parameter Name="Events_IsActive" Type="String" />
                        <asp:Parameter Name="old_EventsID" Type="Int32" />
                        <asp:Parameter Name="old_Events_Title" Type="String" />
                        <asp:Parameter Name="old_Events_Date" Type="String" />
                        <asp:Parameter Name="old_Events_Time" Type="String" />
                        <asp:Parameter Name="old_Events_Location" Type="String" />
                        <asp:Parameter Name="old_Events_Details" Type="String" />
                        <asp:Parameter Name="old_Events_IsActive" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <!--Form for Adding event-->
                    <div class="left col s12 m4">
                        <div class="col s12 m12 z-depth-2" style="background-color:#90EE90; padding: 3%; margin-top: 0.50%">
                            <center><b>Add New Event</b></center>
                        </div>
                        <div class="col s12 z-depth-2" style="padding: 5%">
                            <div class="col s4" style="margin-top: 3%">Event Title
                            </div>
                            <div class="col s8">
                                <input type="text"/>
                            </div>
                            <div class="col s4" style="margin-top: 3%">Date
                            </div>
                            <div class="col s8">
                                <input type="text"/>
                            </div>
                            <div class="col s4" style="margin-top: 3%">Time
                            </div>
                            <div class="col s8">
                                <input type="text"/>
                            </div>
                            <div class="col s4" style="margin-top: 3%">Location
                            </div>
                            <div class="col s8">
                                <input type="text"/>
                            </div>
                            <div class="col s4" style="margin-top: 3%">Details
                            </div>
                            <div class="col s8">
                                <input type="text"/>
                            </div>

                            <div class="col s12">
                                <div class="right col s3">
                                    <a class="right btn green lighten-2" href="">Add</a>
                                </div>
                            </div>
                        </div>
                    </div>

            <!--end of form for event-->
            </div>
        </div>
    </div>
</asp:Content>
