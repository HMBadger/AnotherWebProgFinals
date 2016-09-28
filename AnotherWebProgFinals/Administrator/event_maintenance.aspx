<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="event_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.event_maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">EVENTS MAINTENANCE</h1>
        <div class="row">
            <div class="col m12">
                <asp:Repeater ID="RepeaterEvents" runat="server" DataSourceID="CityEventsDataSource">
                    <HeaderTemplate>
                        <table class="table-responsive" style="width: 98%">
                            <thead>
                                <tr>
                                    <th class="span_h2_green center" style="font-weight: 400">
                                        <h4>Event Title</h4>
                                    </th>
                                    <th class="span_h2_green center" style="font-weight: 400">
                                        <h4>Event Date</h4>
                                    </th>
                                    <th class="span_h2_green center" style="font-weight: 400">
                                        <h4>Event Time</h4>
                                    </th>
                                    <th class="span_h2_green center" style="font-weight: 400">
                                        <h4>Event Location</h4>
                                    </th>
                                    <th class="span_h2_green center" style="font-weight: 400">
                                        <h4>Additional Details</h4>
                                    </th>
                                    <th class="span_h2_green center" style="font-weight: 400">
                                        <h4>Status</h4>
                                    </th>
                                    <th class="span_h2_green center" style="font-weight: 400">
                                        <h4>Actions</h4>
                                    </th>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <td class="center" style="width: 10%">
                                    <%# Eval("Events_Title") %>
                                </td>
                                <td class="center">
                                    <%# Eval("Events_Date") %>
                                </td>
                                <td class="center">
                                    <%# Eval("Events_Time") %>
                                </td>
                                <td class="center">
                                    <%# Eval("Events_Location") %>
                                </td>
                                <td class="center">
                                    <%# Eval("Events_Details").ToString().Replace(Environment.NewLine,"<br />") %>
                                </td>
                                <td>
                                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("Events_IsActive") %>'></asp:Label>
                                </td>
                                <td>
                                    <a class="waves-effect waves-light btn green modal-trigger" href="#editVision">Edit</a>
                                    <a class="waves-effect waves-light btn green modal-trigger" href="#delVision">Delete</a></td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
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
            </div>
        </div>
    </div>
</asp:Content>
