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
                <img src="/Images/chart.png" alt="" id="Homunculus" usemap="#img_map" width="246" height="305" />
                <map name="img_map">
                    <area shape="circle">
                    <area shape="circle" coords="110,36,5" alt="Mercury">
                </map>
                <input type="button" value="Make area active" onclick="myInit();">
            </div>
<%--            <div id="chartThing" runat="server">
                <asp:ImageMap ID="btn" runat="server" HotSpotMode="Inactive" ImageUrl="~/Images/chart.png" OnClick="chart_Click">
                    <asp:CircleHotSpot AlternateText="leftCheek" HotSpotMode="PostBack" PostBackValue="leftCheek" Radius="5" X="110" Y="36" />
                    <asp:CircleHotSpot AlternateText="rightCheek" HotSpotMode="PostBack" PostBackValue="rightCheek" Radius="5" X="130" Y="32" />
                </asp:ImageMap>
                <canvas id="myCanvas" width="246" height="305"></canvas>
            </div>--%>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>

    <div id="surveyBody" runat="server"></div>
</asp:Content>
