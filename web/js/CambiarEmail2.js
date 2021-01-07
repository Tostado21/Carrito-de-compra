/* global alertify */
$(document).ready(function(){
    $('.textBox').val("");
    
    $('#btnCancelar').click(function(){
        history.back();
    });
    
    $('#btnGuardar').click(function(){
        validarDatos();
    });
});

function validarDatos(){
    var email1 = $('#txtEmail').val();
    var email2 = $('#txtConfirEmail').val();
    var pass = $('#txtPass').val();
    
    if(email1 === ""){
        alertify.alert("El campo email no puede estar vacio");
        $('#txtEmail').focus().css("background-color","#F7DC6F");
    }
    else if(email2 === ""){
        alertify.alert("El campo confirmar email no puede estar vacio");
        $('#txtConfirEmail').focus().css("background-color","#F7DC6F");
    }
    else if(pass === ""){
        alertify.alert("El campo contraseña no puede estar vacio");
        $('#txtPass').focus().css("background-color","#F7DC6F");
    }
    else{
        if(email1 === email2){
            $('#frmModificarEmail').submit();
        }
        else{
            alertify.alert("Los correos electronicos no son iguales");
            $('#txtConfirEmail').val("");
            $('#txtConfirEmail').focus().css("background-color","#F7DC6F");
        }
    }
}