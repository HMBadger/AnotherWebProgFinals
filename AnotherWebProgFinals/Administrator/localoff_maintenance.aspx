<%@ Page Title="Local Officials" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="localoff_maintenance.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.localoff_maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="CityOfficialsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" OldValuesParameterFormatString="old_{0}"
        SelectCommand="SELECT * FROM [CityOfficials] WHERE [boolIsActive] = 1" UpdateCommand="UPDATE [CityOfficials] SET [strFullName] = @strFullName, [strPosition] = @strPosition, [strPositionDesc] = @strPositionDesc, [strAdditionalDetails] = @strAdditionalDetails, [strImagePath] = @strImagePath
         WHERE [OfficialID] = @old_OfficialID"
        DeleteCommand="UPDATE [CityOfficials] SET [boolIsActive] = 0 WHERE [OfficialID] = @old_OfficialID">
        <UpdateParameters>
            <asp:Parameter Name="OfficialID" Type="Int32" />
            <asp:Parameter Name="strFullName" Type="String" />
            <asp:Parameter Name="strPosition" Type="String" />
            <asp:Parameter Name="strPositionDesc" Type="String" />
            <asp:Parameter Name="strAdditionalDetails" Type="String" />
            <asp:Parameter Name="strImagePath" Type="String" />
            <asp:Parameter Name="old_OfficialID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="old_OfficialID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

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
                                <th class="span_h2_green center" style="font-weight: 400">Position
                                </th>
                                <th class="span_h2_green center" style="font-weight: 400">Position Description
                                </th>
                                <th class="span_h2_green center" style="font-weight: 400">Additional Details
                                </th>
                                <th class="span_h2_green center" style="font-weight: 400">Image
                                </th>
                                <th class="span_h2_green center" style="font-weight: 400">Actions
                                </th>
                            </tr>
                        </thead>
                        <asp:ListView ID="OfficialsListView" runat="server" DataKeyNames="OfficialID" DataSourceID="CityOfficialsDataSource">
                            <ItemTemplate>
                                <tbody class="center">
                                    <tr style="background-color: #F0FFF0">
                                        <td class="center" style="width: 10%">
                                            <center><%# Eval("strFullName") %></center>
                                        </td>
                                        <td class="center">
                                            <center><%# Eval("strPosition") %></center>
                                        </td>
                                        <td class="center">
                                            <center><%# Eval("strPositionDesc") %></center>
                                        </td>
                                        <td class="center">
                                            <center><%# Eval("strAdditionalDetails").ToString().Replace(Environment.NewLine,"<br />") %></center>
                                        </td>
                                        <td class="center">
                                            <center><img id="strOfficialImagePath" runat="server" width="150" height="150"  src='<%# Eval("strImagePath") %>' /></center>
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
                                            <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("strFullName") %>'></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="txtPosition" runat="server" Text='<%# Bind("strPosition") %>'></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="txtPositionDesc" runat="server" Text='<%# Bind("strPositionDesc") %>' ></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="txtDetails" runat="server" Text='<%# Bind("strAdditionalDetails") %>' ></asp:TextBox>
                                        </td>
                                        <td class="center">
                                            <center><img id="strOfficialImagePath" runat="server" width="150" height="150"  src='<%# Bind("strImagePath") %>' /></center>
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

                <!--Form for Adding official-->
                <div class="left col s12 m4">
                    <div class="col s12 m12 z-depth-2" style="background-color: #90EE90; padding: 3%; margin-top: 0.50%">
                        <center><b>Add New Official</b></center>
                    </div>
                    <div class="col s12 z-depth-2" style="padding: 5%">
                        <div class="col s4" style="margin-top: 3%">
                            Full Name
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="strFullName" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            Position
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="strPosition" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            Position Description
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="strPositionDesc" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            Additional Details
                        </div>
                        <div class="col s8">
                            <asp:TextBox ID="strAdditionalDetails" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s4" style="margin-top: 3%">
                            Upload image
                        </div>
                        <div class="col s8">
                            <asp:FileUpload ID="cityOfficialFileUpload" runat="server" CssClass="center dropify" data-allowed-file-extensions="jpg png"/>
                        </div>

                        <div class="col s12">
                            <div class="right col s3">
                                <asp:Button ID="AddButton" CssClass="btn green lighten-2" Style="color: black" runat="server" OnClick="AddButton_Click" Text="Add" />
                            </div>
                        </div>
                    </div>
                </div>

                <!--end of form for official-->
            </div>
        </div>
    </div>
</asp:Content>
