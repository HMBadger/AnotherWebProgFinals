<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="Municipal_Profile.aspx.cs" Inherits="AnotherWebProgFinals.User.Municipal_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container z-depth-1-half">
        <h1 class="center" style="font-weight: 600; font-size: 4em; padding-top: 3%; padding-left: 5%; color: #008080">Demographics</h1>
        <div class="row">
            <div class="col m6 center">
                <img src="../images/parishchurch.jpg" style="width: 100%; height: 50%" class="responsive-img" />
            </div>
            <div class="col m6 center" style="margin-top: 3%">
                <h4>Religion</h4>
                <p class="center">A vast majority of General Trias residents are Roman Catholics. Protestant Christians accounts for the second largest denomination in the city, with the United Church of Christ in the Philippines, having local churches in the area such as UCCP Buenavista, UCCP Sulukan, UCCP Pasong Kawayan and UCCP Tejero. The Iglesia ni Cristo (INC) has a small but key presence in the city except in Barangay F. Manalo (named after the first INC executive minister), where most residents are INC members.</p>
                <br />
                <h4>Language</h4>
                <p class="center">General Trias is one of the Hispanic towns in the Philippines because of these Spanish speakers are present in the town . Filipino , English and Spanish are the most used language in the area specially in Buenavista (also known as Camaren) because this has been the hide out of the Spaniards during their era.</p>
            </div>
        </div>
        <div class="row">
            <div class="col m6 center">
                
                <table id="data-table-simple" class="center responsive-table display" cellspacing="0" style="margin-top: 50px;">
                    <thead class="center" style="background-color: #006400; color: white">
                        <tr>
                            <th class="center">Year</th>
                            <th class="center">Population</th>
                            <th class="center">Growth Rate(Per Annum)</th>
                        </tr>
                    </thead>
                    <tbody class="center">
                        <tr style="background-color: #F0FFF0">
                            <td class="center">1990</td>
                            <td class="right-align">52,888</td>
                            <td class="center">-</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">1995</td>
                            <td class="right-align">66, 837</td>
                            <td class="center">+4.48%</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">2000</td>
                            <td class="right-align">107,691</td>
                            <td class="center">+10.77%</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">2007</td>
                            <td class="right-align">218,387</td>
                           <td class="center">+10.24%</td>
                        </tr>
                        <tr style="background-color: #F0FFF0">
                            <td class="center">2010</td>
                            <td class="right-align">243,322	</td>
                           <td class="center">+4.01%</td>
                        </tr>
                        <tr style="background-color: #90EE90">
                            <td class="center">2015</td>
                            <td class="right-align">314,303</td>
                            <td class="center">+4.99%</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col m6 center">
                <h4>Population</h4>
                <p class="center">The municipality of General Trias registered a total population of 107,691 in 2000. From 66,837 in 1995, 
                    it increased by around 61.12% over a 5-year period. The present annual growth rate is 10% as compared to the past census year, 
                    with only 4.80% indicating that it has more than doubled in five (5) years.The population is distributed in its thirty three (33) barangays and is 
                    considered to be 5.52 % of the total provincial population of 2,063,161. It ranks 7th as to population size compared to the three (3) cities and nineteen 
                    (19) municipalities comprising the province. The increasing growth rate is brought about by heavy in-migration due to expanding industrial activities 
                    and the booming residential and commercial subdivisions due to rapid urban development.</p>
            </div>
        </div>
    </div>


</asp:Content>
