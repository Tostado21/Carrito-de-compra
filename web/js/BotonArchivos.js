/* global fileLabel */

window.pressed = function(){
    var a = document.getElementById('txtImagen');
    if(a.value === "")
    {
        fileLabel.innerHTML = "No ha seleccionado ningun Archivo";
    }
    else
    {
        var theSplit = a.value.split('\\');
        fileLabel.innerHTML = theSplit[theSplit.length-1];
    }
}; 