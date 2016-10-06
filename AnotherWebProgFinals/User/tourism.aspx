<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="tourism.aspx.cs" Inherits="AnotherWebProgFinals.User.tourism" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #map {
            height: 100%;
        }
    </style>


    <div class="container">
        <div class="row">
            <div class="col m12">
                <div id="map">
                </div>
            </div>
        </div>
    </div>

    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBdLqXpIpExsBR77ro9T3hXWVz24vShuXs&callback=initMap"
        async defer></script>
</asp:Content>
