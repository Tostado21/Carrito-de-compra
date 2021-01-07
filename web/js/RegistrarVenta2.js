/* global alertify */

$(document).ready(function(){
    
    $('#comprar').click(function(){
        validarCompra();
    });
});

function validarCompra(){
    var campos = $('.valores').val();
        if (campos === "null") {
            alertify.alert("No puedes realizar la compra si no hay productos agregados al carrito");
        }else{
        	$('#frmRegistrarVenta').submit();
        }
        
}