// var $showLinear, showQuadratic;
// document.getElementsByName("myBtn").addEventListener("click", showLinear);
// document.getElementsByName("myBtn").addEventListener("click", showQuadratic);
// showLinear = function() {
//     document.getElementById('form-container-for-linear').style.display = 'block';
//     document.getElementsByName('linear').checked = true;
//     document.getElementsByName('quadratic').checked = false;

// }
// showLinear = function() {
//     document.getElementById('form-container-for-quadratic').style.display = 'block';
//     document.getElementsByName('linear').checked = false;
//     document.getElementsByName('quadratic').checked = true;

// }

// $(document).ready(function() {
//     $('input[type=radio][name=equation]').change(function() {
//         if (this.value == 'linear') {
//             alert("linear");
//         }
//         else if (this.value == 'quadratic') {
//             alert("Quadratic");
//         }
//     });
// });


$('input[type=radio][name=switch]').change(function() {
    $('#div_change_linear').toggle(
        $('input[type=radio][name=switch]:checked').val() == 1 ? true : false);
    $('#div_change_quadratic').toggle(
        $('input[type=radio][name=switch]:checked').val() == 0 ? true : false);
    })
    .change();
