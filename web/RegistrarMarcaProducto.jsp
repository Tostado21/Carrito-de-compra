
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script type="text/javascript" src="js/RegistrarMP2.js"></script>
        <title>JSP Page</title>
    </head>
    
    <%
        String Codigo_MP = ObtenerCodigo.CodigoMarcaProducto();
    %>
    
    <body onload="cargar()">
        <br>
        <!--main-->
        <div class="main">

            <div  class="container container-sm border p-3 mb-2" style="background-color: #ECF0F1;">
                <br>
                <div class="row justify-content-center">
                    <div class="col-sm-8" style="padding-top: 2%; background-color: #34495E; border: solid #17202A;">

                        <div class="row justify-content-center">
                            <h2 style="color: #F1C40F;">Nueva Marca de Producto</h2>
                        </div>
                        <hr style="border-top: 2px solid #FDFEFE;">

                        <!--formulario-->
                        <form id="frmRegistrarMP" name="frm" action="Servlet_MP" method="post" >


                            <div class="form-group row justify-content-center">

                                <div style="padding-right: 1%;">
                                    <label style="color: #FDFEFE;">
                                        <h4 style="margin-top: auto;">Codigo: #</h4>
                                    </label>

                                    <input name="txtCodigo" type="text" value="<%=Codigo_MP %>" class="btn btn-light btn-sm" readonly="readonly" style="width: 6em;">  

                                </div>

                            </div>

                            <div class="form-group row justify-content-center">

                                <div style="width: 35%; padding-right: 2%;">
                                    <input id="txtNombre" name="txtNombre"
                                    title="Ejemplo de la Marca del producto: Apple, Microsoft,  Intel, Toyota, ETC." type="text" class="form-control form-control-sm" minlength="10" maxlength="30" placeholder="Ingrese nueva marca de producto ">
                                </div>
                            </div>                            

                            <div class="form-group row justify-content-end">

                                <div style="padding-right: 2%;">
                                    <input id="btnCancelar" name="btnCancelar"
                                           type="button" class="btn btn-danger" value="Cancelar">
                                </div>

                                <div style="padding-right: 2%;">
                                    <input id="btnRegistrar" name="btnRegistrar"
                                           type="button" class="btn btn-success" value="Registrar">
                                </div>

                            </div>

                            <input type="hidden" name="accion" value="insertar">
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
