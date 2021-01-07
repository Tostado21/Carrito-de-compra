
$(document).ready(function(){
    var campo1 = document.getElementById("txtClaveActual");
    var campo2 = document.getElementById("txtClave");
    $('#mostrar_contrasena').click(function () {
        if ($('#mostrar_contrasena').is(':checked')) {
            campo1.type = "text";
            campo2.type = "text";
        } else {
            campo1.type = "password";
            campo2.type = "password";
        }

    });
});
