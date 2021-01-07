

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Usuario</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="js/alertifyjs/css/alertify.css">
        <link rel="stylesheet" type="text/css" href="js/alertifyjs/css/themes/default.css">

        <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script src="js/alertifyjs/alertify.js" type="text/javascript"></script>

        <script src="js/ResgistrarUsuario.js" type="text/javascript"></script>
        <script src="js/MostrarContraseña2.js" type="text/javascript"></script>
    </head>

    <body>
        <br>
        <!--main-->
        <div class="main">
            <div  class="container container-sm border p-3 mb-2" style="background-color: #FDFEFE;">
                <br>
                <div class="row justify-content-center">
                    <div class="col-sm-9" style="padding-top: 2%; background-color: #F2F3F4; border: solid #5D6D7E;">
                        <div class="row justify-content-center">
                            <h2 style="color:  #17202A;">Resgistrate Ahora!</h2>
                        </div>
                        <hr style="border-top: 2px solid #17202A;">

                        <!--formulario-->
                        <form name="frm" action="Servlet_Usu" method="post" id="frmRegistrarUsuario">
                            
                            <div class="form-group row justify-content-center">
                                <table id="tablaModificarUsuario">
                                    <tr>
                                        <td>
                                            Usuario : 
                                        </td>
                                        <td>
                                            <input name="txtUsuario" id="txtUsuario"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="30" placeholder="Usuario"> 
                                           
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Nombre : 
                                        </td>
                                        <td>
                                            <input name="txtNombres" id="txtNombre"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="50" placeholder="Nombre"> 
                                           
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Apellidos : 
                                        </td>
                                        <td>
                                            <input name="txtApellidos" id="txtApellido"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="50" placeholder="Apellidos"> 
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            DNI :
                                        </td>
                                        <td>    
                                            <input name="txtDni" id="txtDni"
                                            type="text"
                                            class="textBox form-control form-control-sm" style="width: 16em;" 
                                            size="30" maxlength="8" placeholder="DNI"> 
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Email :
                                        </td>
                                        <td>
                                            <input name="txtEmail" id="txtEmail" 
                                            type="email" 
                                            class="textBox form-control form-control-sm" style="width: 16em;" 
                                            size="30" maxlength="50" placeholder="Correo electronico">   
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td >
                                            Comfirmar Email :
                                        </td>
                                        <td>
                                            <input name="txtConfirmarEmail" id="txtConfirEmail" 
                                            type="email" 
                                            class="textBox form-control form-control-sm" style="width: 16em;" 
                                            placeholder="Confirme correo electronico" size="30" maxlength="50">
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td >
                                            Departamento :
                                        </td>
                                        <td>    
                                            <input name="txtDepartamento" id="txtDepartamento"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="20" placeholder="Departamento"> 
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Estado :
                                        </td>
                                        <td>    
                                            <input name="txtDistrito" id="txtDistrito"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;" 
                                            size="30" maxlength="20" placeholder="Estado"> 
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Municipio :
                                        </td>
                                        <td>
                                            <input name="txtProvincia" id="txtProvincia"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;" 
                                            size="30" maxlength="20" placeholder="Municipio"> 
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                    
                                    <tr>
                                        <td >
                                            Direccion 1 :
                                        </td>
                                        <td>
                                            <input name="txtDireccion1" id="txtDireccion1"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="50" placeholder="Dirección 1"> 
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Direccion 2 :
                                        </td>
                                        <td>
                                            <input name="txtDireccion2" id="txtDireccion2"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="50" placeholder="Dirección 2"> 
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Telefono :
                                        </td>
                                        <td>
                                            <input name="txtTelefono" id="txtTelefono"
                                            type="text" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="9" placeholder="Telefono">
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Contraseña :
                                        </td>
                                        <td>
                                            <input name="txtClave" id="txtClave"
                                            type="password" 
                                            class="textBox form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="20" placeholder="Contraseña">
                                        </td>
                                        <td style="width: 20px;"></td>    
                                        <td>
                                            <input type="checkbox" id="mostrar_contrasena"
                                            title="clic para mostrar contraseña"
                                            style="margin-right: 13em;">
                                        </td>
                                    </tr> 
                                    <tr>
                                        <td >
                                            Confirmar Contraseña :
                                        </td>
                                        <td>
                                            <input name="txtConfirmarClave" id="txtConfirClave"
                                            type="password" 
                                            class="form-control form-control-sm" style="width: 16em;"
                                            size="30" maxlength="20" placeholder="Confirmar contraseña">
                                        </td>
                                        <td style="width: 20px;"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" >
                                            <br>
                                            <input name="btnCancelar" id="btnCancelar"
                                            type="button" class="btn btn-danger" value="Cancelar">
                                            
                                            <input name="btnRegistrar" id="btnRegistrar" 
                                               type="button" class="btn btn-warning" value="Registrate">
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <input type="hidden" name="accion" value="registrar">
                        </form>
                        <!--formulario-->
                    </div>
                </div>
                <br>
            </div>
        </div>
        <!--main-->

        

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
