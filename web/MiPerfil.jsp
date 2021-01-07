

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="js/alertifyjs/css/alertify.css">
        <link rel="stylesheet" type="text/css" href="js/alertifyjs/css/themes/default.css">

        <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script src="js/alertifyjs/alertify.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/MiPerfil2.js"></script>
        <title>JSP Page</title>
    </head>
    
    <%
        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(request.getParameter("codigoU"));
    %>
    
    <body>
        <br>
        <!--main-->
        <div class="main">
            <div  class="container container-sm border p-3 mb-2" style="background-color: #FDFEFE;">
                <br>
                <div class="row justify-content-center">
                    <div class="col-sm-9" style="padding-top: 2%; background-color: #F2F3F4; border: solid #5D6D7E;">
                        <div class="row justify-content-center">
                            <h2 style="color:  #17202A;">Mi cuenta</h2>
                        </div>
                        <hr style="border-top: 2px solid #17202A;">

                        <!--formulario-->
                        <form action="Servlet_Usu" method="post" id="frmModificarUsuario">
                            <input type="hidden" name="txtCodigo" value="<%=usu.getCodigoUsuario() %>"> 

                            <div class="form-group row justify-content-center">
                                <table id="tablaModificarUsuario">
                                                        

                                    <tr>
                                        <td>
                                            Nombre : 
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getNombreUsuario() %> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtNombre" id="txtNombre"
                                                type="text" value="<%=usu.getNombreUsuario() %>"
                                                class="form-control form-control-sm" style="width: 16em;"
                                                size="30" maxlength="50" placeholder="Nombre"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Apellidos : 
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getApellidosUsuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtApellidos" id="txtApellido" 
                                                type="text" value="<%=usu.getApellidosUsuario() %>"
                                                class="form-control form-control-sm" style="width: 16em;"
                                                size="30" maxlength="50" placeholder="Apellidos"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            DNI :
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getDniUsuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtDni" id="txtDni" 
                                                type="text" value="<%=usu.getDniUsuario() %>" 
                                                class="form-control form-control-sm" style="width: 16em;" 
                                                size="30" maxlength="8" placeholder="DNI"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Email :
                                        </td>
                                        <td>
                                            <dd> <%=usu.getEmailUsuario()%> </dd>
                                        </td>
                                        <td style="width: 20px;"></td>
                                        <td>
                                            <dd> 
                                                <a href="ModificarEmail.jsp?codigoU=<%=usu.getCodigoUsuario() %>" 
                                                    class="Enlace">
                                                    Cambiar email
                                                </a> 
                                            </dd>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Contraseña :
                                        </td>
                                        <td>
                                            <dd> ********** </dd>
                                        </td>
                                        <td style="width: 20px;"></td>
                                        <td>
                                            <dd> 
                                                <a href="ModificarContraseña.jsp?codigoU=<%=usu.getCodigoUsuario() %>" class="Enlace">
                                                    Cambiar contraseña
                                                </a> 
                                            </dd>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Departamento :
                                        </td>
                                        <td>
                                            <dd  class="soloTexto"> <%=usu.getDepartamentoUsuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtDepartamento" id="txtDepartamento"
                                                type="text" value="<%=usu.getDepartamentoUsuario() %>"
                                                class="form-control form-control-sm" style="width: 16em;"
                                                size="30" maxlength="20" placeholder="Departamento"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Municipio :
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getProvinciaUsuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtProvincia" id="txtProvincia"
                                                type="text" value="<%=usu.getProvinciaUsuario() %>"
                                                class="form-control form-control-sm" style="width: 16em;" 
                                                size="30" maxlength="20" placeholder="Municipio"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Estado :
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getDistritoUsuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtDistrito" id="txtDistrito"
                                                type="text" value="<%=usu.getDistritoUsuario() %>"
                                                class="form-control form-control-sm" style="width: 16em;" 
                                                size="30" maxlength="20" placeholder="Estado"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Direccion 1 :
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getDireccion1Usuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtDireccion1" id="txtDireccion1" 
                                                type="text" value="<%=usu.getDireccion1Usuario() %>" 
                                                class="form-control form-control-sm" style="width: 16em;"
                                                size="30" maxlength="50" placeholder="Dirección 1"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Direccion 2 :
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getDireccion2Usuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtDireccion2" id="txtDireccion2"
                                                type="text" value="<%=usu.getDireccion2Usuario() %>"
                                                class="form-control form-control-sm" style="width: 16em;"
                                                size="30" maxlength="50" placeholder="Dirección 2"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Telefono :
                                        </td>
                                        <td>
                                            <dd class="soloTexto"> <%=usu.getTelefonoUsuario()%> </dd>
                                            <dd class="campoOculto"> 
                                                <input name="txtTelefono" id="txtTelefono"
                                                type="text" value="<%=usu.getTelefonoUsuario() %>"
                                                class="form-control form-control-sm" style="width: 16em;"
                                                size="30" maxlength="9" placeholder="Telefono"> 
                                            </dd>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        
                                    </tr>
                                    <tr >
                                        <td colspan="3" >
                                            <br>
                                            <input name="btnCancelar" id="btnCancelar"
                                            type="button" class="btn btn-danger" value="Cancelar">
                                            
                                            <input name="btnModificar" id="btnModificar" 
                                               type="button" class="btn btn-success" value="Modificar">
                                            
                                            
                                            <input name="btnGuardar" id="btnGuardar"
                                                   type="button" class="campoOculto btn btn-primary" value="Guardar">
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <input type="hidden" name="accion" value="modificarUsuario">
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
