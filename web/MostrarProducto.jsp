

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
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

        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
    </head>
    
    <body>
        
        <form id="frmMostrarCabeceraProd" class="text-light" style="background-color: #17202A;">
            <table id="tablaMostrarCabeceraProd">
                <tr>
                    <th>
                        <h1> Productos habilitados </h1>
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="btn btn-warning btn-sm">
                            Pagina principal
                        </a>
                    </td>
                </tr>
            </table>
        </form>
        
        <hr>
        
        <form id="frmMostrarCuerpoProd">
            <table id="tablaMostrarCuerpoProd">
                <tr>
                    <th class="Titulo" style="background-color: #5499C7;">
                        CODIGO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        CLASE
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        MARCA
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        DESCRIPCION
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        PRECIO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        IMAGEN
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        ESTADO
                    </th>
                    <th colspan="2" class="Titulo">
                        OPCION
                    </th>
                </tr>
                
                <%
                    ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();
                    for(int i=0; i<lista.size(); i++){
                        Producto P = lista.get(i);
                %>
                    
                <tr>
                    <td>
                        <%=P.getCodigoP() %>
                    </td>
                    <td>
                        <%=P.getClaseProducto() %>
                    </td>
                    <td>
                        <%=P.getMarcaProducto() %>
                    </td>
                    <td>
                        <%=P.getDescripcion() %>
                    </td>
                    <td>
                        <%=P.getPrecioP() %>
                    </td>
                    <td>
                        <%=P.getImagenP() %>
                    </td>
                    <td>
                        <%=P.getEstadoP() %>
                    </td>
                    <td class="Opcion">
                        <input name="btnModificar" 
                        type="button" value="Modificar" 
                        class="btn-sm text-light" style="background-color: #2471A3;" onclick="location.href='ModificarProducto.jsp?codigoP=<%=P.getCodigoP() %>'"> 
                    </td>
                    <td class="Opcion">
                        <input name="btnEliminar"
                        type="button" value="Eliminar" 
                        class="btn-sm text-light" style="background-color: #A93226;" onclick="location.href='Servlet_Prod?codigoP=<%=P.getCodigoP() %>&&accion=eliminar'">
                    </td>
                </tr>
                
                <%
                    }
                %>
    
            </table>
        </form>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
