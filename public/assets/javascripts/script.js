$('input[type=radio][name=switch]').change(function() {
    $('#myforma').toggle(
        $('input[type=radio][name=switch]:checked').val() == 1 ? true : false);
    $('#myformb').toggle(
        $('input[type=radio][name=switch]:checked').val() == 0 ? true : false);
    })
    .change();
// $(document).ready(function(){
//   $("button").click(function(){
//     $("#div1").load("/",function(responseTxt,statusTxt,xhr){
//        if(statusTxt=="success") alert("External content loaded successfully!");
//       if(statusTxt=="error")
//         alert("Error: "+xhr.status+": "+xhr.statusText);
//     });
//   });
// });
// $(document).ready(function(){
//   $("button").click(function(){
//     $("#div2").load("/",function(responseTxt,statusTxt,xhr){
//        if(statusTxt=="success") alert("External content loaded successfully!");
//       if(statusTxt=="error")
//         alert("Error: "+xhr.status+": "+xhr.statusText);
//     });
//   });
// });

jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});

$( "#myforma" ).validate({
  rules: {
    first_coeflin: {
      required: true,
      digits: true
    },
    second_coeflin: {
      required: true,
      digits: true
    },
    third_coeflin: {
      required: true,
      digits: true
    }

  }
});
$( "#myformb" ).validate({
  rules: {
    first_coeflin: {
      required: true,
      digits: true
    },
    second_coeflin: {
      required: true,
      digits: true
    },
    third_coeflin: {
      required: true,
      digits: true
    },
    fourth_coeflin: {
      required: true,
      digits: true
    }
  }
});


