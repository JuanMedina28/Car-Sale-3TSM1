<%-- 
    Document   : agendar_cita_servicio_mec
    Created on : 2 abr. 2020, 15:17:42
    Author     : asant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Agendar cita</title>
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
                                <a class="nav-item nav-link active" href="../index.html">Inicio</a>
                                <a class="nav-item nav-link" href="../JSP1/index_servicios.jsp">Servicios</a>
                                <a class="nav-item nav-link" href="../JSP1/index_admin.jsp">Mi cuenta</a>
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
                        <div class="card-header"><h3>Agendar cita</h3></div>
                        <div class="card-body">
                            <form id="form1" action="#" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label for="fecha">Fecha</label>
                                                <input name="fecha" type="date" class="form-control" id="fecha" value=""><br>
                                            </div>
                                            <div class="col">
                                                <label for="hora">Hora</label>
                                                <input name="hora" type="text" class="form-control" id="hora" value="">
                                            </div>
                                    <br>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit" >Agendar</button>
                            </form>

                            <a href="index_admin.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -6.5%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>