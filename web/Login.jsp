

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script src="js/Login2.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>

    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body">
                    <form id="frmLogin" class="form-sign" action="Servlet_Usu" method="post">
                        <div class="form-group text-center">
                            <h3>Login</h3>
                        </div>

                        <div class="form-group">
                            <label>Usuario:</label>
                            <input id="txtUsuario" type="text" name="txtUsuario" placeholder="Ingrese usuario" class="form-control" >
                        </div>

                        <div class="form-group">
                            <label>Password:</label>
                            <input id="txtClave" type="password" name="txtClave" placeholder="Ingrese contraseña" class="form-control">
                        </div>
                        <input id="btnIngresar" type="button" name="btnIngresar" value="Ingresar" class="btn btn-warning btn-block" >
                        <br>
                        <a href="RegistrarCliente.jsp" class="text-info">Registrate aqui</a>
                        <input type="hidden" name="accion" value="login">
                    </form>
                </div>
            </div>
        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
