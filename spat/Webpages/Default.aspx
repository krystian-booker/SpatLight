<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="spat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #myCanvas {
            pointer-events: none; /* make the canvas transparent to the mouse - needed since canvas is position infront of image */
            position: absolute;
            z-index: 2;
        }

        #con {
            overflow: hidden;
        }

        #img {
            position: relative;
        }
    </style>
    <script type="text/javascript">
        function drawCir(coOrdStr) {
            if (coOrdStr) {
                var mCoords = coOrdStr.split(',');
                var x, y, r;
                x = mCoords[0];
                y = mCoords[1];
                r = mCoords[2];
                hdc.beginPath();
                hdc.arc(x, y, r, 0, 2 * Math.PI);
                hdc.fill();
                hdc.stroke();
            }

        }

        function myInit() {
            // get the target image
            var img = document.getElementById('Homunculus');

            var x, y, w, h;

            // get it's position and width+height
            x = img.offsetLeft;
            y = img.offsetTop;
            w = img.clientWidth;
            h = img.clientHeight;

            // move the canvas, so it's contained by the same parent as the image
            var imgParent = img.parentNode;
            var can = document.getElementById('myCanvas');
            // imgParent.appendChild(can);

            // place the canvas in front of the image
            can.style.zIndex = 1;

            // position it over the image
            can.style.left = x + 'px';
            can.style.top = y + 'px';

            // make same size as the image
            can.setAttribute('width', w + 'px');
            can.setAttribute('height', h + 'px');

            // get it's context
            hdc = can.getContext('2d');

            // set the 'default' values for the colour/width of fill/stroke operations
            hdc.fillStyle = 'red';
            hdc.strokeStyle = 'red';
            hdc.lineWidth = 2;

            $("area").each(function () {

                var coordStr = $(this).attr('coords');
                drawCir(coordStr);
            });


        }
    </script>

    <asp:UpdatePanel ID="Upd" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div id="con">
                <canvas id="myCanvas"></canvas>
                <img src="/Images/chart.png" alt="" id="Homunculus" usemap="#img_map" width="246" height="305" runat="server" onclick="chart_Click" />
                <map name="img_map">
                    <area target="" alt="" title="" href="" coords="110,35,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="131,33,5" shape="circle">
                    <area target="" alt="" title="" href="" coords="100,51,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="142,50,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="114,55,5" shape="circle">
                    <area target="" alt="" title="" href="" coords="128,54,5" shape="circle">
                    <area target="" alt="" title="" href="" coords="94,62,9" shape="circle">
                    <area target="" alt="" title="" href="" coords="149,58,9" shape="circle">
                    <area target="" alt="" title="" href="" coords="91,98,9" shape="circle">
                    <area target="" alt="" title="" href="" coords="155,93,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="84,132,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="168,119,9" shape="circle">
                    <area target="" alt="" title="" href="" coords="107,135,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="136,132,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="40,143,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="49,154,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="59,163,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="71,169,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="81,179,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="24,159,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="29,173,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="40,183,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="57,191,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="70,194,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="16,170,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="17,187,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="26,198,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="43,208,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="200,127,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="192,137,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="184,148,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="172,156,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="165,169,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="219,139,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="215,155,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="205,167,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="189,179,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="177,182,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="229,149,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="228,167,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="220,179,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="205,193,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="110,190,9" shape="circle">
                    <area target="" alt="" title="" href="" coords="138,189,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="109,241,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="136,245,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="97,247,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="107,255,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="58,244,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="66,255,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="77,263,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="89,269,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="102,271,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="45,252,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="53,264,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="66,271,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="79,279,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="96,284,8" shape="circle">
                    <area target="" alt="" title="" href="" coords="137,258,5" shape="circle">
                    <area target="" alt="" title="" href="" coords="148,253,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="176,248,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="166,257,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="157,265,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="145,272,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="132,276,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="186,257,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="175,267,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="163,277,7" shape="circle">
                    <area target="" alt="" title="" href="" coords="152,284,6" shape="circle">
                    <area target="" alt="" title="" href="" coords="138,288,7" shape="circle">
                </map>
                <input type="button" value="Make area active" onclick="myInit();">
            </div>
            <div id="chartThing" runat="server">
                <asp:ImageMap ID="btn" runat="server" HotSpotMode="Inactive" ImageUrl="~/Images/chart.png" OnClick="chart_Click">
                    <asp:CircleHotSpot AlternateText="leftCheek" HotSpotMode="PostBack" PostBackValue="leftCheek" Radius="5" X="110" Y="36" />
                    <asp:CircleHotSpot AlternateText="rightCheek" HotSpotMode="PostBack" PostBackValue="rightCheek" Radius="5" X="130" Y="32" />
                </asp:ImageMap>
                <canvas id="myCanvas" width="246" height="305"></canvas>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <div id="surveyBody" runat="server"></div>
</asp:Content>
