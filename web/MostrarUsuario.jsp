

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
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
        <form id="frmMostrarCabeceraUsuario" class="text-light" style="background-color: #17202A;">
            <table id="tablaMostrarCabeceraUsuario">
                <tr>
                    <th>
                        <h1> Usuarios habilitados </h1>
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
        
        <form id="frmMostrarCuerpoUsuario">
            <table id="tablaMostrarCuerpoUsuario">
                <tr>
                    <th class="Titulo" style="background-color: #5499C7;">
                        CODIGO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        NOMBRE
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        APELLIDO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        DNI
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        CORREO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        TELEFONO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        USUARIO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        TIPO
                    </th>
                    <th class="Titulo" style="background-color: #5499C7;">
                        ESTADO
                    </th>
                    <th class="Titulo">
                        OPCION
                    </th>
                </tr>    
                
                <%
                    ArrayList<Usuario> lista = Usuario_DB.MostrarUsuarioHabilitado();
                    for(int i=0; i<lista.size(); i++){
                        Usuario usu = lista.get(i);
                %>
                        
                <tr>
                    <td>
                        <%=usu.getCodigoUsuario() %>
                    </td>
                    <td>
                        <%=usu.getNombreUsuario() %>
                    </td>
                    <td>
                        <%=usu.getApellidosUsuario() %>
                    </td>
                    <td>
                        <%=usu.getDniUsuario()%>
                    </td>
                    <td>
                        <%=usu.getEmailUsuario()%>
                    </td>
                    <td>
                        <%=usu.getTelefonoUsuario()%>
                    </td>
                    <td>
                        <%=usu.getIdUsuario()%>
                    </td>
                    <td>
                        <%=usu.getTipoUsuario()%>
                    </td>
                    <td>
                        <%=usu.getEstadoUsuario()%>
                    </td>
                    <td class="Opcion">
                        <input name="btnEliminar"
                        type="button" value="Eliminar"
                        style="background-color: #A93226;" class="btn-sm text-light" onclick="location.href='Servlet_Usu?codigoU=<%=usu.getCodigoUsuario()%>&&accion=eliminar'">
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
