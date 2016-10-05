<%@ Page Title="Home" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AnotherWebProgFinals.User.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .slider .indicators .indicator-item {
            background-color: #666666;
            border: 3px solid #ffffff;
            -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        }

            .slider .indicators .indicator-item.active {
                background-color: #ffffff;
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
    <asp:Image ID="CityBanner" Style="width: 100%; height: 100%; margin-bottom: 0; margin-top: 0" runat="server" />


    <div class="row">
        <div class="col m12 center">
            <div class="slider">
                <ul class="slides">
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/background1.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/church.jpg">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/lpu.png">
                        <!-- random image -->
                    </li>
                    <li>
                        <img class="responsive-img" style="width: 100%; height: 100%" src="../images/background2.jpg">
                        <!-- random image -->
                    </li>
                </ul>
            </div>
            <!--slider-->
        </div>
        <div class="col m5 center" hidden>
            <asp:Image ID="CityLogo" Style="width: 50%; height: 50%" runat="server" />
            <h6 style="color: dimgray; font-style: italic" class="center">"Disiplina, Wastong Serbisyo, Pag-asenso!"</h6>
            <br />
            <a href="http://www.accuweather.com/en/ph/general-trias/262682/weather-forecast/262682" class="aw-widget-legal"></a>
            <div id="awcc1475394989181" class="aw-widget-current" data-locationkey="262682" data-unit="c" data-language="en-us" data-useip="false" data-uid="awcc1475394989181"></div>
        </div>
    </div>

    <!--Video-->


    <!--end-->

    <!--LIMIT LANG NATIN SA RECENT 5 YUNG ANNOUCEMENTS/EVENTS-->
    <div class="row dirtywhite">
        <div class="col m6 s12">
            <ul id="task-card" class="collection with-header animated zoomInUp z-depth-2">
                <li class="collection-header" style="background-color: #228B22">
                    <h4 class="task-card-title" style="color: white; font-weight: 600">ANNOUNCEMENTS</h4>
                    <p class="task-card-date" style="color: white">Last Updated: March 26, 2015</p>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="viewAnnouncement.aspx" style="font-weight: 400; color: dimgray">Public Advisory|Road Closure</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Suspension of Classes</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Liquor Ban</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Liquor Ban</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Liquor Ban</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
            </ul>
        </div>

        <div class="col m6 s12">
            <ul id="task-card" class="collection with-header animated zoomInDown z-depth-2">
                <li class="collection-header" style="background-color: #228B22">
                    <h4 class="task-card-title" style="color: white; font-weight: 600">EVENTS</h4>
                    <p class="task-card-date" style="color: white">Last Updated: March 26, 2015</p>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="viewEvent.aspx" style="color: dimgray">Gawad Parangal 2016</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Town Fiesta</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Palarong Pambansa 2016</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Liquor Ban</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
                <li class="collection-item">
                    <h6>
                        <a href="#" style="color: dimgray">Liquor Ban</a><span class="ultra-small secondary-content" style="color: #2E8B57">September 30, 2016<!--date ng event/announcement--></span>
                    </h6>
                </li>
            </ul>
        </div>
    </div>
    <hr />
    <div class="dirtywhite">
        <div class="container">
            <div class="section scrollspy">
                <div class="row">
                    <div class="col m6 s12 center animated fadeInLeft">
                        <asp:SqlDataSource ID="CityMissionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" SelectCommand="SELECT [txtMission] FROM [CityMission]"></asp:SqlDataSource>
                        <asp:FormView ID="CityMissionFormView" runat="server" DataSourceID="CityMissionDataSource">
                            <ItemTemplate>
                                <h1 class="center" style="font-weight: 600; font-size: 4em; color: #2F4F4F">MISSION</h1>
                                <p style="text-align: center" class="center">
                                    <asp:Label ID="cityMissionLabel" runat="server" Text='<%# Bind("txtMission") %>' />
                                </p>
                                </div>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                    <div class="col m6 s12 center animated fadeInRight">
                        <asp:SqlDataSource ID="CityVisionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:webprog %>" SelectCommand="SELECT [txtVision] FROM [CityVision]"></asp:SqlDataSource>
                        <asp:FormView ID="CityVisionFormView" runat="server" DataSourceID="CityVisionDataSource">
                            <ItemTemplate>
                                <h1 class="center" style="font-weight: 600; font-size: 4em; color: #2F4F4F">VISION</h1>
                                <p style="text-align: center" class="center">
                                    <asp:Label ID="cityVisionLabel" runat="server" Text='<%# Eval("txtVision") %>'></asp:Label>
                                </p>
                                </div>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
            <div class="row center">
                <div class="col m12 center">
                </div>
            </div>
        </div>
    </div>

    <div class="container z-depth-1-half">
        <h1 class="center" style="font-weight: 600; font-size: 4em; padding-top: 3%; padding-left: 5%; color: #008080">Where Having Fun Has A New Meaning</h1>
        <div class="row">
            <div class="col m6 center">
                <img src="../images/valfes.jpg" style="width: 100%; height: 50%" class="responsive-img" />
            </div>
            <div class="col m6 center" style="margin-top: 3%">
                <img src="../images/Valencianaa.jpg" class="responsive-img" />
                <p class="center">The General Trias way of cooking Valenciana is famous to all local households and nearby municipalities. In every celebration, whether wedding, birthday, baptismal, family or class reunions, graduation, etc., the party is incomplete without the sumptuous food on the table.</p>
                <p class="center">Valenciana Festival is an act of revisiting the rural past of General Trias. It is a celebration of culture worthy to undertake without fail annually.  In the words of a legacy-loving mayor who initiated the festival, he said:  “Valenciana Festival  is one way of keeping alive our rich culture.  For every partake of Valenciana, it is a deed honoring and cherishing the good tradition bequeathed to us by our ancestors”.</p>
                <p class="center">Valenciana Festival is every 13th day of December. Come and taste the culture of GenTri in Cavite.</p>
            </div>
        </div>

        <div class="row" style="margin-top: 4%">
            <h1 class="center" style="font-weight: 600; font-size: 4em; color: #008080">A Taste of Our Distinct Culture</h1>
            <div class="col m6 center">
                <img src="../images/Kasilyo.jpg" class="responsive-img" style="margin-bottom: 4%" />
                <p class="center">Gentri’s Best is a local producer of kasilyo, the native kesong puti (white cheese) of Cavite made from carabao’s milk. Best served with pandesal and coffee, kasilyo has a soft, smooth texture with hints of sour and salty flavors.</p>
                <p class="center">Each palm-sized, round piece is handmade. Milk, mixed with vinegar, is boiled and stirred until it thickens. The congealed mixture is then shaped into a ball and soaked in brine until it’s ready for packaging. Gentri’s Best also makes another variety of kesong puti with no vinegar, which gives it a milder taste. Their other products include fresh milk, yoghurt, ice cream, and pastillas de leche.</p>
                <p class="center">Established as a cooperative in 2005, Gentri’s Best operates a medium scale processing center and collects a daily average of 250 liters of carabao’s milk from local raisers. Their products are sold in their own store in General Trias and distributed through Mr. Moo’s dairy stores.</p>
            </div>
            <div class="col m6 center">
                <img src="../images/kesongputi.jpg" style="width: 100%; height: 50%" class="responsive-img" />
            </div>
        </div>

        <div class="row" style="margin-top: 4%">
            <div class="col m6 center">
                <img src="../images/valenciana.jpg" style="width: 100%; height: 50%" class="responsive-img" />
            </div>
            <div class="col m6 center" style="margin-top: 3%">
                <img src="../images/valencianaaa.jpg" class="responsive-img" style="margin-bottom: 4%" />
                <p class="center">Arroz Valenciana or Arroz ala Valenciana is a Spanish rice dish considered as a peasant meal during the Spanish-colonization of the Philippines. Its made of glutinous rice and saffron mixed w/ left-over meat and vegetables and  prepared for farmers before they head out to the fields, helping sustain their energy as they tend to their farm. </p>
                <p class="center">Arroz Valenciana is served during holidays and special occasions. Since it is only a few days before Christmas, I am featuring this dish so that you can have more options for your family’s Noche Buena or Christmas parties. This is also a perfect dish to serve during New Year’s eve dinner.</p>
                <p class="center">But in General Trias, Valenciana can be bought and eaten even if it's not holiday season.</p>
            </div>
        </div>
    </div>

</asp:Content>
