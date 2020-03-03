<%-- 
    Document   : nuevousuario
    Created on : 27-feb-2020, 12:01:43
    Author     : Juan J. Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bienvenido a nuestra familia!</title>
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
        <link rel="stylesheet" href="../CSS/user-styles.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Anton|Montserrat&display=swap" rel="stylesheet">
    </head>
    <body>
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
                    <div class="card-header">Registrate como nuevo Cliente!</div>
                    <div class="card-body">
                        <form id="form1" action="#" method="post" class="needs-validation">
                            <div class="form-row">
                                <div class="col-md4 mb-3">
                                    <label for="nombre">Nombre</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Jesucristo" value=""><br>
                                    <label for="apellido">Correo Electrónico</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="correo@dominio.com" value=""><br>
                                    <label for="apellido">Teléfono</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Ejemplo: 55-7448-7449" value=""><br>
                                    <label for="apellido">Contraseña</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="********" value=""><br>
                                </div>
                                <div class="col-md4 mb-3">
                                    <label for="nombre">Apellido Paterno</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="" value="">
                                </div>
                                <div class="col-md4 mb-3">
                                    <label for="nombre">Apellido Materno</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="" value="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="invalidCheck">
                                    <label class="form-check--label" for="invalidCheck">Acepto Términos y Condiciones</label>
                                </div>
                            </div>
                            <button class="btn btn-danger" type="submit">Registar</button>
                        </form>
                    </div>
                </div>
                </div>
            </div>
            
        </div>
    </body>
</html>

