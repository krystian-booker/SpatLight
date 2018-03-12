

$('document').ready(function() {
  hide();
});
	function visible(id) {
	  $(id).fadeIn();
		console.log("working button");
	}
	
	function hide(){
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
		console.log("working");
	}
	
	function showStuff(){
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
	
