<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="ann_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.ann_maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">ANNOUNCEMENTS MAINTENANCE</h1>
        <div class="row">
            <div class="col m12">
                <table class="table-responsive" style="width: 98%">
                    <thead>
                        <tr>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Announcement Title</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Date(From)</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Date(To)</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Details</h4>
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
                            <td class="center" style="width: 10%">Road Closure due to Pipeline Repair
                            </td>
                            <td class="center">September 24, 2016
                            </td>
                            <td class="center">September 30, 2016
                            </td>
                            <td class="center">Due to a broken pipeline, DPWH will conduct a pipeline repair from September 24, 2016 to September 30, 2016. Expect heavy traffic.
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
</asp:Content>
