/* global alertify */
$(document).ready(function(){
    $('.textBox').val("");
    
    $('#btnCancelar').click(function(){
        history.back();
    });
    
    $('#btnRegistrar').click(function(){
        validarDatos();
    });
});

function validarDatos(){
    var clase = $('#txtClase').val();
    var marca = $('#txtMarca').val();
    var descripcion = $('#txtDescripcion').val();
    var precio = $('#txtPrecio').val();
    var imagen = $('#txtImagen').val();
    
    if (clase === "" && marca === "" && descripcion === "" && precio === "" && imagen === "") {
        alertify.alert("Todos los campos estan vacios");
        $('#txtClase').focus().css("border-color","#F1C40F");
        $('#txtMarca').focus().css("border-color","#F1C40F");
        $('#txtDescripcion').focus().css("border-color","#F1C40F");
        $('#txtPrecio').focus().css("border-color","#F1C40F");
        $('#fileLabel').focus().css("color","#F1C40F");
    }
    else if(clase === ""){
        alertify.alert("El campo clase producto no puede estar vacio");
        $('#txtClase').focus().css("border-color","#F1C40F");
    }
    else if(marca === ""){
        alertify.alert("El campo marca producto no puede estar vacio");
        $('#txtMarca').focus().css("border-color","#F1C40F");
    }
    else if(descripcion === ""){
        alertify.alert("El campo descripcion del producto no puede estar vacio");
        $('#txtDescripcion').focus().css("border-color","#F1C40F");
    }
    else if(precio === ""){
        alertify.alert("El campo precio del producto no puede estar vacio");
        $('#txtPrecio').focus().css("border-color","#F1C40F");
    }
    else if(imagen === ""){
        alertify.alert("El campo imagen no puede estar vacio");
        $('#fileLabel').focus().css("color","#F1C40F");
    }
    else{
        $('#frmRegistrarProd').submit();
    }
}