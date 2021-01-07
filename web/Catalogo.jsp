<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
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

        <link rel="stylesheet" type="text/css" href="css/css2.css">

        <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/Catalogo2.js"></script>
        <title>JSP Page</title>

    </head>

    <body onload="cargar()">

        <%
            String codigo = (String) session.getAttribute("parametroCodigo");

            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
        <!-- header -->
        <header>
            <form action="Servlet_Usu" method="post"> 
                <!-- este boton sirve para obtener el tipo de usuario y utilizarlo en catalogo.js-->
                <input id="txtTipo" name="txtTipo" type="hidden" value="<%=usu.getTipoUsuario()%>">

                <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #17202A;">

                    <a class="navbar-brand" href="#">GO!</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">

                            <li id="lnkCompra" class="nav-item active" >
                                <a class="nav-link" href="RegistrarVenta.jsp">
                                    Carrito <span class="sr-only">(current)</span>
                                </a>
                            </li>

                            <li id="lnkAdm" class="nav-item active" >
                                <a class="nav-link" href="CuentaAdministrador.jsp">
                                    Administrar
                                </a>
                            </li>
                        </ul>

                        <!--<form id="navbusqueda" class="form-inline my-2 my-lg-0" >
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>-->

                        <div class="dropdown" id="navbarSupportedContent" style="padding-right: 15px; padding-left: 100px;">
                            <ul class="navbar-nav mr-auto">

                                <li id="lnkUser" class="nav-item dropdown" >
                                    <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <%=usu.getNombreUsuario()%>, <%=usu.getApellidosUsuario()%>
                                    </button>

                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="MiPerfil.jsp?codigoU=<%=usu.getCodigoUsuario()%>">
                                            Mi cuenta
                                        </a>

                                        <div class="dropdown-divider"></div>

                                        <a onclick="MostrarCloseSesion();" class="dropdown-item" href="Servlet_Usu?accion=logout" >
                                            Cerrar Sesion
                                        </a>
                                    </div>
                                </li>
                                <li id="friniciarsesion" class="nav-item dropdown" >

                                    <a id="lnkLogin" class="nav-link active" href="Login.jsp">
                                        Iniciar Sesion
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <input type="hidden" name="accion" value="logout">
                </nav>
            </form>
        </header>
        <!-- header -->
        <br>
        <!-- main -->
        <div class="main">

            <div class="container mt-4">
                <h1 id="Hcatalogo"> Catalogo de productos </h1>
                <br>
                <div class="row">
                    <%
                        ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();
                        int salto = 0;
                        for (int i = 0; i < lista.size(); i++) {
                            Producto p = lista.get(i);
                    %>

                    <div class="col-sm-4">
                        <div class="card">

                            <div class="card-header text-center"> 
                                <label><%=p.getClaseProducto()%> <%=p.getMarcaProducto()%></label>
                            </div>

                            <div class="card-body text-center"> 
                                <img src="Imagen/<%=p.getImagenP()%>" width="100" height="100">
                                <br>
                                <i style="margin-top: 10px; width: 100%; font-size: 25pt; font-weight: bold; color: red">
                                    $<%=p.getPrecioP()%>
                                </i>
                            </div>

                            <div class="card-footer text-center"> 
                                <p><%=p.getDescripcion()%></p>
                                <div id="contenido">

                                    <input id="BotonModificar" type="button" class="btn btn-info active" name="btnModificar" value="Modificar" onclick="location.href = 'ModificarProducto.jsp?codigoP=<%=p.getCodigoP()%>'">
                                    
                                    <input id="BotonADD" type="button" class="btn btn-warning active font-weight-bold" name="btnADD" value="Agregar al Carrito" onclick="location.href = 'AnadirCarrito.jsp?codigoP=<%=p.getCodigoP()%>&&cliente=<%=cliente%>'">
                                </div>
                            </div>

                        </div>
                        <br>
                    </div>
                    <%
                            salto++;
                            if (salto == 4) {
                    %>
                                
                    <%
                                salto = 0;
                            }
                        }
                    %>

                </div>
            </div>
        </div>
        <!-- main -->
        <br>
        <!-- Footer -->
        <div id="footer">
            <footer  class="text-white text-center text-lg-start">
                <!-- Grid container -->
                <div class="p-3" style="background-color: #17202A;">
                    <!--Grid row-->
                    <div class="row ">
                        <!--Grid column-->
                        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Encuéntranos</h5>

                            <p>
                                <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.827541293311!2d-101.6910783850658!3d21.11944068594932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842bbf7432a6750f%3A0xe78637165ef86a0!2sCoahuila%20108%2C%20Bellavista%2C%2037360%20Le%C3%B3n%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1609376273490!5m2!1ses-419!2smx" 
                                         width="400" height="100" frameborder="0" style="border:0;" 
                                         allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                <br>
                            </p>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Contactos</h5>

                            <ul class="list-unstyled mb-0 ">
                                <li>
                                    <a href="#" class="text-light">+52 (477) 139 7523</a>
                                </li>
                                <li>
                                    <a href="#" class="text-light">+52 (477) 239 8913</a>
                                </li>
                                <li>
                                    <a href="#" class="text-light">(01) 7 18 56 65</a>
                                </li>
                            </ul>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase mb-0">ENLACES  </h5>

                            <ul class="list-unstyled">
                                <li>
                                    <a href="#" class="text-light">Git Hub</a>
                                </li>
                                
                            </ul>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div class=" text-center p-3 bg-dark" style="background-color: rgba(0, 0, 0, 0.2)">
                    © 2020 Copyright:
                    <a class="text-light" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                </div>
                <!-- Copyright -->
            </footer>
        </div>
        <!-- Footer -->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
