<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="localofficials.aspx.cs" Inherits="AnotherWebProgFinals.User.localofficials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="center" style="font-weight: 600; color: #388E3C; font-size:80px; margin-top:2%">Local Officials</p>
    <center><label style="font-size:18px; margin-bottom:5%">Here is the list of the elected officials of the City of General Trias</label></center>
    <br /><br /><br />
    
    <div class="container">
        <h5 style="background-color:#2E8B57	; color:#FFFFFF; padding:1%; margin:3%; margin-bottom:0" class="center"><normal>City of Gen. Trias Main Office</normal></h5>
        <div class="row" style="border:2px #2E8B57 solid; padding:5%; margin:3%; margin-top:0">
                <!--mayor-->
                <div class="col s6 m6" style="min-height:10%; max-height:20%">
                    <div class="card horizontal" style="height:500px; width:400px">
                      <div class="card-image">
                        <img src="../images/officials/mayor.jpg" class="responsive-img"/>
                      </div>
                      <div class="card-stacked">
                        <div class="center card-content">
                          <span class="card-title activator grey-text text-darken-4"><b>Hon. Antonio "ONY" Ferrer</b><!--<i class="mdi-navigation-more-vert right"></i>--></span><br />
                          <span style="font-weight: 600; color: #388E3C">City Mayor</span>
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                        </div>
                      </div>
                    </div>
                 </div>
                <div class="col s6 m6" style="height:500px; width:400px">
                    <center><h1><strong>Hon. Antonio "ONY" Ferrer</strong></h1></center>
                    <center><p class="center" style="font-weight: 600; color:#388E3C; font-size:20px">CITY MAYOR</p></center>
                    <div class="divider" style="height:3px"></div>
                    <br /><br />
                    <p class="center">Details about the City mayor will be here</p>
                </div>
                <div class="col s12 m12"><div class="divider"></div></div>
                <!--vice mayor-->
                <div class="col s6 m6" style="min-height:10%; max-height:20%">
                    <div class="card horizontal" style="height:500px; width:400px">
                      <div class="card-image">
                        <img src="../images/officials/vicemayor.jpg" class="responsive-img"/>
                      </div>
                      <div class="card-stacked">
                        <div class="center card-content">
                          <span class="card-title activator grey-text text-darken-4"><b>Hon. Maurito “MORIT” Sison</b><!--<i class="mdi-navigation-more-vert right"></i>--></span><br />
                          <span style="font-weight: 600; color: #388E3C">City Mayor</span>
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                        </div>
                      </div>
                    </div>
                 </div>
                <div class="col s6 m6" style="height:500px; width:400px">
                    <center><h1><strong>Hon. Antonio "ONY" Ferrer</strong></h1></center>
                    <center><p class="center" style="font-weight: 600; color:#388E3C; font-size:20px">CITY VICE MAYOR</p></center>
                    <div class="divider" style="height:3px"></div>
                    <br /><br />
                    <p class="center">Details about the City vice mayor will be here</p>
                </div>
        </div>
    </div>
    <hr />
    <h4 class="center" style="font-weight: 600; color: #388E3C; margin-top:4%">Sangguniang Panglungsod Members</h4>
    <div class="container">
        <div class="row" style="padding:8%; padding-top:2%">
            <div class="col m4">
                <div class="card medium" style="height:30%">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img src="../images/officials/salazar.jpg" />
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Kerby Salazar<i class="mdi-navigation-more-vert right"></i></span><br />
                        <span style="font-weight: 600; color: #388E3C">Committee on Health, Nutrition and Population</span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                    </div>
                </div>
            </div>

            <div class="col m4">
                <div class="card medium" style="height:30%">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img src="../images/officials/custodio.jpg" />
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Chris Custodio<i class="mdi-navigation-more-vert right"></i></span><br />
                        <span style="font-weight: 600; color: #388E3C">Committee on Finance, Budget and Appropriation</span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                    </div>
                </div>
            </div>

            <div class="col m4">
                <div class="card medium" style="height:30%">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img src="../images/officials/martine.jpg" />
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Walter Martinez<i class="mdi-navigation-more-vert right"></i></span><br />
                        <span style="font-weight: 600; color: #388E3C">Committee on Rules and Good Government</span><br/><br />
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="padding:8%; padding-top:0">
            <div class="col m4">
                <div class="card medium" style="height:30%">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img src="../images/officials/amante.jpg" />
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Mario Amante<i class="mdi-navigation-more-vert right"></i></span><br />
                        <span style="font-weight: 600; color: #388E3C">Committee on Women, Family and Social Services</span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                    </div>
                </div>
            </div>

            <div class="col m4">
                <div class="card medium" style="height:30%">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img src="../images/officials/labuguen.jpg" />
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Jonas Labuguen<i class="mdi-navigation-more-vert right"></i></span><br />
                        <span style="font-weight: 600; color: #388E3C">Committee on Cooperatives and Rural Development</span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                    </div>
                </div>
            </div>

            <div class="col m4">
                <div class="card medium" style="height:30%">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img src="../images/officials/ayos.jpg" />
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Florencio Ayos<i class="mdi-navigation-more-vert right"></i></span><br />
                        <span style="font-weight: 600; color: #388E3C">Committee on Rules and Good Government</span><br/><br />
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Card Title<i class="mdi-navigation-close right"></i></span>
                        <p>Here will be a preview of the events</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
