

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
        
        <form id="frmMostrarCabeceraMP" class="text-light" style="background-color: #17202A;">
            <table id="tablaMostrarCabeceraMP">
                <tr>
                    <th>
                        <h1> Marca productos habilitados </h1>
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
        
        <form id="frmMostrarCuerpoMP">
            <table id="tablaMostrarCuerpoMP">
                
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
                    <th colspan="2" class="Titulo">
                        OPCION
                    </th>
                </tr>
                
                <%
                    ArrayList<MarcaP> lista = MarcaP_DB.obtenerMPHabilitados();
                    for(int i=0; i<lista.size(); i++){
                        MarcaP MP = lista.get(i);
                %>

                <tr>
                    <td>
                        <%=MP.getCodigoMP() %>
                    </td>
                    <td>
                        <%=MP.getNombreMP() %>
                    </td>
                    <td>
                        <%=MP.getEstadoMP() %>
                    </td>
                    <td class="Opcion">
                        <input name="btnModificar"
                        type="button" class="btn-sm text-light" style="background-color: #2471A3;" 
                        value="Modificar" onclick="location.href='ModificarMP.jsp?codigoMP=<%=MP.getCodigoMP() %>&&nombreMP=<%=MP.getNombreMP() %>&&estadoMP=<%=MP.getEstadoMP() %>'">
                    </td>
                    <td class="Opcion">
                        <input name="btnEliminar" 
                        type="button" value="Eliminar" 
                        style="background-color: #A93226;" class="btn-sm text-light" onclick="location.href='Servlet_MP?codigoMP=<%=MP.getCodigoMP() %>&&accion=eliminar'">
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
