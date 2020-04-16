<!doctype html>
<html lang="Spanish">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/css/mdb.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../CSS/main-styles.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Anton|Montserrat&display=swap" rel="stylesheet">

        <title>Bienvenido a CarSale</title>
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
                                <a class="nav-item nav-link" href="../JSP1/admin_catalogo_autos.jsp">Catalogo</a>
                                <a class="nav-item nav-link" href="../JSP1/index_admin.jsp">Mi cuenta</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div id="carousel1" class="carousel slide" data-ride="carousel" style="height: 600px;">
                <ol class="carousel-indicators">
                    <li data-target="#carousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel1" data-slide-to="1"></li>
                    <li data-target="#carousel1" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" style="height: 600px; position: absolute">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="../Images/2019-Chevrolet-Camaro-Turbo-1LE-41.webp" alt="Primer slide" style="height: 600px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Chevrolet Camaro Turbo</h3>
                            <p>Cónocelo</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../Images/chevrolet-camaro-ss-muscle-car.jpg" alt="Segundo slide" style="height: 600px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Chevrolet Camaro SS Muscle</h3>
                            <p>Cónocelo</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../Images/cavalier.jpg" alt="Tercer slide" style="height: 600px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Chevrolet Cavalier</h3>
                            <p>Cónocelo</p>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#carousel1" class="carousel-control-prev" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a href="#carousel1" class="carousel-control-next" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Siguiente</span>
            </a>
            
            <div class="row" style="margin-top: 5%;margin-bottom: 5%;">
                <div class="col" style="margin-left: 10%;">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="../Images/camaro.jpg" alt="Card image cap" style="width: 100%;height: 180px;">
                        <div class="card-body">
                            <h5 class="card-title">Chevrolet Camaro</h5>
                            <p class="card-text">Azul metalico</p>
                            <p class="card-text">$700,000</p>
                            <p class="card-text">28 en existencia</p>
                            <a href="#" class="btn btn-primary">Comprarlo ahora</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="../Images/cavalier.jpg" alt="Card image cap" style="width: 100%;height: 180px;">
                        <div class="card-body">
                            <h5 class="card-title">Chevrolet Cavalier</h5>
                            <p class="card-text">Azul metalico</p>
                            <p class="card-text">$700,000</p>
                            <p class="card-text">28 en existencia</p>
                            <a href="#" class="btn btn-primary">Comprarlo ahora</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="../Images/chevrolet-camaro-ss-muscle-car.jpg" alt="Card image cap" style="width: 100%;height: 180px;">
                        <div class="card-body">
                            <h5 class="card-title">Camaro SS Muscle</h5>
                            <p class="card-text">Azul metalico</p>
                            <p class="card-text">$700,000</p>
                            <p class="card-text">28 en existencia</p>
                            <a href="#" class="btn btn-primary">Comprarlo ahora</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 5%;margin-bottom: 5%;">
                <div class="col" style="margin-left: 10%;">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="../Images/camaro.jpg" alt="Card image cap" style="width: 100%;height: 180px;">
                        <div class="card-body">
                            <h5 class="card-title">Chevrolet Camaro</h5>
                            <p class="card-text">Azul metalico</p>
                            <p class="card-text">$700,000</p>
                            <p class="card-text">28 en existencia</p>
                            <a href="#" class="btn btn-primary">Comprarlo ahora</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="../Images/cavalier.jpg" alt="Card image cap" style="width: 100%;height: 180px;">
                        <div class="card-body">
                            <h5 class="card-title">Chevrolet Cavalier</h5>
                            <p class="card-text">Azul metalico</p>
                            <p class="card-text">$700,000</p>
                            <p class="card-text">28 en existencia</p>
                            <a href="#" class="btn btn-primary">Comprarlo ahora</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="../Images/chevrolet-camaro-ss-muscle-car.jpg" alt="Card image cap" style="width: 100%;height: 180px;">
                        <div class="card-body">
                            <h5 class="card-title">Camaro SS Muscle</h5>
                            <p class="card-text">Azul metalico</p>
                            <p class="card-text">$700,000</p>
                            <p class="card-text">28 en existencia</p>
                            <a href="#" class="btn btn-primary">Comprarlo ahora</a>
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