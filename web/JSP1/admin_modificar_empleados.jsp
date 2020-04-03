
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
                        <div class="card-header"><h3>Modificar un empleado</h3></div>
                        <div class="card-body">
                            <form id="form1" action="#" method="post" class="needs-validation">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos personales</h4>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="nombre">Correo electrónico</label>
                                                <input name="correo" type="email" class="form-control" id="nombre" placeholder="correo@dominio.com" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="nombre">Telefono</label>
                                                <input name="telefono" type="text" class="form-control" id="nombre" placeholder="Ej:55-3463-4867" value=""><br>
                                            </div>
                                        </div>
                                        <h4>Dirección</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="nombre">Estado</label>
                                                <input name="estado" type="text" class="form-control" id="nombre" placeholder="Ej:Mexico" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="apellidopat">Municipio</label>
                                                <input name="municipio" type="text" class="form-control" id="apellidopat" placeholder="Ej:Tecamac" value="">
                                            </div>
                                            <div class="col-4">
                                                <label for="apellidomat">Código Postal</label>
                                                <input name="cp" type="text" class="form-control" id="apellidomat" placeholder="Ej:5587" value="">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="correo">Colonia</label>
                                                <input name="colonia" type="text" class="form-control" id="email" placeholder="Ej:San Martin" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="correo">Calle</label>
                                                <input name="calle" type="text" class="form-control" id="email" placeholder="Ej:Roble" value=""><br>
                                            </div>
                                        </div>

                                        <h4>Datos empresariales</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Puesto</label>
                                                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="puesto">
                                                    <option selected>Elige una opción</option>
                                                    <option value="Jefe">Jefe</option>
                                                    <option value="Empleado">Empleado</option>
                                                </select>
                                            </div>
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Área</label>
                                                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="area">
                                                    <option selected>Elige una opción</option>
                                                    <option value="ventas">Ventas</option>
                                                    <option value="almacen">Almacen</option>
                                                    <option value="mecanico">Mecanico</option>
                                                </select>
                                            </div>
                                        </div><br>
                                        <div class="col-4">
                                            <label for="correo">Sueldo</label>
                                            <input name="sueldo" type="text" class="form-control" id="email" placeholder="Ej:5900" value=""><br>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Modificar empleado</button>
                            </form>
                            <a href="admin_consultar_empleados.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        
           
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
