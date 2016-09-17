<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="mission_vision.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.mission_vision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--//////////////////START VISION////////////-->
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">CITY VISION</h1>
        <div class="row">
            <div class="col m12">
                <table class="table-responsive" style="width: 98%">
                    <thead>
                        <tr>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Vision</h4>
                            </th>
                            <th style="color: white" class="center">
                                <h4>Edit</h4>
                            </th>
                            <th style="color: white" class="center">
                                <h4>Delete</h4>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="center" style="width: 70%">
                                <asp:Label ID="visionLabel" runat="server" Text='<%# Eval("txtVision") %>'></asp:Label>
                            </td>
                            <td>
                                <a class="waves-effect waves-light btn green modal-trigger" href="#editVision">Edit</a></td>
                            <td>
                                <a class="waves-effect waves-light btn green modal-trigger" href="#delVision">Delete</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <!-- Modal Edit -->
    <div id="editVision" class=" modal">
        <div class="modal-content">
            <h4>Edit Vision</h4>
            <div class="col s12">
                <div class="input-field col s12">
                    <asp:TextBox ID="EdittxtVision" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("txtVision") %>'></asp:TextBox>
                    <label for="textarea1">City Vision</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="VisionCancelButton" runat="server" Text="Cancel" CssClass="modal-action modal-close waves-effect waves-green btn-flat" />
            <asp:Button ID="VisionUpdateButton" runat="server" Text="Update" CssClass="modal-action waves-effect waves-green btn-flat" OnClick="VisionUpdateButton_Click" />
        </div>
    </div>


    <!-- Modal Delete -->
    <div id="delVision" class="modal">
        <div class="modal-content">
            <h4>Delete Vision</h4>
            <div class="col s12">
                <div class="input-field col s12">
                    <asp:TextBox ID="DeltxtVision" TextMode="MultiLine" ReadOnly="true" CssClass="materialize-textarea" Text='<%# Eval("txtVision") %>' runat="server"></asp:TextBox>
                    <label for="textarea1">City Vision</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="VisionCloseButton" runat="server" Text="Cancel" CssClass="modal-action modal-close waves-effect waves-green btn-flat" />
            <asp:Button ID="VisionDeleteButton" runat="server" Text="Delete" CssClass="modal-action waves-effect waves-green btn-flat" OnClick="VisionDeleteButton_Click" />
        </div>
    </div>

    <!-- /////////////////////START MISSION////////////////////////-->
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">CITY MISSION</h1>
        <div class="row">
            <div class="col m12">
                <table class="table-responsive" style="width: 98%">
                    <thead>
                        <tr>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Mission</h4>
                            </th>
                            <th style="color: white" class="center">
                                <h4>Edit</h4>
                            </th>
                            <th style="color: white" class="center">
                                <h4>Delete</h4>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="center" style="width: 70%">
                                <asp:Label ID="missionLabel" runat="server" Text='<%# Eval("txtMission") %>'></asp:Label>
                            </td>
                            <td>
                                <a class="waves-effect waves-light btn green modal-trigger" href="#editMission">Edit</a></td>
                            <td>
                                <a class="waves-effect waves-light btn green modal-trigger" href="#delMission">Delete</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Modal Edit -->
    <div id="editMission" class=" modal">
        <div class="modal-content">
            <h4>Edit Mission</h4>
            <div class="col s12">
                <div class="input-field col s12">
                    <asp:TextBox ID="EdittxtMission" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("txtMission") %>'></asp:TextBox>
                    <label for="textarea1">City Mission</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="MissionCancelButton" runat="server" Text="Cancel" CssClass="modal-action modal-close waves-effect waves-green btn-flat" />
            <asp:Button ID="MissionUpdateButton" runat="server" Text="Update" CssClass="modal-action waves-effect waves-green btn-flat" OnClick="MissionUpdateButton_Click" />
        </div>
    </div>


    <!-- Modal Delete -->
    <div id="delMission" class="modal">
        <div class="modal-content">
            <h4>Delete Mission</h4>
            <div class="col s12">
                <div class="input-field col s12">
                    <asp:TextBox ID="DeltxtMission" TextMode="MultiLine" ReadOnly="true" CssClass="materialize-textarea" Text='<%# Eval("txtMission") %>' runat="server"></asp:TextBox>
                    <label for="textarea1">City Mission</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="MissionCloseButton" runat="server" Text="Cancel" CssClass="modal-action modal-close waves-effect waves-green btn-flat" />
            <asp:Button ID="MissionDeletButton" runat="server" Text="Delete" CssClass="modal-action waves-effect waves-green btn-flat" OnClick="MissionDeleteButton_Click" />
        </div>
    </div>
</asp:Content>
