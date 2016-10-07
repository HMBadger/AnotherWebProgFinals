<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="event_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.event_maintenance" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="CityEventsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" OldValuesParameterFormatString="old_{0}"
        SelectCommand="SELECT * FROM [CityEvents] WHERE [Events_IsActive] = 1" UpdateCommand="UPDATE [CityEvents] SET [Events_Title] = @Events_Title, [Events_StartDate] = @Events_StartDate, [Events_EndDate] = @Events_EndDate, [Events_Location] = @Events_Location, [Events_Details] = @Events_Details
         WHERE [EventsID] = @old_EventsID"
        DeleteCommand="UPDATE [CityEvents] SET [Events_IsActive] = 0 WHERE [EventsID] = @old_EventsID">
        <UpdateParameters>
            <asp:Parameter Name="EventsID" Type="Int32" />
            <asp:Parameter Name="Events_Title" Type="String" />
            <asp:Parameter Name="Events_StartDate" Type="String" />
            <asp:Parameter Name="Events_EndDate" Type="String" />
            <asp:Parameter Name="Events_Location" Type="String" />
            <asp:Parameter Name="Events_Details" Type="String" />
            <asp:Parameter Name="Events_IsActive" Type="String" />
            <asp:Parameter Name="old_EventsID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="old_EventsID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C; margin-top: 5%">CURRENT AND UPCOMING EVENTS</h1>
        <div class="row">
            <div class="col m12" style="padding: 2%; padding-top: 3%">
                <div class="right col s12 m8" style="border: 2px solid transparent; margin-bottom: 7%">
                    <table class="table-responsive z-depth-2" style="width: 98%; margin-bottom: 50px; padding: 3%" border="1">
                        <thead class="center" style="background-color: #006400; color: white">
                            <tr>
                                <th class="center" style="font-weight: 400; padding-bottom: 1%">Title
                                </th>
                                <th class="center" style="font-weight: 400">Start Date
                                </th>
                                <th class="center" style="font-weight: 400">End Date
                                </th>
                                <th class="center" style="font-weight: 400">Location
                                </th>
                                <th class="center" style="font-weight: 400">Additional Details
                                </th>
                                <th class="center" style="font-weight: 400">Actions
                                </th>
                            </tr>
                        </thead>
                        <asp:ListView ID="EventsListView" runat="server" DataKeyNames="EventsID" DataSourceID="CityEventsDataSource">
                            <ItemTemplate>
                                <tbody class="center">
                                    <tr style="background-color: #F0FFF0">
                                        <td class="center" style="width: 10%">
                                            <center><%# Eval("Events_Title") %></center>
                                        </td>
                                        <td class="center">
                                            <center><%# Eval("Events_StartDate", "{0:M-dd-yyyy}") %></center>
                                        </td>
                                        <td class="center">
                                            <center><%# Eval("Events_EndDate", "{0:M-dd-yyyy}") %></center>
                                        </td>
                                        <td class="center">
                                            <center><%# Eval("Events_Location") %></center>
                                        </td>
                                        <td class="center">
                                            <center><%# Eval("Events_Details").ToString().Replace(Environment.NewLine,"<br />") %></center>
                                        </td>
                                        <td>
                                            <asp:Button ID="EditButton" class="waves-effect blue lighten-1 btn-floating center-align mdi-editor-border-color" runat="server" CommandName="Edit" />
                                            <asp:Button ID="DeleteButton" class="waves-effect red lighten-1 btn-floating center-align mdi-navigation-close" runat="server" CommandName="Delete" />
                                        </td>
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <tbody class="center">
                                    <tr style="background-color: #F0FFF0">
                                        <td class="center" style="width: 10%">
                                            <asp:TextBox ID="txtTitle" runat="server" Text='<%# Bind("Events_Title") %>'></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="txtDate" runat="server" CssClass="datepicker" Text='<%# Bind("Events_StartDate") %>'></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="txtTime" runat="server" CssClass="datepicker" Text='<%# Bind("Events_EndDate") %>'></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="txtLocation" runat="server" Text='<%# Bind("Events_Location") %>'></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="txtDetails" runat="server" Text='<%# Bind("Events_Details") %>'></asp:TextBox>
                                            <asp:HtmlEditorExtender ID="HtmlEditorDetails" runat="server" TargetControlID="txtDetails" EnableSanitization="false"></asp:HtmlEditorExtender>
                                        </td>
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" class="waves-effect green btn center-align" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" class="waves-effect green btn center-align" CommandName="Cancel" Text="Cancel" />
                                        </td>
                                    </tr>
                                </tbody>
                            </EditItemTemplate>
                        </asp:ListView>
                    </table>
                </div>

                <!--Form for Adding event-->
                <div class="left col s12 m4">
                    <div class="col s12 m12 z-depth-2" style="background-color: #90EE90; padding: 3%; margin-top: 0.50%">
                        <center><b>Add New Event</b></center>
                    </div>
                    <div class="col s12 z-depth-2" style="padding: 5%">
                        <div class="col s4" style="margin-top: 3%">
                            Event Title
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="Events_Title" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            Start Date
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="Events_StartDate" CssClass="datepicker" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            End Date
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="Events_EndDate" CssClass="datepicker" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            Location
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="Events_Location" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            Details
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="Events_Details" TextMode="MultiLine" CssClass="materialize-textarea" runat="server"></asp:TextBox>
                            <asp:HtmlEditorExtender ID="HtmlEditorAddDetails" runat="server" TargetControlID="Events_Details" EnableSanitization="false"></asp:HtmlEditorExtender>
                        </div>

                        <div class="col s12">
                            <div class="right col s3">
                                <asp:Button ID="AddButton" CssClass="btn green lighten-2" Style="color: black" runat="server" OnClick="AddButton_Click" Text="Add" />
                            </div>
                        </div>
                    </div>
                </div>

                <!--end of form for event-->
            </div>
        </div>
    </div>
</asp:Content>
