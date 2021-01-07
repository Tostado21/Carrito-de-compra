/* global alertify */
$(document).ready(function(){
    $('#txtModificarImagen').attr('disabled','disabled');
    
    $('#btnCancelar').click(function(){
        history.back();
    });
    
    $('#btnGuardar').click(function(){
        validarDatos();
    });
    
    $('#SelectImagenActual').click(function(){
        $('#txtImagen').removeAttr('disabled');
        $('#txtModificarImagen').attr('disabled','disabled');
    });
    
    $('#SelectModificarImagen').click(function(){
        $('#txtImagen').attr('disabled','disabled');
        $('#txtModificarImagen').removeAttr('disabled');
    });
});

function validarDatos(){
    var nombreCP = $('#txtNombreCP').val();
    var nombreMP = $('#txtNombreMP').val();
    var descripcionP = $('#txtDescripcionP').val();
    var precioP = $('#txtPrecioP').val();
    var imagenP = $('#txtImagen').val();

    if(nombreCP === ""){
        alertify.alert("El campo clase producto no puede estar vacio");
        $('#txtNombreCP').focus().css("background-color","#A93226");
    }
    else if(nombreMP === ""){
        alertify.alert("El campo marca producto no puede estar vacio");
        $('#txtNombreMP').focus().css("background-color","#A93226");
    }
    else if(descripcionP === ""){
        alertify.alert("El campo descripcion producto no puede estar vacio");
        $('#txtDescripcionP').focus().css("background-color","#A93226");
    }
    else if(precioP === ""){
        alertify.alert("El campo precio producto no puede estar vacio");
        $('#txtPrecioP').focus().css("background-color","#A93226");
    }
    else if(imagenP === ""){
        alertify.alert("El campo imagen producto no puede estar vacio");
        $('#txtImagen').focus().css("background-color","#A93226");
    }
    else{
        $('#frmModificarProd').submit();
    }
}