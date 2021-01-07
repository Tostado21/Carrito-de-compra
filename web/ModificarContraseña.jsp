

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" 
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" 
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="js/alertifyjs/css/alertify.css">
        <link rel="stylesheet" type="text/css" href="js/alertifyjs/css/themes/default.css">


        <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script src="js/alertifyjs/alertify.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/CambiarPass2.js"></script>
        <script type="text/javascript" src="js/CambiarPass3.js"></script>
        <title>JSP Page</title>
    </head>
    
    <%
        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(request.getParameter("codigoU"));
    %>

    
    <body onload="cargar()">
        <br>
        <!--main-->
        <div class="main">

            <div  class="container container-sm border p-3 mb-2" style="background-color: #ECF0F1;">
                <br>
                <div class="row justify-content-center">
                    <div class="col-sm-8" style="padding-top: 2%; background-color: #17202A; border: solid #F1C40F;">

                        <div class="row justify-content-center">
                            <h2 style="color: #F1C40F;">Cambiar Contraseña</h2>
                        </div>
                        <hr style="border-top: 2px solid #FDFEFE;">

                        <!--formulario-->
                        <form  action="Servlet_Usu" method="post" id="frmModificarClave">
                            <input type="hidden" name="txtCodigo" value="<%=usu.getCodigoUsuario() %>">
                            <input type="hidden" name="txtCaracter" value="<%=usu.getClaveUsuario() %>">
                            <!--1-->
                            <div class="form-group row justify-content-center">

                                <div >
                                    <input name="txtClaveActual" id="txtClaveActual"
                                    title="Debe ingresar La contraseña Actual"
                                    type="password" class="form-control form-control-sm"
                                    minlength="10"maxlength="20" placeholder="Contraseña actual"
                                    style="width: 16em;">
                                </div>
                            </div>                          
                            <!--1-->
                            <!--2-->
                            <div class="form-group row justify-content-center">

                                <div >
                                    <input name="txtClave" id="txtClave"
                                    title="Debe ingresar una nueva contraseña" 
                                    type="password" class="form-control form-control-sm"
                                    minlength="10"maxlength="20" placeholder="Nueva Contraseña"
                                    style="width: 16em;">
                                </div>
                            </div>                          
                            <!--2-->
                            <!--3-->
                            <div class="form-group row justify-content-center">

                                <div >
                                    <input name="txtConfirmarClave" id="txtConfirClave" 
                                    type="password" class="form-control form-control-sm"
                                    minlength="10"maxlength="20" placeholder="Confirmar nueva contraseña"
                                    style="width: 16em;">
                                </div>
                            </div>                          
                            <!--3-->
                            <!--4-->
                            <div class="row justify-content-center">
                                    
                                <input type="checkbox" id="mostrar_contrasena"
                                title="clic para mostrar contraseña"
                                style="margin-right: 13em;">
                                    
                            </div>                          
                            <!--4-->
                            <div class="form-group row justify-content-end">

                                <div style="padding-right: 2%;">
                                    <input name="btnCancelar" id="btnCancelar"
                                           type="button" class="btn btn-danger" value="Cancelar">
                                </div>

                                <div style="padding-right: 4%;">
                                    <input name="btnGuardar" id="btnGuardar"
                                           type="button" class="btn btn-success" value="Guardar">
                                </div>

                            </div>

                            <input type="hidden" name="accion" value="modificarClave">
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

        <style type="text/css">
            #txtClaveActual::placeholder{
                color: #17202A;
            }
            #txtClave::placeholder{
                color: #17202A;
            }
            #txtConfirClave::placeholder{
                color: #17202A;
            }
        </style>
    </body>
</html>
