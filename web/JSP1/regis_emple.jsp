<%-- 
    Document   : regis_emple
    Created on : 04/03/2020, 18:10:44
    Author     : UNAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Empleado</title>
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
                    <div class="card-header">Registrar un empleado</div>
                    <div class="card-body">
                        <form id="form1" action="#" method="post" class="needs-validation">
                            <div class="form-row">
                                <div class="col-md4 mb-3">
                                    <label for="nombre">Nombre</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Cristian" value=""><br>
                                    <label for="correo">Correo Electrónico</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="correo@dominio.com" value=""><br>
                                    <label for="direccion">Dirección</label>
                                    <input name="direccion" type="text" class="form-control" id="dirreccion" placeholder="" value=""><br>
                                    <div class="col-md4 mb-3">
                                    <label for="puesto">Puesto</label>
                                    <input name="puesto" type="text" class="form-control" id="pass" placeholder="" value=""><br>
                                    </div>
                                    <label for="sueldo">Sueldo</label>
                                    <input name="sueldo" type="text" class="form-control" id="pass" placeholder="" value=""><br>
                                </div>
                                <div class="col-md4 mb-3">
                                    <label for="apellidopat">Apellido Paterno</label>
                                    <input name="apellidopat" type="text" class="form-control" id="apellidopat" placeholder="Ej:Rodriguez" value="">
                                </div>
                                <div class="col-md4 mb-3">
                                    <label for="apellidomat">Apellido Materno</label>
                                    <input name="apellidomat" type="text" class="form-control" id="apellidomat" placeholder="Ej:Vazquez" value="">
                                </div>
                            </div>
                            <button class="btn btn-danger" type="submit">Registar empleado</button>
                        </form>
                    </div>
                </div>
                </div>
            </div>
            
        </div>
    </body>
</html>
