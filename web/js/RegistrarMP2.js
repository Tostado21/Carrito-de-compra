/* global alertify */
$(document).ready(function(){
    $('#txtNombret').val("");
    
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
        alertify.alert("El campo marca producto no pueden estar vacio");
    }else{
        $('#frmRegistrarMP').submit();
    }
}