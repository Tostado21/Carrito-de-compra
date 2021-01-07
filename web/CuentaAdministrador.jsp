

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="min-height: 100%;
  position: relative;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


        <link type="text/css" rel="stylesheet" href="css/MenuAdmin.css" />

        <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <title>Menú del Administrador</title>
    </head>
    <body style="margin: 0;
  margin-bottom: 40px;">
        <header >
            <!--barra del navegador-->
            <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #17202A;">
                <a class="navbar-brand" href="#">Menu Administrador</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!--apartados-->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">

                        <!--1-->
                        <li class="nav-item  dropdown active">
                            <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Nuevo Registro
                            </button>

                            <div class="dropdown-menu"  aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="RegistrarClaseProducto.jsp">
                                    Clase Producto
                                </a>

                                <a class="dropdown-item" href="RegistrarMarcaProducto.jsp">
                                    Marca Producto
                                </a>

                                <a class="dropdown-item" href="RegistrarProducto.jsp">
                                    Producto
                                </a>
                            </div>
                        </li>
                    </ul>
                    <!--1-->
                    <!--2-->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown active">
                            <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Registros Habilitados
                            </button>

                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="MostrarCP.jsp">
                                    Clase Producto
                                </a>

                                <a class="dropdown-item" href="MostrarMP.jsp">
                                    Marca Producto
                                </a>

                                <a class="dropdown-item" href="MostrarProducto.jsp">
                                    Producto
                                </a>

                                <a class="dropdown-item" href="MostrarUsuario.jsp">
                                    Usuario
                                </a>

                            </div>
                        </li>
                    </ul>
                    <!--2-->
                    <!--3-->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown active">
                            <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Registros Inhabilitados
                            </button>

                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="MostrarCPEliminados.jsp">
                                    Clase Producto
                                </a>

                                <a class="dropdown-item" href="MostrarMPEliminados.jsp">
                                    Marca Producto
                                </a>

                                <a class="dropdown-item" href="MostrarProductosEliminados.jsp">
                                    Producto
                                </a>

                                <a class="dropdown-item" href="MostrarUsuarioEliminado.jsp">
                                    Usuario
                                </a>
                            </div>
                        </li>
                    </ul>
                    <!--3-->
                    <!--4-->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown active">
                            <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Pedidos Realizados
                            </button>

                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="MostrarVenta.jsp">
                                    Ir a Ventas    
                                </a>

                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="btn btn-warning btn-sm" href="Catalogo.jsp">
                                Catalogo
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
        <div class="main">
            <div class="container container-sm p-3 mb-2" id="tablap" >
                <div class="row justify-content-center" style="padding-top: 20%;">
                    <h1 class="text-dark">Menu Administrador</h1>

                </div>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
