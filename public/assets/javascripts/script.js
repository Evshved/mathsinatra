$('input[type=radio][name=switch]').change(function() {
    $('#div_change_linear').toggle(
        $('input[type=radio][name=switch]:checked').val() == 1 ? true : false);
    $('#div_change_quadratic').toggle(
        $('input[type=radio][name=switch]:checked').val() == 0 ? true : false);
    })
    .change();
