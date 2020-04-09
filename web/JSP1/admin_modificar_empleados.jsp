<%@include file="conexion.jsp" %>
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
                                <a class="nav-item nav-link" href="../JSP1/catalogo_autos.jsp">Catalogo</a>
                                <a class="nav-item nav-link" href="../JSP1/index_admin.jsp">Mi cuenta</a>
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
                        <%
                            HttpSession sesion = request.getSession();
                            String email=(String)sesion.getAttribute("email");
                            String id_usuario=(String)sesion.getAttribute("id_usuario");
                            String id_empleado=request.getParameter("id_emple");
                            
                            String datos="select * from usuario inner join empleado on usuario.id_usuario=empleado.id_usuario where usuario.id_usuario='"+id_empleado+"'";
                            ResultSet datos1 = sql.executeQuery(datos);
                            datos1.next();
                            String correo=datos1.getString("correo_electronico");
                            
                            String email1 = request.getParameter("correo1");
                            String telefono1 = request.getParameter("telefono1");
                            String tp_usu1 = request.getParameter("puesto1");
                            String estado1 = request.getParameter("estado1");
                            String municipio1 = request.getParameter("municipio1");
                            String cp1 = request.getParameter("cp1");
                            String colonia1 = request.getParameter("colonia1");
                            String calle1 = request.getParameter("calle1");
                            String puesto1 = request.getParameter("puesto1");
                            String area1 = request.getParameter("area1");
                            String sueldo1 = request.getParameter("sueldo1");
                            
                            if(email1!=null & puesto1!=null & area1!=null){
                                if(email1.equals(correo)){
                                    String actualizar_usuario1="update usuario set no_telefono='"+telefono1+"', tipo_usuario='"+tp_usu1+"' where id_usuario='"+id_empleado+"'";
                                    sql.executeUpdate(actualizar_usuario1);
                                    
                                    String actualizar_empleado1="update empleado set calle='"+calle1+"', colonia='"+colonia1+"', municipio='"+municipio1+"', estado='"+estado1+"', cp='"+cp1+"', area='"+area1+"', puesto='"+puesto1+"', sueldo='"+sueldo1+"' where id_usuario='"+id_empleado+"'";
                                    sql.executeUpdate(actualizar_empleado1);
                                    
                                    out.print("<script>alert('Modificacion exitosa')</script>");
                                    response.sendRedirect("admin_consultar_empleados.jsp");
                                    
                                }else{
                                    String validar_email="select * from usuario where correo_electronico='"+email1+"'";
                                    ResultSet validar_email1 = sql.executeQuery(validar_email);
                                    if(validar_email1.next()){
                                        out.print("<script>alert('ERROR: El correo electronico ya está en uso')</script>");
                                    }else{
                                        String actualizar_usuario2="update usuario set no_telefono='"+telefono1+"', tipo_usuario='"+tp_usu1+"' where id_usuario='"+id_empleado+"'";
                                        sql.executeUpdate(actualizar_usuario2);
                                    
                                        String actualizar_empleado2="update empleado set calle='"+calle1+"', colonia='"+colonia1+"', municipio='"+municipio1+"', estado='"+estado1+"', cp='"+cp1+"', area='"+area1+"', puesto='"+puesto1+"', sueldo='"+sueldo1+"' where id_usuario='"+id_empleado+"'";
                                        sql.executeUpdate(actualizar_empleado2);
                                        
                                        out.print("<script>alert('Modificacion exitosa')</script>");
                                        response.sendRedirect("admin_consultar_empleados.jsp");
                                    }
                                }
                            }
                            
                            String info="select * from usuario inner join empleado on usuario.id_usuario=empleado.id_usuario where usuario.id_usuario='"+id_empleado+"'";
                            ResultSet info1 = sql.executeQuery(info);
                            info1.next();
                        %>
                        <div class="card-header"><h3>Modificar un empleado</h3></div>
                        <div class="card-body">
                            <form id="form1" action="admin_modificar_empleados.jsp?id_emple=<% out.print(info1.getString("id_usuario")); %>" method="post" class="needs-validation">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos personales</h4>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="nombre">Correo electrónico</label>
                                                <input name="correo1" type="email" class="form-control" id="nombre" placeholder="correo@dominio.com" value="<% out.print(info1.getString("correo_electronico")); %>"><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="nombre">Telefono</label>
                                                <input name="telefono1" type="text" class="form-control" id="nombre" placeholder="Ej:55-3463-4867" value="<% out.print(info1.getString("no_telefono")); %>"><br>
                                            </div>
                                        </div>
                                        <h4>Dirección</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="nombre">Estado</label>
                                                <input name="estado1" type="text" class="form-control" id="nombre" placeholder="Ej:Mexico" value="<% out.print(info1.getString("estado")); %>"><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="apellidopat">Municipio</label>
                                                <input name="municipio1" type="text" class="form-control" id="apellidopat" placeholder="Ej:Tecamac" value="<% out.print(info1.getString("municipio")); %>">
                                            </div>
                                            <div class="col-4">
                                                <label for="apellidomat">Código Postal</label>
                                                <input name="cp1" type="text" class="form-control" id="apellidomat" placeholder="Ej:5587" value="<% out.print(info1.getString("cp")); %>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="correo">Colonia</label>
                                                <input name="colonia1" type="text" class="form-control" id="email" placeholder="Ej:San Martin" value="<% out.print(info1.getString("colonia")); %>"><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="correo">Calle</label>
                                                <input name="calle1" type="text" class="form-control" id="email" placeholder="Ej:Roble" value="<% out.print(info1.getString("calle")); %>"><br>
                                            </div>
                                        </div>

                                        <h4>Datos empresariales</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Puesto</label>
                                                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="puesto1">
                                                    <% 
                                                        if(info1.getString("puesto").equals("Administrador")){
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("puesto")); %>"><% out.print(info1.getString("puesto")); %></option>
                                                    <option value="Jefe">Jefe</option>
                                                    <option value="Empleado">Empleado</option>
                                                    <%
                                                        }else if(info1.getString("puesto").equals("Jefe")){
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("puesto")); %>"><% out.print(info1.getString("puesto")); %></option>
                                                    <option value="Administrador">Administrador</option>
                                                    <option value="Empleado">Empleado</option>
                                                    <%
                                                        }else{
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("puesto")); %>"><% out.print(info1.getString("puesto")); %></option>
                                                    <option value="Administrador">Administrador</option>
                                                    <option value="Jefe">Jefe</option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Área</label>
                                                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="area1">
                                                    <% 
                                                        if(info1.getString("area").equals("ventas")){
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("area")); %>"><% out.print(info1.getString("area")); %></option>
                                                    <option value="almacen">Almacen</option>
                                                    <option value="mecanico">Mecanico</option>
                                                    <%
                                                        }else if(info1.getString("area").equals("almacen")){
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("area")); %>"><% out.print(info1.getString("area")); %></option>
                                                    <option value="ventas">Ventas</option>
                                                    <option value="mecanico">Mecanico</option>
                                                    <%
                                                        }else{
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("area")); %>"><% out.print(info1.getString("area")); %></option>
                                                    <option value="ventas">Ventas</option>
                                                    <option value="almacen">Almacen</option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div><br>
                                        <div class="col-4">
                                            <label for="correo">Sueldo</label>
                                            <input name="sueldo1" type="text" class="form-control" id="email" placeholder="Ej:5900" value="<% out.print(info1.getString("sueldo")); %>"><br>
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
