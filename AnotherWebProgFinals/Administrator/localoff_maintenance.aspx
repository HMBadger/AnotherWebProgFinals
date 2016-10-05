<%@ Page Title="Local Officials" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="localoff_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.localoff_maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3 class="center" style="font-weight: 600; color: #388E3C; margin-top: 3%; margin-bottom: 3%">LOCAL OFFICIALS</h3>
        <div class="row">
            <div class="col m12" style="padding: 5%; padding-top: 1%">
                <div class="right col s12 m8" style="border: 2px solid transparent; margin-bottom: 7%">
                    <table class="table-responsive z-depth-2" style="width: 98%; margin-bottom: 50px; padding: 3%" border="1">
                        <thead style="background-color: #006400; color: white">
                            <tr>
                                <th class="span_h2_green center" style="font-weight: 400; padding: 1%">Full Name
                                
                                </th>
                                <th class="span_h2_green center" style="font-weight: 400">Authority Level
                                
                                </th>

                                <th class="span_h2_green center" style="font-weight: 400">Image
                               
                                </th>
                                <th style="color: transparent" class="center">Edit
                                
                                </th>
                                <th style="color: transparent" class="center">Delete
                             
                                </th>
                            </tr>
                        </thead>
                        <tbody id="tblBody" runat="server">
                        </tbody>
                    </table>
                </div>

                <!--Form for Adding official-->
                    <div class="left col s12 m4">
                        <div class="col s12 m12 z-depth-2" style="background-color:#90EE90; padding: 3%; margin-top: 0.50%">
                            <center><b>Add New Official</b></center>
                        </div>
                        <div class="col s12 z-depth-2" style="padding: 5%">
                            <div class="col s4" style="margin-top: 3%">Full Name
                            </div>
                            <div class="col s8">
                                <input type="text"/>
                            </div>
                            <div class="col s4" style="margin-top: 3%">Authority Level
                            </div>
                            <div class="col s8">
                                <input type="text"/>
                            </div>
                            <div class="col s4" style="margin-top: 3%">Upload image
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

            <!--end of form for official-->
            </div>
        </div>
    </div>
</asp:Content>
