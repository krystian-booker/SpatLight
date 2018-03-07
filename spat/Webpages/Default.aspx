<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="spat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        var circles = [];

        $(document).ready(function () {
            RefreshChart();
        });

        function RefreshChart() {
            //If the chart exists, remove it to be recreated
            var canvasChart = document.getElementById("myCanvas");
            if (canvasChart) {
                canvasChart.remove();
            }

            //Recreate canavas
            document.getElementById('myChart').innerHTML = '<canvas id="myCanvas" style="pointer-events: none;position: absolute;z - index: 2;"></canvas>';

            //Recreate drawing properties
            var x, y, w, h;
            var img = document.getElementById('Homunculus');

            x = img.offsetLeft;
            y = img.offsetTop;
            w = img.clientWidth;
            h = img.clientHeight;

            var imgParent = img.parentNode;

            var canvas = document.getElementById('myCanvas');
            canvas.style.zIndex = 1;
            canvas.style.left = x + 'px';
            canvas.style.top = y + 'px';
            canvas.setAttribute('width', w + 'px');
            canvas.setAttribute('height', h + 'px');

            DrawnCircle = canvas.getContext('2d');
            DrawnCircle.fillStyle = 'red';
            DrawnCircle.strokeStyle = 'red';
            DrawnCircle.lineWidth = 2;
        }

        function JointSelected(jointName) {
            //Get selected joint coordinates
            var SelectedJoint;
            $(jointName).each(function () {
                SelectedJoint = $(this).attr('coords');
            });

            //If circle already drawn, remove, else draw
            if (circles.indexOf(SelectedJoint) > -1) {
                DeleteSelectedJoint(jointName)
            }
            else {
                DrawSelectedJoint(SelectedJoint);
            }
        }

        function DrawSelectedJoint(coordinates) {
            if (coordinates) {
                circles.push(coordinates);
            }
            document.getElementById('<%=JointsSelected.ClientID %>').value = circles;
            var test = document.getElementById('<%=JointsSelected.ClientID %>');
            console.log(test);
            DrawCanvasJoints()
        }

        function DeleteSelectedJoint(jointName) {
            //Get selected joint coordinates
            var coordinates;
            $(jointName).each(function () {
                coordinates = $(this).attr('coords');
            });

            //If circles array contains joint, remove, redraw 
            var deleteIndex = circles.indexOf(coordinates);
            if (deleteIndex > -1) {
                circles.splice(deleteIndex, 1);
            }
            DrawCanvasJoints();
        }

        function DrawCanvasJoints() {
            RefreshChart();

            //Draw all stored circles
            var circlesLength = circles.length;
            for (var i = 0; i < circlesLength; i++) {
                var currentCircle = circles[i];
                var mCoords = currentCircle.split(',');
                var x, y, r;
                x = mCoords[0];
                y = mCoords[1];
                r = mCoords[2];
                DrawnCircle.beginPath();
                DrawnCircle.arc(x, y, r, 0, 2 * Math.PI);
                DrawnCircle.fill();
                DrawnCircle.stroke();
            }
        }
    </script>

    <div style="overflow: hidden;">
        <div id="myChart"></div>
        <img src="/Images/chart.png" id="Homunculus" usemap="#img_map" width="246" height="305" style="position: relative;" />
        <map name="img_map">
            <area coords="110,35,6" shape="circle" href="javascript:JointSelected(leftCheek)" id="leftCheek">
            <area coords="131,33,6" shape="circle" href="javascript:JointSelected(rightCheek)" id="rightCheek">
            <area coords="100,51,3" shape="circle" href="javascript:JointSelected(leftUpperShoulder)" id="leftUpperShoulder">
            <area coords="142,50,3" shape="circle" href="javascript:JointSelected(rightUpperShoulder)" id="rightUpperShoulder">
            <area coords="114,55,5" shape="circle" href="javascript:JointSelected(leftNeck)" id="leftNeck">
            <area coords="128,54,5" shape="circle" href="javascript:JointSelected(rightNeck)" id="rightNeck">
            <area coords="94,62,8" shape="circle" href="javascript:JointSelected(leftShoulder)" id="leftShoulder">
            <area coords="149,58,8" shape="circle" href="javascript:JointSelected(rightShoulder)" id="rightShoulder">
            <area coords="91,98,8" shape="circle" href="javascript:JointSelected(leftElbow)" id="leftElbow">
            <area coords="155,93,8" shape="circle" href="javascript:JointSelected(rightElbow)" id="rightElbow">
            <area coords="84,132,9" shape="circle" href="javascript:JointSelected(leftWrist)" id="leftWrist">
            <area coords="168,119,9" shape="circle" href="javascript:JointSelected(rightWrist)" id="rightWrist">
            <area coords="107,135,7" shape="circle" href="javascript:JointSelected(leftHip)" id="leftHip">
            <area coords="136,132,7" shape="circle" href="javascript:JointSelected(rightHip)" id="rightHip">
            <area coords="40,143,7" shape="circle" href="javascript:JointSelected(leftHand1)" id="leftHand1">
            <area coords="49,154,7" shape="circle" href="javascript:JointSelected(leftHand2)" id="leftHand2">
            <area coords="59,163,7" shape="circle" href="javascript:JointSelected(leftHand3)" id="leftHand3">
            <area coords="71,169,7" shape="circle" href="javascript:JointSelected(leftHand4)" id="leftHand4">
            <area coords="81,179,7" shape="circle" href="javascript:JointSelected(leftHand5)" id="leftHand5">
            <area coords="24,159,6" shape="circle" href="javascript:JointSelected(leftKnucle1)" id="leftKnucle1">
            <area coords="29,173,6" shape="circle" href="javascript:JointSelected(leftKnucle2)" id="leftKnucle2">
            <area coords="40,183,6" shape="circle" href="javascript:JointSelected(leftKnucle3)" id="leftKnucle3">
            <area coords="57,191,6" shape="circle" href="javascript:JointSelected(leftKnucle4)" id="leftKnucle4">
            <area coords="70,194,6" shape="circle" href="javascript:JointSelected(leftKnucle5)" id="leftKnucle5">
            <area coords="16,170,7" shape="circle" href="javascript:JointSelected(leftFinger1)" id="leftFinger1">
            <area coords="17,187,7" shape="circle" href="javascript:JointSelected(leftFinger2)" id="leftFinger2">
            <area coords="26,198,7" shape="circle" href="javascript:JointSelected(leftFinger3)" id="leftFinger3">
            <area coords="43,208,7" shape="circle" href="javascript:JointSelected(leftFinger4)" id="leftFinger4">
            <area coords="200,127,7" shape="circle" href="javascript:JointSelected(rightHand1)" id="rightHand1">
            <area coords="192,137,7" shape="circle" href="javascript:JointSelected(rightHand2)" id="rightHand2">
            <area coords="184,148,7" shape="circle" href="javascript:JointSelected(rightHand3)" id="rightHand3">
            <area coords="172,156,7" shape="circle" href="javascript:JointSelected(rightHand4)" id="rightHand4">
            <area coords="165,169,7" shape="circle" href="javascript:JointSelected(rightHand5)" id="rightHand5">
            <area coords="219,139,7" shape="circle" href="javascript:JointSelected(rightKnucle1)" id="rightKnucle1">
            <area coords="215,155,7" shape="circle" href="javascript:JointSelected(rightKnucle2)" id="rightKnucle2">
            <area coords="205,167,7" shape="circle" href="javascript:JointSelected(rightKnucle3)" id="rightKnucle3">
            <area coords="189,179,7" shape="circle" href="javascript:JointSelected(rightKnucle4)" id="rightKnucle4">
            <area coords="177,182,7" shape="circle" href="javascript:JointSelected(rightKnucle5)" id="rightKnucle5">
            <area coords="229,149,7" shape="circle" href="javascript:JointSelected(rightFinger1)" id="rightFinger1">
            <area coords="228,167,7" shape="circle" href="javascript:JointSelected(rightFinger2)" id="rightFinger2">
            <area coords="220,179,7" shape="circle" href="javascript:JointSelected(rightFinger3)" id="rightFinger3">
            <area coords="205,193,7" shape="circle" href="javascript:JointSelected(rightFinger4)" id="rightFinger4">
            <area coords="110,190,9" shape="circle" href="javascript:JointSelected(leftKnee)" id="leftKnee">
            <area coords="138,189,8" shape="circle" href="javascript:JointSelected(rightKnee)" id="rightKnee">
            <area coords="109,241,8" shape="circle" href="javascript:JointSelected(leftAnkle)" id="leftAnkle">
            <area coords="136,245,8" shape="circle" href="javascript:JointSelected(rightAnkle)" id="rightAnkle">
            <area coords="97,247,4" shape="circle" href="javascript:JointSelected(leftLowerAnkle1)" id="leftLowerAnkle1">
            <area coords="107,255,4" shape="circle" href="javascript:JointSelected(leftLowerAnkle2)" id="leftLowerAnkle2">
            <area coords="58,244,6" shape="circle" href="javascript:JointSelected(leftFootKnuckle1)" id="leftFootKnuckle1">
            <area coords="66,255,6" shape="circle" href="javascript:JointSelected(leftFootKnuckle2)" id="leftFootKnuckle2">
            <area coords="77,263,6" shape="circle" href="javascript:JointSelected(leftFootKnuckle3)" id="leftFootKnuckle3">
            <area coords="89,269,6" shape="circle" href="javascript:JointSelected(leftFootKnuckle4)" id="leftFootKnuckle4">
            <area coords="102,271,6" shape="circle" href="javascript:JointSelected(leftFootKnuckle5)" id="leftFootKnuckle5">
            <area coords="45,252,7" shape="circle" href="javascript:JointSelected(leftToe1)" id="leftToe1">
            <area coords="53,264,7" shape="circle" href="javascript:JointSelected(leftToe2)" id="leftToe2">
            <area coords="66,271,7" shape="circle" href="javascript:JointSelected(leftToe3)" id="leftToe3">
            <area coords="79,279,7" shape="circle" href="javascript:JointSelected(leftToe4)" id="leftToe4">
            <area coords="96,284,7" shape="circle" href="javascript:JointSelected(leftToe5)" id="leftToe5">
            <area coords="137,258,4" shape="circle" href="javascript:JointSelected(rightLowerAnkle1)" id="rightLowerAnkle1">
            <area coords="148,253,4" shape="circle" href="javascript:JointSelected(rightLowerAnkle2)" id="rightLowerAnkle2">
            <area coords="176,248,6" shape="circle" href="javascript:JointSelected(rightFootKnuckle1)" id="rightFootKnuckle1">
            <area coords="166,257,6" shape="circle" href="javascript:JointSelected(rightFootKnuckle2)" id="rightFootKnuckle2">
            <area coords="157,265,6" shape="circle" href="javascript:JointSelected(rightFootKnuckle3)" id="rightFootKnuckle3">
            <area coords="145,272,6" shape="circle" href="javascript:JointSelected(rightFootKnuckle4)" id="rightFootKnuckle4">
            <area coords="132,276,6" shape="circle" href="javascript:JointSelected(rightFootKnuckle5)" id="rightFootKnuckle5">
            <area coords="186,257,6" shape="circle" href="javascript:JointSelected(rightToe1)" id="rightToe1">
            <area coords="175,267,6" shape="circle" href="javascript:JointSelected(rightToe2)" id="rightToe2">
            <area coords="163,277,6" shape="circle" href="javascript:JointSelected(rightToe3)" id="rightToe3">
            <area coords="152,284,6" shape="circle" href="javascript:JointSelected(rightToe4)" id="rightToe4">
            <area coords="138,288,6" shape="circle" href="javascript:JointSelected(rightToe5)" id="rightToe5">
        </map>
    </div>
    <div id="surveyBody" runat="server"></div>
    <asp:HiddenField ID="JointsSelected" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
