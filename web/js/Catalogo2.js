$(document).ready(function (){
    var tipo = $('#txtTipo').val();
   
    if(tipo === "ADMINISTRADOR"){
        cuentaAdministrador();
    }
    else if(tipo === "CLIENTE"){
        cuentaUsuario();
    }
    else{
        cuentaNegada();
        $('#contenido #BotonADD').click(function (){
            $(location).attr('href',"Login.jsp");
        });
    }
});

function cuentaAdministrador(){
    $('#lnkLogin').hide();
    $('#lnkCompra').hide();
    $('#contenido #BotonADD').hide();
    $('#footer').hide();
    $('#Hcatalogo').show();
    $('#contenido #BotonModificar').show();
    $('#lnkLogout').show();
    $('#lnkAdm').show();
}
function cuentaUsuario(){
    $('#Hcatalogo').hide();
    $('#lnkLogin').hide();
    $('#lnkAdm').hide();
    $('#contenido #BotonModificar').hide();
    $('#lnkLogout').show();
}
function cuentaNegada(){
    $('#Hcatalogo').hide();
    $('#lnkLogout').hide();
    $('#lnkAdm').hide();
    $('#lnkPerfil').hide();
    $('#lnkUser').hide();
    $('#contenido #BotonModificar').hide();
    $('#lnkLogin').show();
}


