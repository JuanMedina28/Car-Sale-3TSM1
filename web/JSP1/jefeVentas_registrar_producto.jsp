<%-- 
    Document   : jefe_registrar_auto
    Created on : 31/03/2020, 15:32:13
    Author     : UNAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Producto</title>
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
                                <a class="nav-item nav-link" href="../HTML/servicios.html">Servicios</a>
                                <a class="nav-item nav-link" href="../JSP1/vendedor_catalogo_autos.jsp">Catalogo</a>
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
                        <div class="card-header"><h3>Registrar producto</h3></div>
                        <div class="card-body">
                            <form name="form1" id="form1" action="#" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Detalles del producto</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label for="nombre_producto">Nombre</label>
                                                <input name="nombre_producto" type="text" class="form-control" id="seriea" placeholder="Ej. Motor" value=""><br>
                                            </div>
                                            <div class="col">
                                                <label for="contenido_producto">Contenido</label>
                                                <input name="contenido_producto" type="text" class="form-control" id="amarca" placeholder="Ej:12pz o 190 ml" value="">
                                            </div>
                                            <div class="col">
                                                <label for="cantidad_producto">Cantidad</label>
                                                <input name="cantidad_producto" type="text" class="form-control" id="amodelo" placeholder="Ej:18" value="">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="precio_producto">Precio</label>
                                                <input name="precio_producto" type="text" class="form-control" id="seriea" placeholder="Ej:29102" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="detalles_producto">Detalles</label>
                                                <input name="detalles_producto" type="text" class="form-control" id="amarca" placeholder="Ej:Fragil" value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Registar producto</button>
                            </form>
                            <a href="index_jefes.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
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
    </body>
</html>
