<%-- 
    Document   : cliente_agendar_cita
    Created on : 02/04/2020, 14:59:44
    Author     : UNAM
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
                        <div class="card-header"><h3>Agendar Cita de Compra</h3></div>
                        <div class="card-body">
                            <form name="form1" id="form1" action="#" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Detalles de la cita</h4>
                                        <div class="row">
                                                <select class="form-control form-control-sm" style="width: 30%; margin-top: 2%;" name="filtro">
                                                        <option selected>Elige un Día</option>
                                                        <option value="sueldo">1</option>
                                                        <option value="correo">2</option>
                                                        <option value="puesto">3</option>
                                                        <option value="puesto">4</option>
                                                        <option value="puesto">5</option>
                                                        <option value="puesto">6</option>
                                                        <option value="puesto">7</option>
                                                        <option value="puesto">8</option>
                                                        <option value="puesto">9</option>
                                                        <option value="puesto">10</option>
                                                        <option value="puesto">11</option>
                                                        <option value="puesto">12</option>
                                                        <option value="puesto">13</option>
                                                        <option value="puesto">14</option>
                                                        <option value="puesto">15</option>
                                                        <option value="puesto">16</option>
                                                        <option value="puesto">17</option>
                                                        <option value="puesto">18</option>
                                                        <option value="puesto">19</option>
                                                        <option value="puesto">20</option>
                                                        <option value="puesto">21</option>
                                                        <option value="puesto">22</option>
                                                        <option value="puesto">23</option>
                                                        <option value="puesto">24</option>
                                                        <option value="puesto">25</option>
                                                        <option value="puesto">26</option>
                                                        <option value="puesto">27</option>
                                                        <option value="puesto">28</option>
                                                        <option value="puesto">29</option>
                                                        <option value="puesto">30</option>
                                                        <option value="puesto">31</option>                                                       
                                                </select>
                                                <select class="form-control form-control-sm" style="width: 30%; margin-left: 15px; margin-top: 2%;" name="filtro">
                                                        <option selected>Elige un Mes</option>
                                                        <option value="ene">Enero</option>
                                                        <option value="feb">Febrero</option>
                                                        <option value="mar">Marzo</option>
                                                        <option value="abr">Abril</option>
                                                        <option value="may">Mayo</option>
                                                        <option value="jun">Junio</option>
                                                        <option value="jul">Julio</option>
                                                        <option value="agos">Agosto</option>
                                                        <option value="sep">Septiembre</option>
                                                        <option value="oct">Octubre</option>
                                                        <option value="nov">Noviembre</option>
                                                        <option value="dici">Diciembre</option>
                                                </select>
                                                <select class="form-control form-control-sm" style="width: 30%;margin-left: 15px; margin-top: 2%;" name="filtro">
                                                        <option selected>Elige un Año</option>
                                                        <option value="2020">2020</option>
                                                        <option value="2021">2021</option>
                                                        <option value="2022">2022</option>
                                                        <option value="2023">2023</option>
                                                </select>
                                        </div>
                                        <br>
                                        <h4>Horario de la cita</h4>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="subtotal">Hora de la cita</label>
                                                <input name="subtotal_auto" type="time" class="form-control" id="asubt" placeholder="$$$" value=""><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Registar cita</button>
                            </form>
                            <a href="index_admin.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
</body>
</html>