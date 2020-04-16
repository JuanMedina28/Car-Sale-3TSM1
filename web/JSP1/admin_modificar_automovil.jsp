<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Automovil</title>
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
                                <a class="nav-item nav-link" href="../JSP1/admin_catalogo_autos.jsp">Catalogo</a>
                                <a class="nav-item nav-link" href="../JSP1/index_admin.jsp">Mi cuenta</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <%
            String id_auto=request.getParameter("id_auto");
                            
            String marca = request.getParameter("marca_auto");
            String modelo = request.getParameter("modelo_auto");
            String color = request.getParameter("color_auto");
            String subtotal = request.getParameter("subtotal_auto");
            String total = request.getParameter("total_auto");
                            

            if(marca!=null & modelo!=null){
                                
                String actualizar="update automovil set marca='"+marca+"', modelo='"+modelo+"', color='"+color+"', subtotal='"+subtotal+"', total='"+total+"' where id_auto='"+id_auto+"'";
                sql.executeUpdate(actualizar);
                                
                out.print("<script>alert('Modificacion exitosa')</script>");
                response.sendRedirect("admin_consultar_automovil.jsp");
            }
                            
            String datos="select * from automovil where id_auto='"+id_auto+"'";
            ResultSet datos1=sql.executeQuery(datos);
            datos1.next();
        %>
        <div style="height: 30px"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card shadow-lg p-3 mb-5 bg-white">
                        <div class="card-header"><h3>Modificar un Automovil</h3></div>
                        <div class="card-body">
                            <form id="form1" action="admin_modificar_automovil.jsp?id_auto=<% out.print(datos1.getString("id_auto")); %>" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos del Auto</h4>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="nombre">Marca</label>
                                                <input name="marca_auto" type="text" class="form-control" id="amarca" placeholder="Ej. Chevrolet" value="<% out.print(datos1.getString("marca")); %>"><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Modelo</label>
                                                <input name="modelo_auto" type="text" class="form-control" id="amodelo" placeholder="Ej. Camaro" value="<% out.print(datos1.getString("modelo")); %>">
                                            </div>
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Color</label>
                                                <input name="color_auto" type="text" class="form-control" id="acolor" placeholder="Ej. Azul" value="<% out.print(datos1.getString("color")); %>">
                                            </div>
                                        </div><br>
                                        <h4>Precio</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label >Subtotal</label>
                                                <input name="subtotal_auto" type="text" class="form-control" id="asubt" placeholder="&#36;00.00" value="<% out.print(datos1.getString("subtotal")); %>"><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="nombre">Total</label>
                                                <input name="total_auto" type="text" class="form-control" id="atotal" placeholder="&#36;00.00" value="<% out.print(datos1.getString("total")); %>">
                                            </div>
                                        </div><br>
                                        <button class="btn btn-danger" type="submit" >Modificar Automovil</button>
                                        <a href="index_admin.jsp"><button type="button" class="btn btn-dark"  style="width: 200px; margin-left: 55%; margin-top: -15%">Regresar</button></a>
                                    </div>         
                                </div>     
                            </form>
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





                    if (No_Serie.length > 17 || No_Serie.length < 17) {
                        alert("El No. Serie deebe tener exactamente 17 caracteres");
                        return false;
                    } else if (marca === "") {
                        alert("No a colocado la marca");
                        return false;
                    } else if (modelo === "") {
                        alert("El modelo esta vacio");
                        return false;
                    } else if (color === "") {
                        alert("El color esta vacio");
                        return false;

                    } else if (subtotal === "") {
                        alert("El subtotal esta vacio");
                        return false;

                    } else if (total === "") {
                        alert("El total esta vacio");
                        return false;
                    } else if (isNaN(subtotal)) {
                        alert("El subtotal no es un numero");
                        return false;
                    } else if (isNaN(total)) {
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
