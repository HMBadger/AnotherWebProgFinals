<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="tourism_foods.aspx.cs" Inherits="AnotherWebProgFinals.User.tourism_foods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .slider .indicators .indicator-item {
            background-color: #FFFFFF;
            border: 3px solid #ffffff;
            -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        }

            .slider .indicators .indicator-item.active {
                background-color: #228B22;
            }

        .slider {
            width: 100%;
            margin: 0 auto;
        }

            .slider .indicators {
                bottom: 60px;
                z-index: 100;
                /* text-align: left; */
            }
    </style>
    <h1 class="center" style="font-weight: 600; font-size: 4em; padding-top: 3%; padding-left: 5%; color: #008080">Get To Know Our City</h1>
    <div class="row">
        <div class="col m7 center">
            <div class="slider z-depth-4">
                <ul class="slides">
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/1.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/2.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/3.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/4.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/5.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/6.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/7.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/8.jpg">
                        <!-- random image -->
                    </li>
                </ul>
            </div>
            <!--slider-->
        </div>
        <div class="col m5 center" style="margin-top: 40px">
            <p class="center" style="text-align: justify; text-indent: 30px">
                <b>General Trias (Filipino: Lungsod ng General Trias)</b>, formerly San Francisco de Malabon, is a 
                    first­class component city in the province of Cavite, Philippines. Through Republic Act 10675, a plebiscite was 
                    held in December 12, 2015 with majority of its residents voting yes to cityhood, thus converting the municipality 
                    into a city, in time for its 267th charter anniversary. According to the 2015 census, it has a population of 
                    314,303 people in a land area of 81.46 square kilometers.
                    During the earlier part of the Spanish colonial period, General Trias was often referred to as Las Estancias (the ranches), which was once a part of Cavite el Viejo, the present­day Kawit. It was also called Malabon Grande. The name Malabon was speculated to have been derived from either the local term "maraming labong," due to the abundance of bamboo shoots in the area, which is a main ingredient in Filipino cuisine; or from "mayabong," referring to the trees and other plants once abundant in the place.
            </p>
        </div>
    </div>



    <div class="container z-depth-1-half" style="padding-top: 10px">
        <div class="row" style="margin-top: 4%">
            <div class="col m6 center">
                <img src="../images/background3.jpg" class="responsive-img" />
            </div>
            <div class="col m6 center">
                <p class="center" style="text-align: justify; text-indent: 30px">
                    At any rate, the first reference seems to be more probable because General Mariano Trías, a noted writer, adopted the nom de guerre "Labong," a word he often used in his writing and conversation. Grande, on the other hand, was affixed to the appellation because at the time, the place was a vast wilderness covering Sitio Tejero, frequently called by the revolutionary as Salinas (present­day Rosario), Sta. Cruz de Malabon or Malabon el Chico (present­day Tanza) and Tierra Alta (presentday Noveleta). When the town was made independent from Cavite el Viejo, it was finally called by its popular name San Francisco de Malabon, in honor of patron saint, Saint Francis of Assisi (1181­1200).
                </p>
                <p class="center" style="text-align: justify; text-indent: 30px">
                    General Trias is an inland city of Cavite located 35 kilometers southwest of Manila. It straddles the northeastern part of the province. The City is surrounded by the municipalities of Rosario and Noveleta in the north, by Tanza and Trece Martires City in the west, by Amadeo in the south, Silang in the southeast, and the cities of Dasmarinas and Imus to the east.[9] General Trias has a total land area of 81.46 square kilometers.[
                </p>
            </div>
        </div>

        <h1 class="center" style="font-weight: 600; font-size: 4em; color: #008080">Component Barangays</h1>
        <div class="row" style="margin-top: 4%">
            <div class="col m12 center">
                <table class="responsive-table center">
                    <thead class="center" style="background-color: #006400; color: white">
                        <tr>
                            <th class="center">Barangay</th>
                            <th class="center">Population</th>
                        </tr>
                    </thead>
                    <tbody class="center">
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Alingaro</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">San Francisco</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Arnaldo</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Manggahan</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Bacao I</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">San Francisco</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Bacao II</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">San Juan I</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">San Juan II</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Navarro</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Panungyanan</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Bagumbayan</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Pasong Camachile I</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Pasong Camachile II</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Sta. Clara</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Biclatan</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Tapia</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Buenavista I</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Buenavista II</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Buenavista III</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Pasong Kawayan I</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Pasong Kayawan II</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Tejero</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Vibora</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Pinagtipunan</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Barangay 1896th</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Corregidor</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Prinza</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Dulong Bayan</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Sampalucan</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Alingaro</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">Governor Ferrer</td>
                            <td class="center">NO DATA</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">Santiago</td>
                            <td class="center">NO DATA</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
