<%-- 
    Document   : admin_registrar_automovil
    Created on : 31/03/2020, 03:12:04 PM
    Author     : Juan J. Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

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
                        <div class="card-header"><h3>Registrar un Automovil</h3></div>
                        <div class="card-body">
                            <form id="form1" action="#" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos del Auto</h4>
                                       
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="nombre">No. Serie</label>
                                                <input name="seriea" type="text" class="form-control" id="seriea" placeholder="Ej. 1GNCS13Z6M0246591" value=""><br>
                                            </div>
                                            
                                            <div class="col-4">
                                                <label for="nombre">Marca</label>
                                                <input name="amarca" type="text" class="form-control" id="amarca" placeholder="Ej. Chevrolet" value=""><br>
                                            </div>
                                        </div>
                                        
                                        
                                         
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Modelo</label>
                                                <input name="amodelo" type="text" class="form-control" id="amodelo" placeholder="Ej. Camaro" value="">
                                            </div>
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Color</label>
                                                <input name="acolor" type="text" class="form-control" id="acolor" placeholder="Ej. Azul" value="">
                                            </div>
                                        </div><br>
                                        
                                        
                                        <h4>Precio</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label >Subtotal</label>
                                                <input name="asubt" type="text" class="form-control" id="asubt" placeholder="&#36;00.00" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="nombre">Total</label>
                                                <input name="atotal" type="text" class="form-control" id="atotal" placeholder="&#36;00.00" value="">
                                            </div>
                                            
                                        </div>
                                         <button class="btn btn-danger" type="submit" >Registar Automovil</button>
                                         <a href="index_admin.jsp"><button type="button" class="btn btn-dark"  style="width: 200px; margin-left: 50%; margin-top: -10%">Regresar</button></a>
                        
                                     </div>         
                            </div>       
                                
                        </form>
                            
                        
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
