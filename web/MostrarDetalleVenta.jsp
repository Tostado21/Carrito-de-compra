

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

        <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
    </head>
    
    <%
        String CodigoVenta = (String)session.getAttribute("CodigoVenta");
        String CodigoCliente = (String)session.getAttribute("CodigoCliente");
        String Cliente = (String)session.getAttribute("Cliente");
        String Fecha = (String)session.getAttribute("FechaVenta");
        String Importe = (String)session.getAttribute("Importe");
    %>
    
    <body>
        <!--header-->
        <header >
            <!--barra del navegador-->
            <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #17202A;">
                <a class="navbar-brand" href="MostrarVenta.jsp">Menú Administrador</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!--apartados-->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item ">
                            
                            <a href="MostrarVenta.jsp"  class="btn btn-warning btn-sm">
                                Regresar
                            </a>
                        </li>
                    </ul>
                    
                </div>
                <!--apartados-->
            </nav>
            <!--barra del navegador-->

        </header>
        <!--header-->
        <br>
        <!--main-->
        <div class="main">
            <div class="container container-sm p-3 mb-2">
                <div class="row justify-content-center">
                    <div class="d-flex" style="width: 40em;">
                        <div class="col-lg-10 parte01">
                            <div class="card">
                                <div class="card-body " style="background-color: #D5F5E3;">
                                    <form >
                                        <br>
                                        <table id="tablaMostrarDatosCliente">
                                            <%
                                                Usuario usu = Usuario_DB.listarUsuarioPorCodigo(CodigoCliente);
                                            %>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Fecha : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=Fecha %> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Codigo cliente : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getCodigoUsuario() %> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Cliente : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getNombreUsuario() %>, <%=usu.getApellidosUsuario() %> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Dni : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getDniUsuario() %> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Email : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getEmailUsuario()%> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Departamento : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getDepartamentoUsuario()%> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Provincia : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getProvinciaUsuario()%> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Distrito : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getDistritoUsuario()%> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Domicilio1 : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getDireccion1Usuario()%> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Domicilio2 : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getDireccion2Usuario()%> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="primeraColumna">
                                                    <dd> Telefono : </dd>
                                                </td>
                                                <td>
                                                    <dd> <%=usu.getTelefonoUsuario()%> </dd>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <br>
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <br>
                <div class="row justify-content-center">
                    <div class="d-flex">
                        <div class="col-mb-9">
                            <div class="card parte02">
                                <div class="card-body">
                                    <!--formulario-->                   
                                    <form action="Servlet_Prod" method="post">

                                        <div class="card-body">
                                            <div class="d-flex mr-auto col-sm-6">
                                                <h3>Venta: <%=CodigoVenta %></h3>
                                            </div>
                                            <br>

                                            <div class="card-header">
                                                <div class="row" >
                                                    <div class="col-lg-4 " style="height: 2px:">
                                                        <label>Cliente:</label>
                                                    </div>
                                                    <div class="col-sm-8 mr-auto d-flex">
                                                        <label>
                                                            <%=Cliente %>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr class="text-center">
                                                        <th>PRODUCTO</th>
                                                        <th>$</th>
                                                        <th>CANTIDAD</th>
                                                        <th>DESCUENTO</th>
                                                        <th>SUBTOTAL</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        DecimalFormat df = new DecimalFormat("0.00");
                                                        DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                                                        dfs.setDecimalSeparator('.');
                                                        df.setDecimalFormatSymbols(dfs);
                                                        
                                                        ArrayList<DetalleVenta> lista = DetalleVenta_DB.obtenerDetalleVenta(CodigoVenta); 
                                                        for(int i=0; i<lista.size(); i++){
                                                            DetalleVenta dv = lista.get(i);
                                                            %>
                                                                <tr>
                                                                    <td >
                                                                        <%=dv.getNombreProducto() %>
                                                                    </td>
                                                                    <td >
                                                                        <%=df.format(dv.getPrecio())%>        
                                                                    </td>
                                                                    <td >
                                                                        <%=df.format(dv.getCantidad())%>
                                                                    </td>
                                                                    <td >
                                                                        <%=df.format(dv.getDescuento()) %>
                                                                    </td>
                                                                    <td > 
                                                                        <%=df.format(dv.getSubTotal()) %> 
                                                                    </td>
                                                                </tr>
                                                            <%
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="card-footer" >
                                            <div class="row">
                                                
                                                <div class="col-sm-6 ml-auto d-flex">
                                                    <label class=" col-sm-6 text-right mt-2">Total</label>
                                                    <input value="<%=df.format(Double.parseDouble(Importe)) %>" 
                                                            type="text" 
                                                            class="form-control text-center font-weight-bold" style="font-size: 18px;" readonly="readonly">
                                                                                                          
                                                </div>
                                            </div>                        
                                        </div>
                                        
                                    </form>
                                    <!--formulario-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--main-->
        

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
