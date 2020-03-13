<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Cliente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/css/mdb.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../CSS/regisemcss.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Anton|Montserrat&display=swap" rel="stylesheet">
    </head>
    <body>

        <%            
            String nombre = request.getParameter("nombre");
            String ap_pat = request.getParameter("apellidopat");
            String ap_mat = request.getParameter("apellidomat");
            String email = request.getParameter("email");
            String password = request.getParameter("confirm_password");
            String telefono = request.getParameter("telefono");

            if (nombre != null) {
                String qry = "INSERT INTO usuario(nombre, apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono) values ('" + nombre + "','" + ap_pat + "','" + ap_mat + "','" + email + "','" + password + "','" + telefono + "')";
                sql.executeUpdate(qry);

            }


        %>
        <header class="header" style="height: 70px">
            <div class="bg-dark">
                <div>
                    <nav class="navbar navbar-expand-lg navbar-dark gris scrolling-navbar fixed-top">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class=" navg navbar-nav w-100 justify-content-center " >
                                <a class="nav-item nav-link active" href="../index.html">inicio</a>
                                <a class="nav-item nav-link" href="../HTML/servicios.html">Servicios</a>
                                <a class="nav-item nav-link" href="../JSP1/inicio.jsp">Iniciar Sesión</a>
                                <a class="nav-item nav-link" href="#">Contacto</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div style="height: 30px"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card shadow-lg p-3 mb-5 bg-white">
                        <div class="card-header"><h3>Registrar cliente</h3></div>
                        <div class="card-body">
                            <form name="form1" id="form1" action="#" method="post" class="needs-validation">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos personales</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label for="nombre">Nombre(s)</label>
                                                <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Ej.Cristian" value=""><br>
                                            </div>
                                            <div class="col">
                                                <label for="apellidopat">Apellido Paterno</label>
                                                <input name="apellidopat" type="text" class="form-control" id="apellidopat" placeholder="Ej:Rodriguez" value="">
                                            </div>
                                            <div class="col">
                                                <label for="apellidomat">Apellido Materno</label>
                                                <input name="apellidomat" type="text" class="form-control" id="apellidomat" placeholder="Ej:Vazquez" value="">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="nombre">Telefono</label>
                                                <input name="telefono" type="text" class="form-control" id="nombre" placeholder="Ej:55-3463-4867" value=""><br>
                                            </div>
                                        </div>
                                        <h4>Datos de la cuenta</h4>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="nombre">Correo</label>
                                                <input name="email" type="text" class="form-control" id="nombre" placeholder="correo@dominio.com" value=""><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="correo">Contraseña</label>
                                                <input name="password" type="pass" class="form-control" id="email" placeholder="************" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="correo">Confirmar contraseña</label>
                                                <input name="confirm_password" type="password" class="form-control" id="email" placeholder="************" value=""><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit" onclick= "validar();">Registar cliente</button>
                            </form>
                            <a href="index_admin.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
     
    </body>
</html>
