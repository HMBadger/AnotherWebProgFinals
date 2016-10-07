<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="tourism_landmarks.aspx.cs" Inherits="AnotherWebProgFinals.User.tourism" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .indentation {
            text-indent: 30px;
        }

        .parallax-container {
            height: 300px;
        }

        .parallax {
            position: static;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col m12">
                <h1 class="center" style="font-weight: 600; font-size: 4em; padding-top: 3%; padding-left: 5%; color: #008080">Sites to See</h1>
            </div>
        </div>

        <div class="row">
            <div class="col m6">
                <img src="../images/parishchurch.JPG" style="width: 100%;" class="z-depth-2" />
            </div>
            <div class="col m6">
                <h4 class="center" style="font-weight: 600; font-size: 2em; padding-top: 3%; padding-left: 5%; color: #008080">St. Francis of Assisi Parish Church</h4>
                <p style="text-align: justify" class="indentation">
                    Built in 1611 by the Franciscan Missionaires, the old church in the town's center is where the National Anthem was 
                    first played by San Francisco de Malabon Band. The first church in General Trias was established by the Franciscans in 1611 when it was still a visita 
                    (sub-parish) of Cavite Viejo (now Kawit). It was transferred to the Jesuit order of Cavite Puerto (now Cavite City) in 1624, eventually 
                    becoming a separate parish on September 9, 1753.
                </p>
                <p style="text-align: justify" class="indentation">
                    The first stone church was erected in 1769 under the leadership of Doña Maria Josepha de Yrizzari Y Ursula, Countess of Lizarraga. 
                    It was restored and enlarged in 1834. The Luzon earthquakes of 1880 partially damaged the church. As a result, 
                    the facade was replaced in 1881 with further restoration in 1885. The roof tiles were replaced in 1892 with the 
                    lighter corrugated galvanised iron roofing as further protection from earthquakes. It was again refurbished and enlarged in 1893.
                </p>
                <p style="text-align: justify" class="indentation">
                    Between 1989-1991, the church was restored to its former looks. After completion, it was again consecrated on June 22, 1991 by Most Reverend Felix P. Perez of the Diocese of Imus, the diocese that has jurisdiction of St. Francis of Assisi Parish Church.
                </p>
            </div>
        </div>

        <div class="row">
            <div class="col m6">
                <h4 class="center" style="font-weight: 600; font-size: 2em; padding-top: 3%; padding-left: 5%; color: #008080">Lyceum of the Philippines University</h4>
                <p style="text-align: justify" class="indentation">
                    The Lyceum of the Philippines University - Cavite (Filipino: Pamantasang Liseo ng Pilipinas - Kabite, abbreviated LPU - C) is an institute of higher 
                    education located in the City of General Trias, in the province of Cavite. The campus opened its doors to the public in 2008. increasing the 
                    total number of LPU campuses within the LPU system to five. The institution was named after lykeion, the grove in ancient Athens 
                    where Aristotle taught his pupils. Its educational vision was founded on the principles set down by Dr. José P. Laurel.
                </p>
                <p style="text-align: justify" class="indentation">
                    The University describes itself as 
                    "<b><i>The First and Only Resort Campus in the Philippines</i></b>" due to its modern and elegant design.
                    The school's Latin motto is Veritas et Fortitudo, Pro Deo et Patria, which means "Truth and courage, for God and country.".
                    The University is the youngest school to be recognized as ISO 9001:2008 Quality Management System compliant by the Société Générale de Surveillance.[4]
                </p>
            </div>
            <div class="col m6">
                <img src="../images/lyceum.jpg" style="width: 100%" class="z-depth-2" />
            </div>
        </div>

        <div class="row">
            <div class="col m6">
                <img src="../images/gbr.jpg" style="width: 100%" class="z-depth-2" />
            </div>
            <div class="col m6">
                <h4 class="center" style="font-weight: 600; font-size: 2em; padding-top: 3%; padding-left: 5%; color: #008080">GBR Museum and Fine Arts Collection</h4>
                <p style="text-align: justify" class="indentation">
                    Located inside Gateway Business Park in Brgy. Javalera, Gen. Trias, Cavite, the museum 
                    exhibits the Philippines' rich history of culture and the arts. It contains more than 
                    3,000 vintage photographs as well as hundreds of model airplanes donated by founder Mr. 
                    Geronimo Berenguer de los Reyes Jr. (GBR) from hist personal collection.
                </p>
                <p style="text-align: justify" class="indentation">
                    There are 154 names engraved on the stone outside the museum. The names 
                    of these men are testaments to the bravery and heroism of true Filipinos. One 
                    of these patriots is Crisanto Mendoza de los Reyes, the great grandfather of museum 
                    chairman and founder, Geronimo Berenguer de los Reyes Jr. He is also joined by friends Maximo P. Inocencio and Enrique S. Paraiso on the list.
                </p>
                <p style="text-align: justify" class="indentation">
                    The GBR Museum is open from Tuesday to Saturday, from 9:00 am to 5:00 pm. There is an admission fee of P100.00 per student and P60.00 for children and senior citizens. Group tours are given discounted entrance fees. For inquiries, call the GBR Museum through telephone numbers 046-4330313 or 046-4330021.
                </p>
            </div>
        </div>

        <div class="row">
            <div class="col m6">
                <img src="../images/guadalupe.png" style="width: 100%" class="z-depth-2" />
                <h4 class="center" style="font-weight: 600; font-size: 2em; padding-top: 3%; padding-left: 5%; color: #008080">Our Lady of Guadalupe</h4>
                <p style="text-align: justify" class="indentation">
                    Patterned after the Basilica de Nuestra Señora de Guadalupe at the hills of Guadalupe in Mexico, the church made possible by the Geronimo Berenguer de los Reyes (GBR) Foundation, Inc. now stands on Barangay Javalera in General Trias, Cavite. Visit us today and reflect on the rich history of our church, read about stories of devotion, and learn about the astonishing miracles of the blessed Lady.
                </p>
            </div>
            <div class="col m6">
                <img src="../images/eagleridge.jpg" style="width: 100%" class="z-depth-2" />
                <h4 class="center" style="font-weight: 600; font-size: 2em; padding-top: 3%; padding-left: 5%; color: #008080">Eagle Ridge Golf and Country Club</h4>
                <p style="text-align: justify" class="indentation">
                    The Eagle Ridge Golf & Country Club, Inc. (ERGCCI) was organized on November 18, 1996 and registered with the Securities and Exchange Commission on December 9, 1996 under SEC Certificate of Registration A1996-10826. The ERGCCI was incorporated for the purpose of promoting the social, recreational and athletic activities among its members, the main objective and undertaking of which is the construction, development and maintenance of golf courses, tennis courts, swimming pools and other indoor and outdoor related sports and recreational facilities in General Trias, Province of Cavite.
                </p>
            </div>
        </div>

    </div>
</asp:Content>
