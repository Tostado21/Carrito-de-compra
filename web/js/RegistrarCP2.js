/* global alertify */
$(document).ready(function(){
    $('#txtNombre').val("");
    
    $('#btnCancelar').click(function(){
        history.back();
    });
    
    $('#btnRegistrar').click(function(){
        validarDatos();
    });
});

function validarDatos(){
    var nombre = $('#txtNombre').val();
    
    if(nombre === ""){
        alertify.alert("El campo clase producto no pueden estar vacio");
    }else{
        $('#frmRegistrarCP').submit();
    }
}