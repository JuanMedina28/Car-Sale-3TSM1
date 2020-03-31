<%-- 
    Document   : jefes_consultar_autos
    Created on : 31/03/2020, 15:46:45
    Author     : UNAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="Spanish">
    <head>
        <title>Consultar Empleado</title>
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
        <link rel="stylesheet" href="../CSS/admin.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Anton|Montserrat&display=swap" rel="stylesheet">
    </head>
    <body>
        <header class="header">
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
            </div><br><br><br><br>
            <div class="alert alert-primary" role="alert" style="width: 50%; margin-left: 25%;"><h4 style="margin-left: 15%;">Buscar por campo:</h4>
                <form action="jefes_consultar_empleados.jsp" method="post">
                    <select class="form-control form-control-sm" style="width: 30%; margin-left: 15%; margin-top: 2%;" name="filtro">
                        <option selected>Elige una opcion</option>
                        <option value="sueldo">Marca</option>
                        <option value="correo">Modelo</option>
                        <option value="puesto">Color</option>
                    </select>
                    <button type="button" class="btn btn-outline-primary" style="margin-left: 50%; margin-top: -6%; height: 40px;">Buscar</button>
                </form>
                <a href="index_jefes.jsp"><button type="button" class="btn btn-dark" style="margin-left: 70%; margin-top: -12%; height: 40px;">Regresar</button></a>
            </div>
            <div style="display: inline-table">
                <table class="table table-hover table-dark" style="position: absolute; width: 85%; margin-left: 7.5%;">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th colspan="6" style="font-size: 20px; text-align: center">Datos estéticos del auto</th>
                            
                            <th colspan="5" style="font-size: 20px; text-align: center">Precio</th>
                        </tr>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">No. serie</th>
                            <th></th>
                            <th scope="col">Modelo</th>
                            <th></th>
                            <th scope="col">Marca</th>
                            <th></th>
                            <th scope="col">Color</th>
                            <th></th>
                            <th scope="col">Subtotal</th>
                            <th></th>
                            <th scope="col">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>5457247</td>
                            <td></td>
                            <td>Spark-2018</td>
                            <td></td>
                            <td>Chevrolet</td>
                            <td></td>
                            <td>Blanco</td>
                            <td></td>
                            <td>$152,000</td>
                            <td></td>
                            <td>$195,000</td>
                            
                            <td><a href="jefes_modificar_autos.jsp"><img src="../Icons/ic_create_white_36dp.png"></a></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>5574453</td>
                            <td></td>
                            <td>Corvette-2020</td>
                            <td></td>
                            <td>Chevrolet</td>
                            <td></td>
                            <td>Azul</td>
                            <td></td>
                            <td>$1,159,000</td>
                            <td></td>
                            <td>$2,220,000</td>
                            <td><a href="jefes_modificar_autos.jsp"><img src="../Icons/ic_create_white_36dp.png"></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </header>

        <footer class="footer py-2 txt-xs-center">
            <div class="container">
                <p>2020? CARSALE.COM Todos los derechos reservados</p>
            </div>
        </footer>

        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.11.0/js/mdb.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
