$('document').ready(function () {
    hide();
});


function visible(id) {
    $(id).fadeIn();
}

function hideTop() {
    $('#banner-top').hide();
    $(".header").css("visibility", "visible");
}

function hideEnd() {
    $('#endOfSurvey').hide();
    $(".header").css("visibility", "invisible");
}

function hideNav() {
    $("#myHeader").hide();
}

function goBack() {
    $("#banner-top").show();
    $("#resourcesSection").hide();
    $("#myHeader").hide();

}

function hide() {
    $('#question1').hide();
    $('#question2').hide();
    $('#question3').hide();
    $('#question4').hide();
    $('#question5').hide();
    $('#question6').hide();
    $('#question7').hide();
    $('#question8').hide();
    $('#question9').hide();
    $('#question10').hide();
    $('#question11').hide();
    $('#question12').hide();
    $('#question13').hide();
}

function showStuff() {
    $('#question1').fadeIn();
    $('#question2').fadeIn();
    $('#question3').fadeIn();
    $('#question4').fadeIn();
    $('#question5').fadeIn();
    $('#question6').fadeIn();
    $('#question7').fadeIn();
    $('#question8').fadeIn();
    $('#question9').fadeIn();
    $('#question10').fadeIn();
    $('#question11').fadeIn();
    $('#question12').fadeIn();
    $('#question13').fadeIn();
}
// When the user scrolls the page, execute myFunction 
window.onscroll = function () { myFunction() };

// Get the header
var header = document.getElementById("myHeader");

// Get the offset position of the navbar
var sticky = header.offsetTop;

// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
    if (window.pageYOffset >= sticky) {
        header.classList.add("sticky");
    } else {
        header.classList.remove("sticky");
    }
}