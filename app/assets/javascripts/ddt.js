
var step = 1;

$(document).ready(function(){
 
/*
  console.log("."+window.step); 
  $(("."+window.step).toString()).on("change", function(){
  $(("#"+window.step).toString()).hide();
  window.step = window.step + 1;
  console.log("alakii");
  $(("#"+window.step).toString()).show();
  });
*/
  $("#2").hide(); 
  $("#3").hide(); 
  $("#4").hide(); 
  $("#5").hide(); 
  $("#6").hide(); 
  $("#7").hide(); 
  $("#8").hide(); 
  $("#9").hide(); 
  $("#10").hide(); 
  $("#11").hide(); 
  $("#12").hide(); 
  $("#13").hide(); 
  $("#14").hide(); 
  $("#15").hide(); 
  $("#16").hide(); 
  $("#17").hide(); 
  $("#18").hide(); 
  $("#19").hide(); 
  $("#20").hide(); 
  $("#21").hide(); 
  $("#22").hide(); 
  $("#23").hide(); 
  $("#24").hide(); 
  $("#25").hide(); 
  $("#submit_ddt").hide();

$(".1.true_button").on("click", function(){
$("#1").hide();
document.getElementById("ddtanswer_q1").value = 1;
$("#2").show(); //alert(step);
});

$(".1.false_button").on("click", function(){
$("#1").hide();
document.getElementById("ddtanswer_q1").value = 2;
$("#2").show(); //alert(step);
});

$(".2.true_button").on("click", function(){
$("#2").hide();
document.getElementById("ddtanswer_q2").value = 1;
$("#3").show(); //alert(step);
});

$(".2.false_button").on("click", function(){
$("#2").hide();
document.getElementById("ddtanswer_q2").value = 2;
$("#3").show(); //alert(step);
});

$(".3.true_button").on("click", function(){
$("#3").hide();
document.getElementById("ddtanswer_q3").value = 1;
$("#4").show(); //alert(step);
});

$(".3.false_button").on("click", function(){
$("#3").hide();
document.getElementById("ddtanswer_q3").value = 2;
$("#4").show(); //alert(step);
});

$(".4.true_button").on("click", function(){
$("#4").hide();
document.getElementById("ddtanswer_q4").value = 1;
$("#5").show(); //alert(step);
});

$(".4.false_button").on("click", function(){
$("#4").hide();
document.getElementById("ddtanswer_q4").value = 2;
$("#5").show(); //alert(step);
});

$(".5.true_button").on("click", function(){
$("#5").hide();
document.getElementById("ddtanswer_q5").value = 1;
$("#6").show(); //alert(step);
});

$(".5.false_button").on("click", function(){
$("#5").hide();
document.getElementById("ddtanswer_q5").value = 2;
$("#6").show(); //alert(step);
});

$(".6.true_button").on("click", function(){
$("#6").hide();
document.getElementById("ddtanswer_q6").value = 1;
$("#7").show(); //alert(step);
});

$(".6.false_button").on("click", function(){
$("#6").hide();
document.getElementById("ddtanswer_q6").value = 2;
$("#7").show(); //alert(step);
});

$(".7.true_button").on("click", function(){
$("#7").hide();
document.getElementById("ddtanswer_q7").value = 1;
$("#8").show(); //alert(step);
});

$(".7.false_button").on("click", function(){
$("#7").hide();
document.getElementById("ddtanswer_q7").value = 2;
$("#8").show(); //alert(step);
});

$(".8.true_button").on("click", function(){
$("#8").hide();
document.getElementById("ddtanswer_q8").value = 1;
$("#9").show(); //alert(step);
});

$(".8.false_button").on("click", function(){
$("#8").hide();
document.getElementById("ddtanswer_q8").value = 2;
$("#9").show(); //alert(step);
});

$(".9.true_button").on("click", function(){
$("#9").hide();
document.getElementById("ddtanswer_q9").value = 1;
$("#10").show(); //alert(step);
});

$(".9.false_button").on("click", function(){
$("#9").hide();
document.getElementById("ddtanswer_q9").value = 2;
$("#10").show(); //alert(step);
});

$(".10.true_button").on("click", function(){
$("#10").hide();
document.getElementById("ddtanswer_q10").value = 1;
$("#11").show(); //alert(step);
});

$(".10.false_button").on("click", function(){
$("#10").hide();
document.getElementById("ddtanswer_q10").value = 2;
$("#11").show(); //alert(step);
});

$(".11.true_button").on("click", function(){
$("#11").hide();
document.getElementById("ddtanswer_q11").value = 1;
$("#12").show(); //alert(step);
});

$(".11.false_button").on("click", function(){
$("#11").hide();
document.getElementById("ddtanswer_q11").value = 2;
$("#12").show(); //alert(step);
});

$(".12.true_button").on("click", function(){
$("#12").hide();
document.getElementById("ddtanswer_q12").value = 1;
$("#13").show(); //alert(step);
});

$(".12.false_button").on("click", function(){
$("#12").hide();
document.getElementById("ddtanswer_q12").value = 2;
$("#13").show(); //alert(step);
});

$(".13.true_button").on("click", function(){
$("#13").hide();
document.getElementById("ddtanswer_q13").value = 1;
$("#14").show(); //alert(step);
});

$(".13.false_button").on("click", function(){
$("#13").hide();
document.getElementById("ddtanswer_q13").value = 2;
$("#14").show(); //alert(step);
});

$(".14.true_button").on("click", function(){
$("#14").hide();
document.getElementById("ddtanswer_q14").value = 1;
$("#15").show(); //alert(step);
});

$(".14.false_button").on("click", function(){
$("#14").hide();
document.getElementById("ddtanswer_q14").value = 2;
$("#15").show(); //alert(step);
});

$(".15.true_button").on("click", function(){
$("#15").hide();
document.getElementById("ddtanswer_q15").value = 1;
$("#16").show(); //alert(step);
});

$(".15.false_button").on("click", function(){
$("#15").hide();
document.getElementById("ddtanswer_q15").value = 2;
$("#16").show(); //alert(step);
});

$(".16.true_button").on("click", function(){
$("#16").hide();
document.getElementById("ddtanswer_q16").value = 1;
$("#17").show(); //alert(step);
});

$(".16.false_button").on("click", function(){
$("#16").hide();
document.getElementById("ddtanswer_q16").value = 2;
$("#17").show(); //alert(step);
});

$(".17.true_button").on("click", function(){
$("#17").hide();
document.getElementById("ddtanswer_q17").value = 1;
$("#18").show(); //alert(step);
});

$(".17.false_button").on("click", function(){
$("#17").hide();
document.getElementById("ddtanswer_q17").value = 2;
$("#18").show(); //alert(step);
});

$(".18.true_button").on("click", function(){
$("#18").hide();
document.getElementById("ddtanswer_q18").value = 1;
$("#19").show(); //alert(step);
});

$(".18.false_button").on("click", function(){
$("#18").hide();
document.getElementById("ddtanswer_q18").value = 2;
$("#19").show(); //alert(step);
});

$(".19.true_button").on("click", function(){
$("#19").hide();
document.getElementById("ddtanswer_q19").value = 1;
$("#20").show(); //alert(step);
});

$(".19.false_button").on("click", function(){
$("#19").hide();
document.getElementById("ddtanswer_q19").value = 2;
$("#20").show(); //alert(step);
});

$(".20.true_button").on("click", function(){
$("#20").hide();
document.getElementById("ddtanswer_q20").value = 1;
$("#21").show(); //alert(step);
});

$(".20.false_button").on("click", function(){
$("#20").hide();
document.getElementById("ddtanswer_q20").value = 2;
$("#21").show(); //alert(step);
});

$(".21.true_button").on("click", function(){
$("#21").hide();
document.getElementById("ddtanswer_q21").value = 1;
$("#22").show(); //alert(step);
});

$(".21.false_button").on("click", function(){
$("#21").hide();
document.getElementById("ddtanswer_q21").value = 2;
$("#22").show(); //alert(step);
});

$(".22.true_button").on("click", function(){
$("#22").hide();
document.getElementById("ddtanswer_q22").value = 1;
$("#23").show(); //alert(step);
});

$(".22.false_button").on("click", function(){
$("#22").hide();
document.getElementById("ddtanswer_q22").value = 2;
$("#23").show(); //alert(step);
});

$(".23.true_button").on("click", function(){
$("#23").hide();
document.getElementById("ddtanswer_q23").value = 1;
$("#24").show(); //alert(step);
});

$(".23.false_button").on("click", function(){
$("#23").hide();
document.getElementById("ddtanswer_q23").value = 2;
$("#24").show(); //alert(step);
});

$(".24.true_button").on("click", function(){
$("#24").hide();
document.getElementById("ddtanswer_q24").value = 1;
$("#25").show(); //alert(step);
});

$(".24.false_button").on("click", function(){
$("#24").hide();
document.getElementById("ddtanswer_q24").value = 2;
$("#25").show(); //alert(step);
});

$(".25.true_button").on("click", function(){
$("#25").hide();
document.getElementById("ddtanswer_q25").value = 1;
$("#submit_ddt").show(); //alert(step);
});

$(".25.false_button").on("click", function(){
$("#25").hide();
document.getElementById("ddtanswer_q25").value = 2;
$("#submit_ddt").show(); //alert(step);
});

});