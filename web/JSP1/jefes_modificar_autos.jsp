<%-- 
    Document   : jefes_modificar_autos
    Created on : 31/03/2020, 15:59:36
    Author     : UNAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar Empleado</title>
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
                                <a class="nav-item nav-link" href="#">Catalogo</a>
                                <a class="nav-item nav-link" href="../JSP1/index_jefes.jsp">Mi cuenta</a>
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
                        <div class="card-header"><h3>Modificar un automóvil</h3></div>
                        <div class="card-body">
                            <form id="form1" action="#" method="post" class="needs-validation">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Detalles estéticos del vehículo</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="no_serie">No. serie</label>
                                                <input name="serie" type="text" class="form-control" id="nombre" placeholder="6588661" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="modelo">Modelo</label>
                                                <input name="modelo_auto" type="text" class="form-control" id="apellidopat" placeholder="Camaro" value="">
                                            </div>
                                            <div class="col-4">
                                                <label for="marca">Marca</label>
                                                <input name="marca_auto" type="text" class="form-control" id="apellidomat" placeholder="Chevrolet" value="">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="color">Color</label>
                                                <input name="color" type="text" class="form-control" id="email" placeholder="Blanco" value=""><br>
                                            </div>
                                        </div>

                                        <h4>Precio del vehículo</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Subtotal</label>
                                                <input name="subtotal" type="text" class="form-control" id="email" placeholder="$$$" value="">
                                            </div>
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Total</label>
                                                <input name="total" type="text" class="form-control" id="email" placeholder="$$$" value="">
                                            </div>
                                        </div><br>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Modificar automóvil</button>
                            </form>
                            <a href="jefes_consultar_empleados.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>

