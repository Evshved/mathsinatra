$('input[type=radio][name=switch]').change(function() {
    $('#myforma').toggle(
        $('input[type=radio][name=switch]:checked').val() == 1 ? true : false);
    $('#myformb').toggle(
        $('input[type=radio][name=switch]:checked').val() == 0 ? true : false);
    })
    .change();


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
        check: "linear"
      },
      success: function(data) { alert(data) }
    });
    return false;
});

$("#myformb").submit(function() {
    alert($("#fieldfirstlin").val())
    $.post({
      url: "/",
      dataType: 'json',
      data: {
        firstqua: $("#fieldfirstqua").val(),
        secondqua: $("#fieldsecondqua").val(),
        thirdqua: $("#fieldthirdqua").val(),
        check: "quadratic"
      },
      success: function(data) { console.log(data) }
    });
    return false;
});





