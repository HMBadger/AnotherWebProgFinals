<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="ann_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.ann_maintenance" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="CityAnnouncementsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" OldValuesParameterFormatString="old_{0}"
        SelectCommand="SELECT * FROM [CityAnnouncements] WHERE [Announce_IsActive] = 1" UpdateCommand="UPDATE [CityAnnouncements] SET [Announce_Title] = @Announce_Title, [Announce_DatePosted] = @Announce_DatePosted, [Announce_Details] = @Announce_Details WHERE [AnnounceID] = @old_AnnounceID"
        DeleteCommand="UPDATE [CityAnnouncements] SET [Announce_IsActive] = 0 WHERE [AnnounceID] = @old_AnnounceID">
        <UpdateParameters>
            <asp:Parameter Name="Announce_Title" Type="String" />
            <asp:Parameter Name="Announce_DatePosted" Type="String" />
            <asp:Parameter Name="Announce_Details" Type="String" />
            <asp:Parameter Name="old_AnnounceID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="old_AnnounceID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <h3 class="center" style="font-weight: 600; color: #388E3C">CURRENT AND UPCOMING ANNOUNCEMENTS</h3>
        <div class="row" style="margin-top: 8%; padding: 3%; padding-top: 0">
            <div class="right col s12 m8" style="border: 2px solid transparent; margin-bottom: 7%">
                <table class="table-responsive z-depth-2" style="width: 98%; margin-bottom: 50px; padding: 3%" border="1">
                    <thead style="background-color: #006400; color: white">
                        <tr>
                            <th class="span_h2_green center" style="font-weight: 400; padding: 2%; padding-top: 4%; padding-bottom: 4%" hidden>ID
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400; padding: 1%">Title
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">Date Posted
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">Details
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">Actions
                            </th>
                        </tr>
                    </thead>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="CityAnnouncementsDataSource" DataKeyNames="AnnounceID">
                        <ItemTemplate>
                            <tbody>
                                <tr style="background-color: #F0FFF0">
                                    <td class="center" style="width: 10%" hidden>
                                        <asp:TextBox ID="announceId" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="center" style="width: 10%">
                                        <%# Eval("Announce_Title") %>
                                    </td>
                                    <td class="center">

                                        <%# Eval("Announce_DatePosted", "{0:M-dd-yyyy}") %>
                                    </td>
                                    <td class="center">
                                        <%# Eval("Announce_Details").ToString().Replace(Environment.NewLine,"<br />") %>
                                    </td>
                                    <td class="center">
                                        <asp:Button ID="EditButton" class="waves-effect blue lighten-1 btn-floating center-align mdi-editor-border-color" runat="server" CommandName="Edit" />
                                        <asp:Button ID="DeleteButton" class="waves-effect red lighten-1 btn-floating center-align mdi-navigation-close" runat="server" CommandName="Delete" />
                                    </td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <tbody>
                                <tr>
                                    <td class="center" style="width: 10%">
                                        <asp:TextBox ID="txtTitle" runat="server" Text='<%# Bind("Announce_Title") %>'></asp:TextBox>
                                    </td>
                                    <td class="center">
                                        <asp:TextBox ID="txtDate" runat="server" Text='<%# Bind("Announce_DatePosted") %>' CssClass="datepicker"></asp:TextBox>
                                    </td>
                                    <td class="center">
                                        <asp:TextBox ID="txtDetails" runat="server" Text='<%# Bind("Announce_Details") %>'></asp:TextBox>
                                    </td>
                                    <td class="center">
                                        <asp:Button ID="UpdateButton" runat="server" class="waves-effect green btn center-align" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" class="waves-effect green btn center-align" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                </tr>
                            </tbody>
                        </EditItemTemplate>
                    </asp:ListView>
                </table>
            </div>
            <!--end ng table to bes-->


            <!--Form for Adding announcements-->
            <div class="left col s12 m4">
                <div class="col s12 m12 z-depth-2" style="background-color: #90EE90; padding: 3%; margin-top: 0.50%">
                    <center><b>Add New Announcement</b></center>
                </div>
                <div class="col s12 z-depth-2" style="padding: 5%">
                    <div class="col s4" style="margin-top: 3%">
                        <h6 class="center" style="color: green;"><b>Announcement Title</b></h6>
                    </div>
                    <div class="col s8">
                        <asp:TextBox ID="Announce_Title" runat="server"></asp:TextBox>
                    </div>
                    <div class="col s12">
                        <h6 style="color: green;"><b>Details for the Announcement:</b></h6>
                    </div>
                    <div class="col s12" style="padding-left: 5%; padding-right: 5%">
                        <asp:TextBox ID="Announce_Details" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" /><br />
                    </div>

                    <div class="col s12">
                        <div class="right col s3">
                            <asp:Button ID="AddButton" CssClass="btn green lighten-2" Style="color: black" runat="server" OnClick="AddButton_Click" Text="Add" />
                        </div>
                    </div>
                </div>
            </div>

            <!--end of form for announcement-->


        </div>

        <!--ADD BUTTON-->
        <!-- <div class="fixed-action-btn" style="bottom: 50px; right: 19px;">
            <a class="btn-floating btn-large">
                <i class="mdi-content-add"></i>
            </a>
        </div>-->
    </div>
</asp:Content>
