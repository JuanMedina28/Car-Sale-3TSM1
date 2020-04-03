<%-- 
    Document   : jefe_registrar_auto
    Created on : 31/03/2020, 15:32:13
    Author     : UNAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Automóvil</title>
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
                <%            
            String serie = request.getParameter("serie");
            String marca = request.getParameter("marca_auto");
            String modelo = request.getParameter("modelo_auto");
            String color = request.getParameter("color_auto");
            String subtotal = request.getParameter("suntotal_auto");
            String total = request.getParameter("total_auto");

            if (serie != null) {
                String qry = "INSERT INTO automovil(no_serie,marca,modelo,color,subtotal,total) values ('" + serie + "','" + marca + "','" + modelo + "','" + color + "','" + subtotal + "','" + total + "')";
                sql.executeUpdate(qry);

            }


        %>
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
                        <div class="card-header"><h3>Registrar cliente</h3></div>
                        <div class="card-body">
                            <form name="form1" id="form1" action="#" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Detalles estéticos del vehículo</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label for="no_serie">No. de serie</label>
                                                <input name="serie" type="text" class="form-control" id="seriea" placeholder="" value=""><br>
                                            </div>
                                            <div class="col">
                                                <label for="marca">Marca</label>
                                                <input name="marca_auto" type="text" class="form-control" id="amarca" placeholder="Ej:Chevrolet" value="">
                                            </div>
                                            <div class="col">
                                                <label for="modelo">Modelo</label>
                                                <input name="modelo_auto" type="text" class="form-control" id="amodelo" placeholder="Ej:Spark-2018" value="">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="color">Color</label>
                                                <input name="color_auto" type="text" class="form-control" id="acolor" placeholder="Ej:Rojo" value=""><br>
                                            </div>
                                        </div>
                                        <h4>Precio del vehículo</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="subtotal">Subtotal</label>
                                                <input name="subtotal_auto" type="text" class="form-control" id="asubt" placeholder="$$$" value=""><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="total">Total</label>
                                                <input name="total_auto" type="pass" class="form-control" id="atotal" placeholder="$$$" value=""><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Registar vehículo</button>
                            </form>
                            <a href="index_admin.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script language="JavaScript">

		function validar()
		{
                  var No_Serie, marca, modelo, color, subtotal, total;
              
            
                   
                     No_Serie = document.getElementById("seriea").value;
                     marca = document.getElementById("amarca").value;
                     modelo = document.getElementById("amodelo").value;
                     color = document.getElementById("acolor").value;
                     subtotal = document.getElementById("asubt").value;
                     total = document.getElementById("atotal").value;
                   
                    
                    
                    
                   
               if( No_Serie.length>17|| No_Serie.length<17){
		alert("El No. Serie deebe tener exactamente 17 caracteres");
		return false;
                }  
                 else if( marca===""){
		alert("No a colocado la marca");
		return false;
                }
                 else if( modelo===""){
                        alert("El modelo esta vacio");
                        return false;
                }
                else if( color===""){
                        alert("El color esta vacio");
                        return false;
                        
                }else if( subtotal===""){
                        alert("El subtotal esta vacio");
                        return false;
                        
                }else if( total===""){
                        alert("El total esta vacio");
                        return false;
                }
                else if (isNaN(subtotal)) {
                        alert("El subtotal no es un numero");
                        return false;
                }
                 else if (isNaN(total)) {
                        alert("El total no es un numero");
                        return false;
                }
                
        
                
                    
                }
                
         </script>
         
            
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
