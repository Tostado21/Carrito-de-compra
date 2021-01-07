/* global alertify */
$(document).ready(function(){
    $('.campoOculto').hide();
    
    $('#btnModificar').click(function(){
        botonModificar();
        $('#btnGuardar').addClass("button");
    });
    
    $('#btnGuardar').click(function(){
        validarDatos();
    });
    
    $('#btnCancelar').click(function(){
        $(location).attr('href',"Catalogo.jsp");
    });
});

function botonModificar(){
    $('.campoOculto').show();
    $('.soloTexto').hide();
    $('#btnModificar').hide();
}

function validarDatos(){
    var nombre = $('#txtNombre').val();
    var apellido = $('#txtApellido').val();
    var dni = $('#txtDni').val();
    var departamento = $('#txtDepartamento').val();
    var provincia = $('#txtProvincia').val();
    var distrito = $('#txtDistrito').val();
    var direccion1 = $('#txtDireccion1').val();
    var telefono = $('#txtTelefono').val();
    
    if(nombre === ""){
        alertify.alert("El campo nombre no puede estar vacio");
        $('#txtNombre').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else if(apellido === ""){
        alertify.alert("El campo apellido no puede estar vacio");
        $('#txtApellido').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else if(dni === ""){
        alertify.alert("El campo dni no puede estar vacio");
        $('#txtDni').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else if(departamento === ""){
        alertify.alert("El campo departamento no puede estar vacio");
        $('#txtDepartamento').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else if(provincia === ""){
        alertify.alert("El campo provincia no puede estar vacio");
        $('#txtProvincia').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else if(distrito === ""){
        alertify.alert("El campo distrito no puede estar vacio");
        $('#txtDistrito').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else if(direccion1 === ""){
        alertify.alert("El campo direccion1 no puede estar vacio");
        $('#txtDireccion1').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else if(telefono === ""){
        alertify.alert("El campo telefono no puede estar vacio");
        $('#txtTelefono').focus().css("background-color","#E74C3C");
        botonModificar();
    }
    else{
        $('#frmModificarUsuario').submit();
    }
}