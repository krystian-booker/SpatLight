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