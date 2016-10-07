<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="AnotherWebProgFinals.admin_login" Title="Administrator Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/materialize.min.css" rel="stylesheet" />
    <link href="css/style.min.css" rel="stylesheet" />
    <link href="css/page-center.css" rel="stylesheet" />
</head>
<body class="green">
    <div id="login-page" class="row">
        <div class="col s12 z-depth-4 card-panel">
            <form id="form1" runat="server" class="login-form">
                <div class="row">
                    <div class="input-field col s12 center">
                        <asp:Image ID="CityLogo" runat="server" CssClass="circle responsive-img valign profile-image-login" />
                        <p class="center login-form-text">General Trias Website Maintenance</p>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-social-person-outline prefix"></i>
                       <input id="UserName" type="text" runat="server">
                        <label for="username" class="center-align">Username</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-action-lock-outline prefix"></i>
                        <input id="UserPassword" type="password" runat="server">
                        <label for="password">Password</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 m12 l12  login-text">
                        <input type="checkbox" id="remember-me" class="green"/>
                        <label for="remember-me">Remember me</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <asp:Button ID ="loginButton" CssClass="btn waves-effect waves-light col s12 green" runat="server" Text="Login" onClick ="btnLogin_Click"/>
                        
                    </div>
                </div>
                <script src="js/jquery-1.11.2.min.js"></script>
                <script src="js/materialize.min.js"></script>
                <script src="js/plugins.min.js"></script>
            </form>
        </div>
    </div>

</body>
</html>
