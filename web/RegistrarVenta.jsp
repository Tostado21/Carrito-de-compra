

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page import="java.text.*" %>
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
        <script type="text/javascript" src="js/RegistrarVenta2.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String codigoVenta = ObtenerCodigo.CodigoVenta();
            String cliente = (String)session.getAttribute("parametroCliente");
        %>
        <header >
            <!--barra del navegador-->
            <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #17202A;">
                <a class="navbar-brand" href="Catalogo.jsp">GO!</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!--apartados-->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item ">
                            
                            <a href="Catalogo.jsp" class="btn btn-warning btn-sm">
                                Seguir comprando
                            </a>
                        </li>
                    </ul>
                    
                </div>
                <!--apartados-->
            </nav>
            <!--barra del navegador-->

        </header>
        <!-- header -->

        <br>

        <!--main-->
        <div class="main">
            <!--container container-sm border p-3 mb-2-->
            <div  class="container container-sm p-3 mb-2">
                <br>
                <!--row justify-content-center-->
                <div class="row justify-content-center">
                    
                    <div class="d-flex">
                
                        <div class="col-mb-9">
                            <div class="card parte02"> 
                                <!--formulario-->                   
                                <form action="Servlet_Venta" method="post" id="frmRegistrarVenta">

                                    <input type="hidden" name="txtCodigoV" value="<%=codigoVenta %>">

                                    <div class="card-body">
                                        <div class="d-flex ml-auto col-sm-6">
                                            <h3>Carrito de Compras</h3>
                                        </div>
                                        <br>

                                        <div class="card-header">
                                            <div class="row" >
                                                <div class="col-lg-4 " style="height: 2px:">
                                                    <label>Cliente:</label>
                                                </div>
                                                <div class="col-sm-8 mr-auto d-flex">
                                                    <label>
                                                        <%=cliente %>
                                                        <input name="txtCliente" value="<%=cliente %>" 
                                                        type="hidden" 
                                                        size="50" readonly="readonly">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <table class="table table-hover">
                                            <thead>
                                                <tr class="text-center">
                                                    <th>N°</th>
                                                    <th>PRODUCTO</th>
                                                    <th>$</th>
                                                    <th>CANTIDAD</th>
                                                    <th>DESCUENTO</th>
                                                    <th>SUBTOTAL</th>
                                                    <th>OPCION</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    DecimalFormat df = new DecimalFormat("0.00");
                                                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                                                    dfs.setDecimalSeparator('.');
                                                    df.setDecimalFormatSymbols(dfs);
                                                    
                                                    double total = 0;
                                                    String numero = "null";
                                                    ArrayList<DetalleVenta> lista = (ArrayList<DetalleVenta>)session.getAttribute("carrito");
                                                    
                                                    if(lista != null){
                                                        for(DetalleVenta dv:lista){
                                                %>
                                                            
                                                        <tr class="text-center">
                                                            <td >
                                                                <%=dv.getNumero() %>

                                                            </td>
                                                            <td >
                                                                <%=dv.getNombreProducto() %>
                                                                <input name="nombreProd" 
                                                                type="hidden" 
                                                                value="<%=dv.getNombreProducto() %>">
                                                            </td>
                                                            <td >
                                                                <%=df.format(dv.getPrecio())%>
                                                                <input name="precioProd" 
                                                                type="hidden" 
                                                                value="<%=dv.getPrecio()%>">
                                                            </td>
                                                            <td >
                                                                <%=dv.getCantidad()%>
                                                                <input name="cantidadProd" 
                                                                type="hidden" 
                                                                value="<%=dv.getCantidad()%>">
                                                            </td>
                                                            <td >
                                                                <%=df.format(dv.getDescuento())%>
                                                                <input name="descuentoProd" 
                                                                type="hidden" 
                                                                value="<%=dv.getDescuento()%>">
                                                            </td>
                                                            <td > 
                                                                <%=df.format(dv.getSubTotal()) %>
                                                                <input name="subTotalProd" 
                                                                type="hidden" 
                                                                value="<%=dv.getSubTotal()%>">
                                                            </td> 
                                                            <td whidh="100">
                                                                <input name="btnEliminar" id="btnEliminar" 
                                                                type="button" value="Eliminar" 
                                                                class="btn btn-danger btn-sm"
                                                                onclick="location.href='Servlet_Venta?numero=<%=dv.getNumero() %>&&accion=quitar'">
                                                            </td>
                                                        </tr>
                                                <%
                                                            numero = dv.getNumero();
                                                            total = total + dv.getSubTotal();
                                                        }
                                                    }
                                                %>
                                                <input class="valores" 
                                                type="hidden" value="<%=numero %>">
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer" >
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <input name="btnRegistrar" id="comprar"
                                                type="button" 
                                                class="btn btn-success"
                                                value="Comprar">
                                            </div>
                                            <div class="col-sm-6 ml-auto d-flex">
                                                <label class=" col-sm-6 text-right mt-2">Total a Pagar</label>

                                                <input value="<%=String.valueOf(df.format(total)) %>" 
                                                type="text" 
                                                class="form-control text-center font-weight-bold" style="font-size: 18px;" readonly="readonly">
                                                
                                                <input type="hidden" name="txtTotal" value="<%=String.valueOf(df.format(total)) %>" readonly="readonly">                                                      
                                            </div>
                                        </div>                        
                                    </div>
                                    <input type="hidden" name="accion" value="RegistrarVenta">
                                </form>
                                <!--formulario-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--row justify-content-center-->
            </div>
            <!--container container-sm border p-3 mb-2-->
        </div>
        <!--main-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
