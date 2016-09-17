<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="event_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.event_maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">EVENTS MAINTENANCE</h1>
        <div class="row">
            <div class="col m12">
                <table class="table-responsive" style="width: 98%">
                    <thead>
                        <tr>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Event Title</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Who?</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Where?</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>When?</h4>
                            </th>
                            <th class="span_h2_green center" style="font-weight: 400">
                                <h4>Additional Details</h4>
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
                            <td class="center" style="width: 10%">
                                Gawad Parangal 2016
                            </td>
                            <td class="center">
                                Honorable Students from Public Schools inside General Trias
                            </td>
                            <td class="center">
                               General Trias Convention Center
                            </td>
                            <td class="center">
                                April 01, 2017
                            </td>
                            <td class="center">
                                Gawad Parangal is a Lorem Ipsum Dolor Sit Amet My God Ayaw ko na lol
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
