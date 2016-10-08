<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="localofficials.aspx.cs" Inherits="AnotherWebProgFinals.User.localofficials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="center" style="font-weight: 600; color: #388E3C; font-size: 80px; margin-top: 2%">Local Officials</p>
    <center><label style="font-size:18px; margin-bottom:5%">Here is the list of the elected officials of the City of General Trias</label></center>
    <br />
    <br />
    <br />

    <div class="container">
        <h5 style="background-color: #2E8B57; color: #FFFFFF; padding: 1%; margin: 3%; margin-bottom: 0" class="center">
            <normal>City of Gen. Trias Main Office</normal>
        </h5>
        <div class="row" style="border: 2px #2E8B57 solid; padding: 5%; margin: 3%; margin-top: 0">
            <!--mayor-->
            <asp:SqlDataSource ID="ViewingMayorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>"
                SelectCommand="SELECT strFullName, strImagePath, strPosition, strPositionDesc, strAdditionalDetails FROM [CityOfficials] WHERE boolIsActive = 1 AND strPosition = 'Mayor' "></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ViewingMayorDataSource">
                <ItemTemplate>
                    <div class="col s6 m6" style="min-height: 10%; max-height: 20%">
                        <div class="card horizontal" style="height: 500px; width: 400px">
                            <div class="card-image">

                                <img id="strOfficialImagePath" src='../<%# "../" + Eval("strImagePath") %>' class="responsive-img" />
                            </div>
                            <div class="card-stacked">
                                <div class="center card-content">
                                    <span class="card-title activator grey-text text-darken-4"><b></b>
                                        <!--<i class="mdi-navigation-more-vert right"></i>-->
                                    </span>
                                    <br />
                                    <span style="font-weight: 600; color: #388E3C"></span>
                                </div>
                                <div class="card-reveal">
                                    <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                                    <p>Here will be a preview of the events</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col s6 m6" style="height: 500px; width: 400px">
                        <center><h1><strong>Hon. <%# Eval("strFullName") %></strong></h1></center>
                        <center><p class="center" style="font-weight: 600; color:#388E3C; font-size:20px"><%# Eval("strPosition") %></p></center>
                        <div class="divider" style="height: 3px"></div>
                        <br />
                        <%--<br />--%>
                        <p class="center"><%# Eval("strPositionDesc") %></p>
                        <p class="center"><%# Eval("strAdditionalDetails") %></p>
                    </div>
                    <div class="col s12 m12">
                        <div class="divider"></div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <!--vice mayor-->
            <asp:SqlDataSource ID="ViewingViceMayorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>"
                SelectCommand="SELECT strFullName, strImagePath, strPosition, strPositionDesc, strAdditionalDetails FROM [CityOfficials] WHERE boolIsActive = 1 AND strPosition = 'Vice Mayor' "></asp:SqlDataSource>
            <asp:ListView ID="ViceMayorListview" runat="server" DataSourceID="ViewingViceMayorDataSource">
                <ItemTemplate>
                    <div class="col s6 m6" style="min-height: 10%; max-height: 20%">
                        <div class="card horizontal" style="height: 500px; width: 400px">
                            <div class="card-image">
                                <img id="strOfficialImagePath" runat="server" src='<%# "../" + Eval("strImagePath") %>' class="responsive-img" />
                            </div>
                            <div class="card-stacked">
                                <div class="center card-content">
                                    <span class="card-title activator grey-text text-darken-4"><b></b>
                                        <!--<i class="mdi-navigation-more-vert right"></i>-->
                                    </span>
                                    <br />
                                    <span style="font-weight: 600; color: #388E3C"></span>
                                </div>
                                <div class="card-reveal">
                                    <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                                    <p>Here will be a preview of the events</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col s6 m6" style="height: 500px; width: 400px">
                        <center><h1><strong>Hon. <%# Eval("strFullName") %></strong></h1></center>
                        <center><p class="center" style="font-weight: 600; color:#388E3C; font-size:20px"><%# Eval("strPosition") %></p></center>
                        <div class="divider" style="height: 3px"></div>
                        <br />
                        <br />
                        <p class="center"><%# Eval("strPositionDesc") %></p>
                        <p class="center"><%# Eval("strAdditionalDetails") %></p>
                    </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <hr />
        <h4 class="center" style="font-weight: 600; color: #388E3C; margin-top: 4%">Sangguniang Panglungsod Members</h4>
        <asp:SqlDataSource ID="ViewingSGPDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>"
            SelectCommand="SELECT strFullName, strImagePath, strPosition, strPositionDesc, strAdditionalDetails FROM [CityOfficials] WHERE boolIsActive = 1 AND strPosition != 'Mayor' AND  strPosition != 'Vice Mayor' "></asp:SqlDataSource>
        <div class="container">
            <div class="row" style="padding: 8%; padding-top: 2%">
                <div class="col m4">
                    <asp:ListView ID="ListView2" runat="server" DataSourceID="ViewingSGPDataSource">
                        <LayoutTemplate>
                            <div class="row">
                                <div class="col m12">
                                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                </div>
                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="card medium" style="height: 30%">
                                <div class="card-image waves-effect waves-block waves-light">
                                    <img id="strOfficialImagePath" runat="server" src='<%# "../" + Eval("strImagePath") %>' />
                                </div>
                                <div class="card-content">
                                    <span class="card-title activator grey-text text-darken-4">Hon. <%# Eval("strFullName") %><i class="mdi-navigation-more-vert right"></i></span><br />
                                    <span style="font-weight: 600; color: #388E3C"><%# Eval("strPositionDesc") %></span>
                                </div>
                                <div class="card-reveal">
                                    <span class="card-title grey-text text-darken-4">Hon. <%# Eval("strFullName") %><i class="mdi-navigation-close right"></i></span>
                                    <p><%# Eval("strAdditionalDetails") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
</asp:Content>
