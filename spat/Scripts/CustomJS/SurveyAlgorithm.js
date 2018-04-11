var questionOneResult = 0;
var questionTwoResult = 0;
var questionThreeResult = 0;
var questionFourResult = 0;
var questionFiveResult = 0;
var questionSixResult = 0;
var questionSevenResult = 0;
var questionEightResult = 0;
var questionNineResult = 0;
var questionTenResult = 0;
var questionTenAResult = 0
var questionTenBResult = 0
var questionTenCResult = 0;
var questionElevenResult = 0;
var questionTwelveResult = 0;
var questionThirteenResult = 0;
var LikelyAxial = false;
var PossibleAxial = false;
var LikelySpa = false;
var PossibleSpa = false;

function Question1() {
    var list = document.getElementById("answerGroup1");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Male') {
            questionOneResult = 0.5;
        }
        else {
            questionOneResult = 0;
        }
    }
    Calculate();
}

function Question2() {
    var list = document.getElementById("answerGroup2");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == '45 years of age or older') {
            questionTwoResult = 1;
        }
        else {
            questionTwoResult = 0;
        }
    }
    Calculate();
}


function Question3() {
    var list = document.getElementById("answerGroup3");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Yes') {
            questionThreeResult = 0.5;
        }
        else {
            questionThreeResult = 0;
        }
    }
    Calculate();
}

function Question4() {
    alert('TODO: Implement');
}

function Question5() {
    var list = document.getElementById("answerGroup5");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'More than 3 months') {
            questionFiveResult = 1;
        }
        else {
            questionFiveResult = 0;
        }
    }
    Calculate();
}

function Question6() {
    var list = document.getElementById("answerGroup6");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Yes') {
            questionSixResult = 1;
        }
        else {
            questionSixResult = 0;
        }
    }
    Calculate();
}

function Question7() {
    var list = document.getElementById("answerGroup7");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Improved') {
            questionSevenResult = 1;
        }
        else {
            questionSevenResult = 0;
        }
    }
    Calculate();
}

function Question8() {
    var list = document.getElementById("answerGroup8");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Yes') {
            questionEightResult = 1;
        }
        else {
            questionEightResult = 0;
        }
    }
    Calculate();
}

function Question9() {
    var list = document.getElementById("answerGroup9");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Yes') {
            questionNineResult = 1;
        }
        else {
            questionNineResult = 0;
        }
    }
    Calculate();
}

function Question10() {
    var list = document.getElementById("answerGroup10");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Enthesitis') {
            questionTenBResult = 1;
        }
        else if (selected.value == 'Dactylitis') {
            questionTenCResult = 1;
        }
        else if (selected.value == 'Uveitis') {
            questionTenAResult = 1;
        }
        else {
            questionTenResult = 1;
        }
    }
    else {
        questionTenResult = 0;
        questionTenBResult = 0;
        questionTenResult = 0;
    }
    Calculate();
}

function Question11() {
    var list = document.getElementById("answerGroup11");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Yes') {
            questionNineResult = 1;
        }
        else {
            questionElevenResult = 0;
        }
    }
    Calculate();
}

function Question12() {
    var list = document.getElementById("answerGroup12");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        if (selected.value == 'Yes') {
            questionNineResult = 1;
        }
        else {
            questionElevenResult = 0;
        }
    }
    Calculate();
}

function Question13() {
    var list = document.getElementById("answerGroup13");
    var inputs = list.getElementsByTagName("input");
    var selected;

    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    if (selected) {
        questionThirteenResult = 1;
    }
    else {
        questionThirteenResult = 0;
    }
    Calculate();
}

function Calculate() {
    //Axial
    if (questionFiveResult && questionThreeResult) {
        var tally1 = questionOneResult;
        tally1 += questionSixResult;
        tally1 += questionSevenResult;
        tally1 += questionEightResult;
        tally1 += questionNineResult;
        tally1 += questionTenAResult;
        tally1 += questionTenBResult;
        tally1 += questionTenCResult;
        tally1 += questionTenResult
        tally1 += questionElevenResult;
        tally1 += questionTwelveResult;

        if (tally1 > 2) {
            document.getElementById('progressBar').value = 100;
            LikelyAxial = true;
            PossibleAxial = false;
            LikelySpa = false;
            PossibleSpa = false;
        }
        else if (tally1 > 1) {
            document.getElementById('progressBar').value = 50;
            LikelyAxial = false;
            PossibleAxial = true;
            LikelySpa = false;
            PossibleSpa = false;
        }
    }

    //SpA
    if (questionFiveResult || questionTenBResult || questionTenCResult) //add back pain
    {
        var tally2 = question3;
        tally2 += (questionSixResult / 2);
        tally2 += (questionSevenResult / 2);
        tally2 += (questionEightResult / 2);
        tally2 += (questionNineResult / 2);
        tally2 += (questionTenBResult / 2);
        tally2 += questionTenAResult;
        tally2 += (questionTenAResult / 2);
        tally2 += questionTenResult;
        tally2 += questionTwelveResult;
        tally2 += (questionThirteenResult / 2);
        tally2 += questionElevenResult;

        //add lower extermity joint pain
        if (tally2 > 1) {
            document.getElementById('progressBar').value = 100;
            LikelyAxial = false;
            PossibleAxial = false;
            LikelySpa = true;
            PossibleSpa = false;
        }
        else if (tally2 > 0.5) {
            document.getElementById('progressBar').value = 50;
            LikelyAxial = false;
            PossibleAxial = false;
            LikelySpa = false;
            PossibleSpa = true;
        }
    }
}

function ShowResults() {
    $('#theSideNav').hide();
    if (LikelyAxial) {
        $('#likelyPer').show();
    }
    else if (PossibleAxial) {
        $('#possiblePer').show();
    }
    else if (LikelySpa) {
        $('#likelySpa').show();
    }
    else if (PossibleSpa) {
        $('#possibleSpa').show();
    }
    else {
        $('#notLikely').show();
    }
}
