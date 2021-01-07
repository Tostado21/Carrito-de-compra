

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script type="text/javascript" src="js/ModificarMP2.js"></script>
        <title>JSP Page</title>
    </head>
    
    <%
        // Obtenemos las variables del jsp MostrarCP (Dentro del boton modificar)
        String codigo = request.getParameter("codigoMP");
        String nombre = request.getParameter("nombreMP");
    %>
    
    <body onload="cargar()">
        <br>
        <!--main-->
        <div class="main">

            <div  class="container container-sm border p-3 mb-2" style="background-color: #ECF0F1;">
                <br>
                <div class="row justify-content-center">
                    <div class="col-sm-8" style="padding-top: 2%; background-color: #2471A3; border: solid #17202A;">

                        <div class="row justify-content-center">
                            <h2 style="color: #17202A;">Modificar Marcar de Producto</h2>
                        </div>
                        <hr style="border-top: 2px solid #17202A;">

                        <!--formulario-->
                        <form action="Servlet_MP" method="post" name="frm" id="frmModificarMP" >


                            <div class="form-group row justify-content-center">

                                <div style="padding-right: 1%;">
                                    <label style="color: #17202A;">
                                        <h4 style="margin-top: auto;">Codigo: #</h4>
                                    </label>

                                    <input name="txtCodigo" value="<%=codigo %>" type="text" class="btn btn-light btn-sm" readonly="readonly" style="width: 6em;">  

                                </div>

                            </div>

                            <div class="form-group row justify-content-center">

                                <div >
                                    <input name="txtNombre" id="txtNombre" value="<%=nombre %>"
                                    type="text" class="form-control form-control-sm" minlength="10"maxlength="30" placeholder="Ingrese la Clase de producto"
                                    style="width: 16em;">
                                    <style type="text/css">
                                        #txtNombre::placeholder{
                                            color: white;
                                        }
                                    </style>
                                </div>
                            </div>                            

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

                            <input type="hidden" name="accion" value="actualizar">
                        </form>
                        <!--formulario-->
                    </div>
                </div>
                <br>
            </div>
        </div>
        <!--main-->

        <!--<form action="Servlet_MP" method="post" name="frm" id="frmModificarMP">
            <table id="tablaModificarMP">
                <tr>
                    <th colspan="2">
                        <h1> Modificar MP </h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="txtCodigo" value="<%=codigo %>">
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Codigo :
                    </td>
                    <td>
                        <dd> <%=codigo %> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Marca producto :
                    </td>
                    <td>
                        <dd> <input type="text" name="txtNombre" id="txtNombre" value="<%=nombre %>"> </dd>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar">
                        <input type="button" name="btnGuardar" id="btnGuardar" class="button" value="Guardar">
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    <input type="hidden" name="accion" value="actualizar">
        </form>-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body> 
</html>
