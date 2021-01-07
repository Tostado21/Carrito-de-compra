/* global alertify */
$(document).ready(function(){
    
    $('#btnCancelar').click(function(){
        history.back();
    });
    
    $('#btnGuardar').click(function(){
        validarDatos();
    });
});

function validarDatos(){
    var passActual = $('#txtClaveActual').val();
    var pass1 = $('#txtClave').val();
    var pass2 = $('#txtConfirClave').val();
    
    if(passActual === ""){
        alertify.alert("El campo password actual no puede estar vacio");
        $('#txtClaveActual').focus().css("background-color","#F7DC6F");
    }
    else if(pass1 === ""){
        alertify.alert("El campo nueva password no puede estar vacio");
        $('#txtClave').focus().css("background-color","#F7DC6F");
    }
    else if(pass2 === ""){
        alertify.alert("El campo confirmar password no puede estar vacio");
        $('#txtConfirClave').focus().css("background-color","#F7DC6F");
    }
    else{
        if(pass1 === pass2){
            $('#frmModificarClave').submit();
        }else{
            alertify.alert("Las passwords no son iguales");
            $('#txtConfirClave').val("");
            $('#txtConfirClave').focus().css("background-color","#F7DC6F");
        }
    }
}