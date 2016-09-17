<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="historymaintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.historymaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">HISTORY</h1>
        <div class="row">
            <div class="col m12">
                <table class="table-responsive" style="width: 100%">
                    <thead>
                        <tr>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Date</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Title</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Detail</h4>
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
                            <td class="center" style="width: 20%">
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("dtHistory")%>'></asp:Label>
                            </td>
                            <td class="center" style="width: 20%">
                                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("strHistoryTitle")%>'></asp:Label>
                            </td>
                            <td class="center" style="width: 30%">
                                <asp:Label ID="detailLabel" runat="server" Text='<%# Eval("txtHistory")%>'></asp:Label>
                            </td>
                            <td class="center" style="width: 15%">
                                <a class="waves-effect waves-light btn green modal-trigger" href="#editHistory">Edit</a></td>
                            <td class="center" style="width: 15%">
                                <a class="waves-effect waves-light btn green modal-trigger" href="#delHistory">Delete</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <!-- Modal Edit -->
    <div id="editHistory" class=" modal">
        <div class="modal-content">
            <h4>Edit History</h4>
            <div class="col s12">
                <div class="col s12">
                    <label for="textarea1">Date</label>
                    <asp:TextBox ID="EditdtHistory" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("dtHistory") %>'></asp:TextBox>
                </div>

                <div class="col s12">
                    <label for="textarea1">History Title</label>
                    <asp:TextBox ID="EditstrHistoryTitle" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("strHistoryTitle") %>'></asp:TextBox>
                </div>

                <div class="col s12">
                    <label for="textarea1">History Detail</label>
                    <asp:TextBox ID="EdittxtHistory" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("txtHistory") %>'></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="modal-action modal-close waves-effect waves-green btn-flat" />
            <asp:Button ID="UpdateButton" runat="server" Text="Update" CssClass="modal-action waves-effect waves-green btn-flat" OnClick="UpdateButton_Click" />
        </div>
    </div>

    <!-- Modal Delete -->
    <div id="delHistory" class="modal">
        <div class="modal-content">
            <h4>Delete History</h4>
            <div class="input-field col s12">
                <asp:TextBox ID="DelDate" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("dtHistory") %>'></asp:TextBox>
                <label for="textarea1">Date</label>
            </div>

            <div class="input-field col s12">
                <asp:TextBox ID="DelTitle" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("strHistoryTitle") %>'></asp:TextBox>
                <label for="textarea1">History Title</label>
            </div>

            <div class="input-field col s12">
                <asp:TextBox ID="DelText" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("txtHistory") %>'></asp:TextBox>
                <label for="textarea1">History Detail</label>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="CloseButton" runat="server" Text="Cancel" CssClass="modal-action modal-close waves-effect waves-green btn-flat" />
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="modal-action waves-effect waves-green btn-flat" OnClick="DeleteButton_Click" />
        </div>
    </div>
</asp:Content>
