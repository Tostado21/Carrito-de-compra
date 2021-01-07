/* global alertify */
$(document).ready(function(){
    $('#btnCancelar').click(function(){
        $(location).attr('href',"MostrarCP.jsp");
    });
    
    $('#btnGuardar').click(function(){
        validarDatos();
    });
});

function validarDatos(){
    var nombre = $('#txtNombre').val();
    
    if(nombre === ""){
        alertify.alert("El campo clase producto no puede estar vacio");
        $('#txtNombre').focus().css("background-color","#A93226");
    }
    else{
        $('#frmModificarCP').submit();
    }
}