<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/WebLog.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="AnotherWebProgFinals.user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col s12 m12 l12" style="padding-left: 5%; padding-right: 5%">
        <center><h4><b class="black-text">Welcome to</b> <b><font color="#689f38">GEN</font><font color="white">ERAL </font><font color="#689f38">TRI</font><font color="white">AS</font></b></h4></center>
    </div>
    <div class="container">
        <div class="row">
            <div class="col m6 s12 center">
                <asp:Image ID="CityLogo" Style="width: 70%; height: 70%" runat="server" />
                <h6 style="color:dimgray; font-style: italic" class="center">"Leading you a brighter future"</h6>
            </div>

            <div class="col m6 s12 center">
                <ul class="collapsible z-depth-0" data-collapsible="accordion">
                    <!--start of LOGIN collapsible-->
                    <li>
                        <div class="collapsible-header center white-text" style="background-color: #388e3c">Already have an account? Log in</div>
                        <div class="center collapsible-body row col s12 m12 l12" style="background-color: #388e3c">
                            <div class="col s12 m12 l12 center-on-small-only" style="margin-top: 3%">
                                <div id="login-page" class="row" style="opacity: 0.90; background: transparent; padding-bottom: 1%">
                                    <div class="col m12 s12 z-depth-4 card-panel">
                                        <div class="login-form" id="loginForm" runat="server">
                                            <div class="row">
                                                <div class="row margin">
                                                    <!--Email-->
                                                    <div class="input-field col s12 m12 l12">
                                                        <i class="mdi-social-person-outline prefix"></i>
                                                        <input id="username" type="text" />
                                                        <label for="username">Email Address</label>
                                                    </div>
                                                </div>
                                                <div class="row margin">
                                                    <!--Password-->
                                                    <div class="input-field col s12 m12 l12">
                                                        <i class="mdi-social-person-outline prefix"></i>
                                                        <input id="password" type="password" />
                                                        <label for="password">Password</label>
                                                    </div>
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
                                <div id="register-page" class="row" style="opacity: 0.90; background: transparent; padding-bottom: 1%">
                                    <div class="col m12 s12 z-depth-4 card-panel">
                                        <div class="login-form" id="registerForm" runat="server">
                                            <div class="row">
                                                <div class="row margin">
                                                    <!--Username/Email-->
                                                    <div class="input-field col s12 m12 l12">
                                                        <i class="mdi-social-person-outline prefix"></i>
                                                        <input id="reg-username" type="email" />
                                                        <label for="reg-username">Email</label>
                                                    </div>
                                                </div>
                                                <div class="row margin">
                                                    <!--First Name-->
                                                    <div class="input-field col s12 m12 l12">
                                                        <i class="mdi-communication-email prefix"></i>
                                                        <input id="reg-firstName" type="text" />
                                                        <label for="reg-firstName">First Name</label>
                                                    </div>
                                                </div>
                                                <div class="row margin">
                                                    <!--Middle Name-->
                                                    <div class="input-field col s12 m12 l12">
                                                        <i class="mdi-communication-email prefix"></i>
                                                        <input id="reg-middleName" type="text" />
                                                        <label for="reg-middleName">Middle Name</label>
                                                    </div>
                                                </div>
                                                <div class="row margin">
                                                    <!--Last Name-->
                                                    <div class="input-field col s12 m12 l12">
                                                        <i class="mdi-communication-email prefix"></i>
                                                        <input id="reg-lastName" type="text" />
                                                        <label for="reg-lastName">Last Name</label>
                                                    </div>
                                                </div>
                                                <div class="row margin">
                                                    <!--Password-->
                                                    <div class="input-field col s12 m12 l12">
                                                        <i class="mdi-action-lock-outline prefix"></i>
                                                        <input id="reg-password" type="password" />
                                                        <label for="reg-password">Password</label>
                                                    </div>
                                                </div>
                                                <div class="row margin">
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
                                                        <a href="user_login.aspx" class="btn waves-effect waves-light col s12" style="margin-bottom: 10px">Register Now</a>
                                                    </div>
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
    </div>
</asp:Content>
