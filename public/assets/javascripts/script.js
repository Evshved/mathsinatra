$('input[type=radio][name=switch]').change(function() {
    $('#div_change_linear').toggle(
        $('input[type=radio][name=switch]:checked').val() == 1 ? true : false);
    $('#div_change_quadratic').toggle(
        $('input[type=radio][name=switch]:checked').val() == 0 ? true : false);
    })
    .change();
$(document).ready(function(){
  $("button").click(function(){
    $("#div1").load("/",function(responseTxt,statusTxt,xhr){
      /* if(statusTxt=="success") alert("External content loaded successfully!"); */
      if(statusTxt=="error")
        alert("Error: "+xhr.status+": "+xhr.statusText);
    });
  });
});
$(document).ready(function(){
  $("button").click(function(){
    $("#div2").load("/",function(responseTxt,statusTxt,xhr){
      /* if(statusTxt=="success") alert("External content loaded successfully!"); */
      if(statusTxt=="error")
        alert("Error: "+xhr.status+": "+xhr.statusText);
    });
  });
});
