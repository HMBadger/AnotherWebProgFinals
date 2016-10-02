<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdminMaster.Master" AutoEventWireup="true" CodeBehind="mission_vision.aspx.cs" Inherits="AnotherWebProgFinals.Administrator.mission_vision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--//////////////////START VISION////////////-->
    <!-- NEW VISION DESIGN -->
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">CITY VISION</h1>
    </div>

    <asp:SqlDataSource ID="CityVisionDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:webprog %>"
        InsertCommand="INSERT INTO [CityVision] ([txtVision]) VALUES (@txtVision)" OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT * FROM [CityVision]" UpdateCommand="UPDATE [CityVision] SET [txtVision] = @txtVision WHERE [VisionID] = @original_VisionID">
        <UpdateParameters>
            <asp:Parameter Name="VisionID" Type="Int32" />
            <asp:Parameter Name="txtVision" Type="String" />
            <asp:Parameter Name="original_VisionID" Type="Int32" />
            <asp:Parameter Name="original_txtVision" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div id="VisionItemPlaceholderContainer" runat="server" class="center">
        <div class="container">
            <div class="col-md-2"></div>
            <div class="" style="padding:6%; padding-top:2%">
                <asp:ListView ID="CityVisionListView" runat="server" DataKeyNames="VisionID" DataSourceID="CityVisionDataSource">
                    <EditItemTemplate>
                        <div class="z-depth-2" style="padding: 5%; padding-top:2%; border:3px gray solid">
                        <div class="center">
                            <asp:Label ID="lblEditCityVision" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="txtEditCityVision"></asp:Label><br />
                            <div class="col-md-12 col-sm-12" style="text-align: center;">
                                <asp:TextBox ID="txtEditCityVision" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("txtVision") %>' /><br />
                            </div>
                        </div>
                        <br />
                        
                        <div class="row">
                            <asp:Button ID="UpdateVisionButton" runat="server" class="waves-effect green btn center-align" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelVisionButton" runat="server" class="waves-effect green btn center-align" CommandName="Cancel" Text="Cancel" />
                        </div>
                        </div>
                    </EditItemTemplate>

                    <ItemTemplate>
                        <div class="z-depth-2" style="padding: 5%; padding-top:2%; border:3px gray solid">
                        <div class="form-group">
                            <asp:Label ID="lblPrevCityVision" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="txtCityVisionPrev"></asp:Label><br />
                            <div class="col-md-12 col-sm-12" style="text-align: justify; padding-left: 5%; padding-right: 5%">
                                <asp:Label ID="txtCityVisionPrev" CssClass="materialize-textarea" runat="server" Text='<%# Eval("txtVision").ToString().Replace(Environment.NewLine,"<br />") %>' /><br />
                            </div>
                        </div>
                       
                        <br />
                        <br />
                        <br />
                        
                        <asp:Button ID="EditVisionButton" class="waves-effect green btn center-align" runat="server" CommandName="Edit" Text="Edit" />
                     </div>
                    </ItemTemplate>
                </asp:ListView>

            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <!-- END OF NEW VISION DESIGN -->

    <!-- /////////////////////START MISSION////////////////////////-->
    <!-- NEW MISSION DESIGN -->
    <div class="container">
        <h1 class="center" style="font-weight: 600; color: #388E3C">CITY MISSION</h1>
    </div>

    <asp:SqlDataSource ID="CityMissionDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:webprog %>"
        InsertCommand="INSERT INTO [CityMission] ([txtVision]) VALUES (@txtMission)" OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT * FROM [CityMission]" UpdateCommand="UPDATE [CityMission] SET [txtMission] = @txtMission WHERE [MissionID] = @original_MissionID">
        <UpdateParameters>
            <asp:Parameter Name="MissionID" Type="Int32" />
            <asp:Parameter Name="txtMission" Type="String" />
            <asp:Parameter Name="original_MissionID" Type="Int32" />
            <asp:Parameter Name="original_txtMission" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div id="MissionItemPlaceholderContainer" runat="server" class="center">
        <div class="container">
            <div class="col-md-2"></div>
            <div class="" style="padding:6%; padding-top:2%">
                <asp:ListView ID="CityMissionListView" runat="server" DataKeyNames="MissionID" DataSourceID="CityMissionDataSource">
                    <EditItemTemplate>
                        <div class="z-depth-2" style="padding: 5%; padding-top:2%; border:3px gray solid">
                        <div class="center">
                            <asp:Label ID="lblEditCityMission" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="txtEditCityMission">City Vision: </asp:Label><br />
                            <div class="col-md-12 col-sm-12" style="text-align: center;">
                                <asp:TextBox ID="txtEditCityMission" TextMode="MultiLine" CssClass="materialize-textarea" runat="server" Text='<%# Bind("txtMission") %>' /><br />
                            </div>
                        </div>
                        <br />
                        
                        <div class="row">
                            <asp:Button ID="UpdateMissionButton" runat="server" class="waves-effect green btn center-align" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelMissionButton" runat="server" class="waves-effect green btn center-align" CommandName="Cancel" Text="Cancel" />
                        </div>
                       </div>
                    </EditItemTemplate>

                    <ItemTemplate>
                        <div class="z-depth-2" style="padding: 5%; padding-top:2%; border:3px gray solid">
                        <div class="form-group">
                            <asp:Label ID="lblPrevCityMission" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="txtCityMissionPrev"></asp:Label><br />
                            <div class="col-md-12 col-sm-12" style="text-align: justify; padding-left: 5%; padding-right: 5%">
                                <asp:Label ID="txtCityMissionPrev" CssClass="materialize-textarea" runat="server" Text='<%# Eval("txtMission").ToString().Replace(Environment.NewLine,"<br />") %>' /><br />
                            </div>
                        </div>
                       
                        <br />
                        <br />
                        <br />
                        
                        <asp:Button ID="EditMissionButton" class="waves-effect green btn center-align" runat="server" CommandName="Edit" Text="Edit" />
                     </div>
                    </ItemTemplate>
                </asp:ListView>

            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <div class="col-md-2"> <br /><br /></div> 
    <!-- END OF NEW VISION DESIGN -->

</asp:Content>
