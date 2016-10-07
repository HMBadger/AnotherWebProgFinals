<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="tourism_landmarks.aspx.cs" Inherits="AnotherWebProgFinals.User.tourism" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .indentation{
            text-indent: 30px;
        }
    </style>

    <img src="../images/banner.jpg" class="responsive-img" style="width: 100%" />


    <div class="container">
        <div class="row">
            <div class="col m12">
            </div>
            <div class="col m12">
                <h1 class="center" style="font-weight: 600; font-size: 4em; padding-top: 3%; padding-left: 5%; color: #008080">Sites to See</h1>
            </div>
        </div>
        <div class="row">
            <div class="col m6">
                <img src="../images/parishchurch.JPG" style="width: 100%" />
            </div>
            <div class="col m6">
                <h4 class="center" style="font-weight: 600; font-size: 2em; padding-top: 3%; padding-left: 5%; color: #008080">St. Francis of Assisi</h4>
                <p style="text-align: justify" class="indentation">Built in 1611 by the Franciscan Missionaires, the old church in the town's center is where the National Anthem was 
                    first played by San Francisco de Malabon Band. The first church in General Trias was established by the Franciscans in 1611 when it was still a visita 
                    (sub-parish) of Cavite Viejo (now Kawit). It was transferred to the Jesuit order of Cavite Puerto (now Cavite City) in 1624, eventually 
                    becoming a separate parish on September 9, 1753.</p>
                <p style="text-align: justify" class="indentation">
                    The first stone church was erected in 1769 under the leadership of Doña Maria Josepha de Yrizzari Y Ursula, Countess of Lizarraga. 
                    It was restored and enlarged in 1834. The Luzon earthquakes of 1880 partially damaged the church. As a result, 
                    the facade was replaced in 1881 with further restoration in 1885. The roof tiles were replaced in 1892 with the 
                    lighter corrugated galvanised iron roofing as further protection from earthquakes. It was again refurbished and enlarged in 1893.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col m6">
                <h4 class="center" style="font-weight: 600; font-size: 2em; padding-top: 3%; padding-left: 5%; color: #008080">Lyceum of the Philippines University</h4>
                <p class="center">
                    An edifice standing proudly in the heart of a commercial district is one of the prestigious educational institutions in the country,
                    the Lyceum offers more than just quality education as it also serves as the landmark for its unique architecture
                </p>
            </div>
            <div class="col m6">
                <img src="../images/lpu.png" style="width: 100%" />

            </div>
        </div>
    </div>

    <div class="container">
    </div>


</asp:Content>
