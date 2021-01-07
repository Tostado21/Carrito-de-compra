/* global alertify */
$(document).ready(function (){
    limpiarCampos();
    
    $('#btnRegistrar').click(function (){
        validarDatos();
    });
    
    $('#btnCancelar').click(function (){
        history.back();
    });
    
    $('#SelectDepartamento').change(function (){
        $('#text_depart').val("1");
        $.post("cbProvincia.jsp","#frmDepartamento".serialize(),function(data){
            $('#SelectProvincia').html(data);
        });
    });
});

function limpiarCampos(){
    $('.textBox').val("");
}

function validarDatos(){
    var nombre = $('#txtNombre').val();
    var apellido = $('#txtApellido').val();
    var dni = $('#txtDni').val();
    var email = $('#txtEmail').val();
    var email2 = $('#txtConfirEmail').val();
    var departamento = $('#txtDepartamento').val();
    var provincia = $('#txtProvincia').val();
    var distrito = $('#txtDistrito').val();
    var direccion1 = $('#txtDireccion1').val();
    var direccion2 = $('#txtDireccion2').val();
    var telefono = $('#txtTelefono').val();
    var usuario = $('#txtUsuario').val();
    var pass1 = $('#txtClave').val();
    var pass2 = $('#txtConfirClave').val();
    
    if(nombre === ""){
        alertify.alert("El campo nombre no puede estar vacio");
    }
    else if(apellido === ""){
        alertify.alert("El campo apellido no puede estar vacio");
    }
    else if(dni === ""){
        alertify.alert("El campo dni no puede estar vacio");
    }
    else if(email === ""){
        alertify.alert("El campo email no puede estar vacio");
    }
    else if(email2 === ""){
        alertify.alert("El campo confirmar email no puede estar vacio");
    }
    else if(departamento === ""){
        alertify.alert("El campo departamento no puede estar vacio");
    }
    else if(provincia === ""){
        alertify.alert("El campo provincia no puede estar vacio");
    }
    else if(distrito === ""){
        alertify.alert("El campo distrito no puede estar vacio");
    }
    else if(direccion1 === ""){
        alertify.alert("El campo direccion1 no puede estar vacio");
    }
    else if(telefono === ""){
        alertify.alert("El campo telefono no puede estar vacio");
    }
    else if(usuario === ""){
        alertify.alert("El campo usuario no puede estar vacio");
    }
    else if(pass1 === ""){
        alertify.alert("El campo clave no puede estar vacio");
    }
    else if(pass2 === ""){
        alertify.alert("El campo confirmar clave no puede estar vacio");
        
    }
    else{
        if(email !== email2){
            alertify.alert("Los correos electronicos no son iguales");
        }
        else if(pass1 !== pass2){
            alertify.alert("Las contraseñas no son iguales");
            
        }
        else{
            $('#frmRegistrarUsuario').submit();
        }
        
    }
}


