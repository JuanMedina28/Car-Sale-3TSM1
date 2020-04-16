<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
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
                                <a class="nav-item nav-link active" href="../index.html">Inicio</a>
                                <a class="nav-item nav-link" href="../JSP1/index_servicios.jsp">Servicios</a>
                                <a class="nav-item nav-link" href="../JSP1/cliente_catalogo_autos.jsp">Catalogo</a>
                                <a class="nav-item nav-link" href="../JSP1/index_cliente.jsp">Mi cuenta</a>
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
                        <div class="card-header"><h3>Agendar cita</h3></div>
                        <div class="card-body">
                            <%
                                HttpSession sesion = request.getSession();
                                String email=(String)sesion.getAttribute("email");
                                String id_usuario=(String)sesion.getAttribute("id_usuario");
                                
                                String tp_servicio=request.getParameter("tp_servicio");
                                String fecha_inicio=request.getParameter("fecha_inicio");
                                String hora_inicio=request.getParameter("hora_inicio");
                                String detalles=request.getParameter("detalles");
                                
                                if(tp_servicio!=null & fecha_inicio!=null){
                                    
                                    String validar_fecha="select * from cita where fecha_inicio='"+fecha_inicio+"' and tipo_servicio='"+tp_servicio+"' and hora_inicio='"+hora_inicio+"'";
                                    ResultSet validar_fecha1=sql.executeQuery(validar_fecha);
                                    
                                    if(validar_fecha1.next()){
                                        out.print("<script>alert('Fecha y hora de servicio no disponible')</script>");
                                    }else{
                                        String registrar_cita="insert into cita(tipo_servicio, fecha_inicio, hora_inicio,detalles,id_cliente) values('"+tp_servicio+"','"+fecha_inicio+"','"+hora_inicio+"','"+detalles+"','"+id_usuario+"')";                
                                        sql.executeUpdate(registrar_cita);
                                            
                                        String id_cita="select * from cita where fecha_inicio='"+fecha_inicio+"' and tipo_servicio='"+tp_servicio+"' and hora_inicio='"+hora_inicio+"'";
                                        ResultSet id_cita1=sql.executeQuery(id_cita);
                                        if(id_cita1.next()){
                                            String registrar_servicio="insert into servicio(id_cita) values('"+id_cita1.getString("id_cita")+"')";
                                            sql.executeUpdate(registrar_servicio);
                                            out.print("<script>alert('Agendacion de cita exitosa')</script>");
                                            response.sendRedirect("cliente_consultar_citas.jsp");
                                        }
                                        
                                    }
                                }
                                
                            %>
                            <form name="form1" id="form1" action="cliente_registrar_cita.jsp" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos de la cita</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Tipo de servicio</label>
                                                <select class="custom-select my-1 mr-sm-2" id="tipo" name="tp_servicio">
                                                    <option selected value="">Elige una opción</option>
                                                    <option value="Compra">Compra</option>
                                                    <option value="Mantenimiento">Mantenimiento</option>
                                                    <option value="Estetico">Estético</option>
                                                </select><br>
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col">
                                                <label for="nombre">Fecha de inicio</label>
                                                <input name="fecha_inicio" type="date" class="form-control" min="2020-04-16" max="2021-12-31" value=""><br>
                                            </div>
                                            <div class="col">
                                                <label for="nombre">Hora de inicio</label>
                                                <input name="hora_inicio" type="time" class="form-control" value="12:00:00" max="21:00:00" min="07:00:00" step="1"><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <label for="nombre">Detalles</label>
                                                <input name="detalles" type="text" class="form-control" placeholder="Ej: Cambio de aceite"><br>
                                            </div>
                                            <div class="col-6">
                                                <label for="nombre">Costo</label>
                                                <input name="costo" type="text" class="form-control" disabled="" value="$100" Cambio de aceite"><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Agendar Cita</button>
                            </form>
                            <a href="index_cliente.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 25%; margin-top: -8%">Regresar</button></a>
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