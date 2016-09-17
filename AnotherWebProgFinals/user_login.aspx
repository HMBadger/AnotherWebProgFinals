<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/WebLog.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="AnotherWebProgFinals.user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col s12 m12 l12" style="padding-left: 5%; padding-right: 5%">
        <center><h1><b class="black-text">Welcome to</b> <b><font color="#689f38">GEN</font><font color="white">ERAL </font><font color="#689f38">TRI</font><font color="white">AS</font></b></h1></center>
    </div>
    <div class="container">
        <div class="row">
            <asp:SqlDataSource ID="CityLogoDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" SelectCommand="SELECT [strLogoPath] FROM [LogoBanner]"></asp:SqlDataSource>
            <asp:FormView ID="CityLogoFormView" runat="server" DataSourceID="CityLogoDataSource">
                <ItemTemplate>
                    <div class="left col m6 center">
                        <img src='../<%# Eval("strLogoPath") %>' style="width: 90%; height: 90%" />
                        <center><h6 style="color:dimgray"><i><font size="+1"> Leading you to the future since 1904 "</font></i></h6></center>
                    </div>

                    <div class="center col s12 m6 l6">
                        <div class="col s12" style="margin-top: 8%">
                            <ul class="collapsible z-depth-0" data-collapsible="accordion">
                                <!--start of LOGIN collapsible-->
                                <li>
                                    <div class="collapsible-header center white-text" style="background-color: #388e3c">Already have an account? Log in</div>
                                    <div class="center collapsible-body row col s12 m12 l12" style="background-color: #388e3c">
                                        <div class="col s12 m12 l12 center-on-small-only" style="margin-top: 3%">

                                            <div class="row" id="login-page" style="opacity: 0.90; background: transparent; padding-bottom: 1%">
                                                <div class="col m12 z-depth-4 card-panel right" style="width: 100%; height: 100%">
                                                    <div class="login-form" id="form1" runat="server">

                                                        <div class="row" style="padding: 3%; padding-bottom: 0">
                                                            <!--Email-->
                                                            <div class="input-field col s12 m12 l12">
                                                                <i class="mdi-social-person-outline prefix"></i>
                                                                <input id="username" type="text" />
                                                                <label for="username">Email Address</label>
                                                            </div>
                                                            <!--Password-->
                                                            <div class="input-field col s12 m12 l12">
                                                                <i class="mdi-action-lock-outline prefix"></i>
                                                                <input id="password" type="password" />
                                                                <label for="password">Password</label>
                                                            </div>
                                                            <!--Remember Me-->
                                                            <div class="col s12 m12 l12 login-text">
                                                                <input type="checkbox" id="remember-me" />
                                                                <label for="remember-me">Remember Me</label>
                                                            </div>
                                                            <!--Login Button-->
                                                            <div class="col s12 m12 l12" style="margin-top: 5%">
                                                                <a href="/ViewUser/index.aspx" class="btn waves-effect waves-light col s12 m12 l12">Login</a>
                                                            </div>

                                                            <!--Forgot Password-->
                                                            <div class="col s12 m12 l12">
                                                                <p class="center medium-small"><a href="#"><u>I forgot my password! Help me!</u></a></p>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>
                                                <!--form1-->
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!--end of LOGIN collapsible-->
                                <div style="margin: 3%"></div>
                                <!--start of REGISTER collapsible-->
                                <li>
                                    <div class="collapsible-header center white-text" style="background-color: #388e3c">Register Now!</div>
                                    <div class="center collapsible-body row col s12 m12 l12" style="background-color: #388e3c">
                                        <div class="col s12 m12 l12 center-on-small-only" style="margin-top: 3%">

                                            <div class="row" id="register-page" style="opacity: 0.90; background: transparent; padding: 1%">
                                                <div class="col m12 z-depth-4 card-panel right" style="width: 100%; height: 100%">
                                                    <div class="register-form" id="Div1" runat="server">

                                                        <label style="color: gray; margin-top: 4%">
                                                            <center><br />Fill up the following information below</center>
                                                        </label>
                                                        <!--Register invitation-->
                                                        <div class="row" style="padding: 3%; padding-bottom: 0">
                                                            <!--Username-->
                                                            <div class="input-field col s12 m12 l12">
                                                                <i class="mdi-social-person-outline prefix"></i>
                                                                <input id="reg-username" type="text" />
                                                                <label for="reg-username">Username</label>
                                                            </div>
                                                            <!--Email-->
                                                            <div class="input-field col s12 m12 l12">
                                                                <i class="mdi-communication-email prefix"></i>
                                                                <input id="reg-email" type="email" />
                                                                <label for="reg-email">Email</label>
                                                            </div>
                                                            <!--Password-->
                                                            <div class="input-field col s12 m12 l12">
                                                                <i class="mdi-action-lock-outline prefix"></i>
                                                                <input id="reg-password" type="password" />
                                                                <label for="reg-password">Password</label>
                                                            </div>
                                                            <!--Confirm Password-->
                                                            <div class="input-field col s12 m12 l12">
                                                                <i class="mdi-action-lock-outline prefix"></i>
                                                                <input id="reg-password-again" type="password" />
                                                                <label for="reg-password-again">Confirm Password</label>
                                                            </div>
                                                        </div>
                                                        <div class="row" style="padding: 5%; padding-bottom: 0">
                                                            <!--Register Button-->
                                                            <div class="col s12 m12 l12">
                                                                <a href="user_login.aspx" class="btn waves-effect waves-light col s12">Register Now</a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!--end of REGISTER collapsible-->
                            </ul>

                            <div>
                                <p>
                                    <center><b>Or</b></center>
                                </p>
                            </div>

                            <div class="center col s12">
                                <img src="../images/admin-icon.png" class="" style="border: 4px white solid; max-height: 65%; min-height: 40%; max-width: 70%; min-width: 45%" />
                                <p class="margin medium-small center"><a href="/User/index.aspx" class="btn" style="background-color: #388e3c">Continue as GUEST</a></p>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>
