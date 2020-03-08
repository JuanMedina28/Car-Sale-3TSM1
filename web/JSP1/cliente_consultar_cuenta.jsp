<%-- 
    Document   : cliente_consultar_cuenta
    Created on : 7/03/2020, 01:12:07 PM
    Author     : Quiron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Consultar Cuenta</title>
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
                            <div class=" navg navbar-nav w-100 justify-content-center ">
                                <a class="nav-item nav-link active waves-effect waves-light" href="../index.html">Inicio</a>
                                <a class="nav-item nav-link waves-effect waves-light" href="index_servicios.jsp">Servicios</a>
                                <a class="nav-item nav-link waves-effect waves-light" href="iniciar_sesion.jsp">Iniciar Sesión</a>
                                <a class="nav-item nav-link waves-effect waves-light" href="#">Contacto</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div><img class="d-block w-100" src="../Images/camaro.jpg" alt="Segundo slide" style="position: absolute;"><br><br><br><br>
            <div class="alert alert-primary" role="alert" style="width: 50%; margin-left: 25%;">
                <h3 style="margin-left: 20%">Datos de mi cuenta:</h3>
                <a href="index_cliente.jsp"><button type="button" class="btn btn-dark" style="margin-left: 60%; margin-top: -7%; height: 40px;">Regresar</button></a>
            </div>
            <div style="display: inline-table; margin-bottom: 10%; padding-bottom: 5%;">
                <table class="table table-hover table-dark" style="position: absolute; width: 85%; margin-left: 7.5%;">
                    <thead>
                        <tr>
                            <th scope="col" style="text-align: center; font-size: 20px;"></th>
                            <th colspan="4" style="text-align: center; font-size: 20px;">Datos Personales</th>
                            <th colspan="2" style="text-align: center; font-size: 20px;">Datos de la cuenta</th>
                            <th colspan="4" style="text-align: center; font-size: 20px;">Datos Bancarios</th>
                            <th colspan="2" style="text-align: center; font-size: 20px;">Modificar</th>
                        </tr>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre (s)</th>
                            <th scope="col">Aepllido Paterno</th>
                            <th scope="col">Apellido Materno</th>
                            <th scope="col">No. Teléfono</th>
                            <th scope="col">Correo Electrónico</th>
                            <th scope="col">Contraseña Actual</th>
                            <th scope="col">Tipo Tarjeta</th>
                            <th scope="col">No. Tarjeta</th>
                            <th scope="col">CVV</th>
                            <th scope="col">Fech. Vencimiento</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Edgar Gabriel</td>
                            <td>Hernandez</td>
                            <td>Sanchez</td>
                            <td>5572779113</td>
                            <td>edgarfto@gmail.com</td>
                            <td>Integr@dora31</td>
                            <td>Debito</td>
                            <td>1729880198873927</td>
                            <td>123</td>
                            <td>12-09-240</td>
                            <td><a href="cliente_modificar_cuenta.jsp"><img src="../Icons/ic_create_white_36dp.png"></a></td>
                            <td><a href="#"><img src="../Icons/ic_delete_sweep_white_36dp.png"></a></td>
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
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.11.0/js/mdb.min.js"></script><div class="hiddendiv common"></div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
