$(document).ready(function(){
    var campo1 = document.getElementById("txtClave");
    $('#mostrar_contrasena').click(function () {
        if ($('#mostrar_contrasena').is(':checked')) {
            campo1.type = "text";
        } else {
            campo1.type = "password";
        }

    });
});