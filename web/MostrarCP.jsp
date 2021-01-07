

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<%@page import="java.util.ArrayList" %>
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
        <form id="frmMostrarCabeceraCP" class="text-light" style="background-color: #17202A;">
            <table id="tablaMostrarCabeceraCP">
                <tr>
                    <th >
                        <h1> Clase productos habilitados </h1>
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
        
        <form id="frmMostrarCuerpoCP">
            <table id="tablaMostrarCuerpoCP">
                <tr>
                    <th class="Titulo" style="background-color: #5499C7;">
                        CODIGO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        NOMBRE
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        ESTADO
                    </th>
                    <th colspan="2" class="Titulo" >
                        OPCION
                    </th>
                </tr>    
                
                <%
                    ArrayList<ClaseP> lista = ClaseP_DB.ObtenerCPHabilitados();
                    for(int i=0; i<lista.size(); i++){
                        ClaseP CP = lista.get(i);
                        %>
                        
                <tr>
                    <td>
                        <%=CP.getCodigoCP() %>
                    </td>
                    <td>
                        <%=CP.getNombreCP() %>
                    </td>
                    <td>
                        <%=CP.getEstadoCP() %>
                    </td>
                    <td class="Opcion">
                        <input name="btnModificar" 
                        type="button" value="Modificar" 
                        class="btn-sm text-light" style="background-color: #2471A3;" 
                        onclick="location.href='ModificarCP.jsp?codigoCP=<%=CP.getCodigoCP() %>&&nombreCP=<%=CP.getNombreCP() %>&&estadoCP=<%=CP.getEstadoCP() %>'">
                    </td>
                    <td class="Opcion">
                        <input name="btnEliminar" 
                        value="Eliminar" type="button" 
                        style="background-color: #A93226;" class="btn-sm text-light" 
                        onclick="location.href='Servlet_CP?codigoCP=<%=CP.getCodigoCP() %>&&accion=eliminar'">
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
