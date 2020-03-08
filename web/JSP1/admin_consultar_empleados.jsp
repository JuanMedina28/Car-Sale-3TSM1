<!doctype html>
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
                                <a class="nav-item nav-link active" href="index.html">Inicio</a>
                                <a class="nav-item nav-link" href="HTML/servicios.html">Servicios</a>
                                <a class="nav-item nav-link" href="JSP1/inicio.jsp">Iniciar Sesión</a>
                                <a class="nav-item nav-link" href="#">Contacto</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div><br><br><br><br>
            <div class="alert alert-primary" role="alert" style="width: 50%; margin-left: 25%;"><h4 style="margin-left: 15%;">Buscar por departamento:</h4>
                <form action="consultas-empleados.html" method="post">
                    <select class="form-control form-control-sm" style="width: 30%; margin-left: 15%; margin-top: 2%;" name="filtro">
                        <option selected>Elige una opcion</option>
                        <option value="Ventas">Ventas</option>
                        <option value="Almacen">Almacen</option>
                        <option value="Mecanico">Mecanico</option>
                    </select>
                    <button type="button" class="btn btn-outline-primary" style="margin-left: 50%; margin-top: -6%; height: 40px;">Buscar</button>
                </form>
                <a href="index_admin.jsp"><button type="button" class="btn btn-dark" style="margin-left: 70%; margin-top: -12%; height: 40px;">Regresar</button></a>
            </div>
            <div style="display: inline-table">
                <table class="table table-hover table-dark" style="position: absolute; width: 85%; margin-left: 7.5%;">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th colspan="5" style="font-size: 20px; text-align: center">Datos Personales</th>
                            <th colspan="5" style="font-size: 20px; text-align: center">Direccion</th>
                            <th colspan="3" style="font-size: 20px; text-align: center">Datos empresariales</th>
                            <th scope="col" style="font-size: 20px; text-align: center">Modificar</th>
                        </tr>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombres(s)</th>
                            <th scope="col">Aepllido Paterno</th>
                            <th scope="col">Apellido Materno</th>
                            <th scope="col">Correo Electrónico</th>
                            <th scope="col">No. Teléfono</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Municipio</th>
                            <th scope="col">Código Postal</th>
                            <th scope="col">Colonia</th>
                            <th scope="col">Calle</th>
                            <th scope="col">Puesto</th>
                            <th scope="col">Área</th>
                            <th scope="col">Sueldo</th>
                            <th scope="col">Editar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Edgar Gabriel</td>
                            <td>Hernandez</td>
                            <td>Sanchez</td>
                            <td>edgarfto@gmail.com</td>
                            <td>5572779113</td>
                            <td>Edo. de Mex.</td>
                            <td>Tecamac</td>
                            <td>55748</td>
                            <td>Fracc. Santa Lucia</td>
                            <td>Priv. Robles</td>
                            <td>Jefe</td>
                            <td>Ventas</td>
                            <td>$25,000</td>
                            <td><a href="admin_modificar_empleados.jsp"><img src="../Icons/ic_create_white_36dp.png"></a></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Aletz Santiago</td>
                            <td>Davila</td>
                            <td>Menez</td>
                            <td>aletz@gmail.com</td>
                            <td>5599882272</td>
                            <td>Edo. de Mex.</td>
                            <td>Tecamac</td>
                            <td>55748</td>
                            <td>Fracc. Santa Lucia</td>
                            <td>Priv. Robles</td>
                            <td>Jefe</td>
                            <td>Ventas</td>
                            <td>$25,000</td>
                            <td><a href="admin_modificar_empleados.jsp"><img src="../Icons/ic_create_white_36dp.png"></a></td>
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
