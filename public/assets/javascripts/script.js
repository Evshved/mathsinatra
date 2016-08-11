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



// let valid = false;
// valid = validateFunctionToFORM("#myforma");


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
})

$( "#myformb" ).validate({
  rules: {
    first_coefqua: {
      required: true,
      digits: true
    },
    second_coefqua: {
      required: true,
      digits: true
    },
    third_coefqua: {
      required: true,
      digits: true
    },
    fourth_coefqua: {
      required: true,
      digits: true
    }
  }
});

$("#myforma").submit(function() {
    // variable1 = $("id_fieldfirstlin").val()
    alert($("#fieldfirstlin").val())
    $.post({
      url: "/",
      dataType: 'json',
      data: {
        firstlin: $("#fieldfirstlin").val(),
        secondlin: $("#fieldsecondlin").val(),
        thirdlin: $("#fieldthirdlin").val(),
        check: "linear"
      },
      success: function(data) { alert(data) }
    });
    return false;
});

$("#myformb").submit(function() {
    // variable1 = $("id_fieldfirstlin").val()
    alert($("#fieldfirstlin").val())
    $.post({
      url: "/",
      dataType: 'json',
      data: {
        firstqua: $("#fieldfirstqua").val(),
        secondqua: $("#fieldsecondqua").val(),
        thirdqua: $("#fieldthirdqua").val(),
        fourthqua: $("#fieldfourthqua").val(),
        check: "quadratic"
      },
      success: function(data) { alert(data) }
    });
    return false;
});





