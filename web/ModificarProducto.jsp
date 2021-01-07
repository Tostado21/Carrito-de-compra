

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>

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
        <script type="text/javascript" src="js/ModificarProd2.js"></script>
        <title>JSP Page</title>
    </head>
    
    <%
        Producto p = Producto_DB.listarProductoPorCodigo(request.getParameter("codigoP"));
    %>
    
    <body onload="cargar()">
        <br>
        <!--main-->
        <div class="main">

            <div  class="container container-sm border p-3 mb-2" style="background-color: #ECF0F1;">
                <br>
                <div class="row justify-content-center">
                    <div class="col-sm-8" style="padding-top: 2%; background-color: #2980B9; border: solid #17202A;">

                        <div class="row justify-content-center">
                            <h2 style="color: #17202A;">Modificar Producto</h2>
                        </div>
                        <hr style="border-top: 2px solid #17202A;">

                        <!--formulario-->
                        <form name="frm" action="Servlet_Prod" method="post" id="frmModificarProd">


                            <div class="form-group row justify-content-center">

                                <div style="padding-right: 1%;">
                                    <label style="color: #17202A;">
                                        <h4 style="margin-top: auto;">Codigo: #</h4>
                                    </label>
                                </div>
                                <div>
                                    <input name="txtCodigo" value="<%=p.getCodigoP() %>"
                                    type="text" class="btn btn-light btn-sm" readonly="readonly" style="width: 6em;"> 
                                </div>


                            </div>

                            <!--1-->
                            <div class="form-group row justify-content-center">
                                <div >
                                    <input name="txtNombreCP" id="txtNombreCP" value="<%=p.getClaseProducto() %>" maxlength="30" title="Clase del Producto"
                                    type="text" class="form-control form-control-sm" 
                                    placeholder="Ingrese Clase de producto " style="width: 16em;">
                                </div>
                            </div>
                            <!--1-->

                            <!--2-->
                            <div class="form-group row justify-content-center">
                                <div>
                                    <input name="txtNombreMP" id="txtNombreMP" value="<%=p.getMarcaProducto() %>" maxlength="30" title="Marca del Producto"
                                    type="text" class="form-control form-control-sm"
                                    placeholder="Ingrese Marca de producto " style="width: 16em;">
                                </div>
                            </div>
                            <!--2-->
                            <!--3-->
                            <div class="form-group row justify-content-center">
                                <div>
                                    <input name="txtDescripcionP" id="txtDescripcionP" value="<%=p.getDescripcion() %>" maxlength="30" title="Descripcion del producto"
                                    type="text" class="form-control form-control-sm" 
                                    placeholder="Descripcion del producto" style="width: 16em;">
                                </div>
                            </div>
                            <!--3-->
                            <!--4-->
                            <div class="form-group row justify-content-center">
                                <div>
                                    <input name="txtPrecioP" id="txtPrecioP" value="<%=p.getPrecioP() %>"
                                    type="text" class="form-control form-control-sm" maxlength="30"
                                    title="Precio del producto" placeholder="$" style="width: 100px;">
                                </div>
                            </div>
                            <!--4-->
                            <!--5-->
                            <div class="form-group row justify-content-center">

                                <div class="row justify-content-center">
                                    <div>
                                        <input name="selected" value="SelectImagenActual" id="SelectImagenActual"
                                        type="radio" checked="checked">

                                        <input name="txtImagen" id="txtImagen" value="<%=p.getImagenP() %>" size="30" maxlength="30" type="text" readonly="readonly" 
                                        title="Nombre del archivo" 
                                        class="btn btn-light btn-sm" style="width: 16em;">
                                        
                                    </div>
                                    
                                </div>

                            </div>
                            <!--5-->
                            <!--6-->
                            <div class="form-group row justify-content-center">

                                <div class="row justify-content-center">
                                    <div>
                                        <input name="selected" value="SelectModificarImagen" id="SelectModificarImagen"
                                        type="radio"> 
                                        <input name="txtModificarImagen" id="txtModificarImagen"
                                        size="30" type="file" class="form-control-sm" style="background-color: #2980B9;">

                                    </div>
                                    
                                </div>

                            </div>
                            <!--6-->
                            <!--botones cancelar y registrar-->
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

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
