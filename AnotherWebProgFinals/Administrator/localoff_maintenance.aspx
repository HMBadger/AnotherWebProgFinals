<%@ Page Title="Local Officials" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="localoff_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.localoff_maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">LOCAL OFFICIALS</h1>
        <div class="row">
            <div class="col m12">

                <table class="table-responsive" style="width: 100%">
                    <thead>
                        <tr>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Full Name</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Authority Level</h4>
                            </th>

                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Image</h4>
                            </th>
                            <th style="color: white" class="center">
                                <h4>Edit</h4>
                            </th>
                            <th style="color: white" class="center">
                                <h4>Delete</h4>
                            </th>
                        </tr>
                    </thead>
                    <tbody id="tblBody" runat="server">
                        <tr>
                            <td class="center" style="width: 20%">
                                <asp:Label ID="officialName" runat="server"></asp:Label></td>
                            <td class="center" style="width: 20%">
                                <asp:Label ID="officialPosition" runat="server"></asp:Label>
                            </td>
                            <td class="center" style="width: 30%">
                                <asp:Image ID="OfficialImage" Style="width: 50%; height: 50%" runat="server" /></td>
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
</asp:Content>
