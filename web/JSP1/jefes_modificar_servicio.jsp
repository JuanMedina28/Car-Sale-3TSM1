<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Servicio</title>
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
                                <a class="nav-item nav-link" href="../JSP1/jefes_catalogo_autos.jsp">Catalogo</a>
                                <a class="nav-item nav-link" href="../JSP1/index_jefes.jsp">Mi cuenta</a>
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
                        <div class="card-header"><h3>Registrar servicio</h3></div>
                        <div class="card-body">
                            <%
                                HttpSession sesion = request.getSession();
                                String email=(String)sesion.getAttribute("email");
                                String id_usuario=(String)sesion.getAttribute("id_usuario");
                                
                                String id_cita=request.getParameter("id_cita");
                                String tp_estado=request.getParameter("tp_estado");
                                String fecha_fin=request.getParameter("fecha_fin");
                                String hora_fin=request.getParameter("hora_fin");
                                
                                if(tp_estado!=null){
                                    String actualizar_servicio="update servicio set fecha_termino='"+fecha_fin+"', hora_termino='"+hora_fin+"', estatus='"+tp_estado+"', id_empleado='"+id_usuario+"' where id_cita='"+id_cita+"'";
                                    sql.executeUpdate(actualizar_servicio);
                                    out.print("<script>alert('Modificacion exitosa')</script>");
                                    response.sendRedirect("jefes_consultar_servicios.jsp?filtro=null");
                                }
                                
                                String datos="select * from cita inner join servicio on cita.id_cita=servicio.id_cita where cita.id_cita='"+id_cita+"'";
                                ResultSet datos1=sql.executeQuery(datos);
                                datos1.next();
                            %>
                            <form name="form1" id="form1" action="jefes_modificar_servicio.jsp?id_cita=<% out.print(datos1.getString("id_cita")); %>" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos de la cita: <% out.print(datos1.getString("tipo_servicio")+" - "+datos1.getString("detalles")); %></h4>
                                        <div class="row">
                                            <div class="col">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Tipo de estado</label>
                                                <select class="custom-select my-1 mr-sm-2" id="tipo" name="tp_estado">
                                                    <option selected value="">Elige una opción</option>
                                                    <option value="En proceso">En proceso</option>
                                                    <option value="Realizado">Realizado</option>
                                                </select><br>
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col">
                                                <label for="nombre">Fecha de termino</label>
                                                <input name="fecha_fin" type="date" class="form-control" min="<% out.print(datos1.getString("fecha_inicio")); %>" max="2021-12-31" value="<% out.print(datos1.getString("fecha_inicio")); %>"><br>
                                            </div>
                                            <div class="col">
                                                <label for="nombre">Hora de termino</label>
                                                <input name="hora_fin" type="time" class="form-control" value="<% out.print(datos1.getString("hora_inicio")); %>" max="21:00:00" min="<% out.print(datos1.getString("hora_inicio")); %>" step="1"><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Modificar</button>
                            </form>
                            <a href="jefes_consultar_servicios.jsp?filtro=null"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 25%; margin-top: -8%">Regresar</button></a>
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