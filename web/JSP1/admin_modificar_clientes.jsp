<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>   
<html>
    <head>
        <title>Modificar Cuenta</title>
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
        <div style="height: 30px"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card shadow-lg p-3 mb-5 bg-white">
                        <div class="card-header"><h3>Modificar cuenta</h3></div>
                        <div class="card-body">
                            <form id="form1" action="#" method="post" class="needs-validation">
                                <% 
                                    String id_usuario=request.getParameter("id_cliente");
                            
                                    String datos="select * from usuario inner join cliente on usuario.id_usuario=cliente.id_usuario inner join tarjeta on cliente.no_tarjeta=tarjeta.no_tarjeta where usuario.id_usuario='"+id_usuario+"'";
                                    ResultSet datos1 = sql.executeQuery(datos);
                                    datos1.next();
                                    String no_tarjeta=datos1.getString("no_tarjeta");
                                    String correo=datos1.getString("correo_electronico");
                                    
                                    
                                    String nombre1 = request.getParameter("nombre1");
                                    String ap_pat1 = request.getParameter("apellidopat1");
                                    String ap_mat1 = request.getParameter("apellidomat1");
                                    String email1 = request.getParameter("email1");
                                    String password1 = request.getParameter("confirm_password1");
                                    String telefono1 = request.getParameter("telefono1");
                                    String tp_tarjeta1 = request.getParameter("tp_tarjeta1");
                                    String no_tarjeta1 = request.getParameter("no_tarjeta1");
                                    String cvv1 = request.getParameter("cvv1");
                                    String fech_vence1 = request.getParameter("fech_vence1");
                                    
                                    if(email1!=null && no_tarjeta1!=null){
                                        if(email1.equals(correo) & no_tarjeta1.equals(no_tarjeta)){
                                            
                                            String actualizar_usuario1="update usuario set nombre='"+nombre1+"', apellido_paterno='"+ap_pat1+"', apellido_materno='"+ap_mat1+"', clave='"+password1+"', no_telefono='"+telefono1+"' where id_usuario='"+id_usuario+"'";
                                            sql.executeUpdate(actualizar_usuario1);
                                            
                                            String actualizar_tarjeta1="update tarjeta set tipo_tarjeta='"+tp_tarjeta1+"', cvv='"+cvv1+"', fecha_vence='"+fech_vence1+"' where no_tarjeta='"+no_tarjeta+"'";  
                                            sql.executeUpdate(actualizar_tarjeta1);
                                            
                                            out.print("<script>alert('Modificacion exitosa')</script>");
                                            response.sendRedirect("admin_consultar_clientes.jsp");
                                     
                                        }else if(email1!=""+correo+"" & no_tarjeta1.equals(no_tarjeta)){
                                            
                                            String validar_email1="select * from usuario where correo_electronico='"+email1+"'";
                                            ResultSet validar1 = sql.executeQuery(validar_email1);
                                    
                                            if(validar1.next()){
                                                out.print("<script>alert('ERROR: El correo electronico ya está en uso')</script>");
                                                response.sendRedirect("admin_consultar_clientes.jsp");
                                            }else{
                                                String actualizar_usuario2="update usuario set nombre='"+nombre1+"', apellido_paterno='"+ap_pat1+"', apellido_materno='"+ap_mat1+"', correo_electronico='"+email1+"', clave='"+password1+"', no_telefono='"+telefono1+"' where id_usuario='"+id_usuario+"'";
                                                sql.executeUpdate(actualizar_usuario2);
                                            
                                                String actualizar_tarjeta2="update tarjeta set tipo_tarjeta='"+tp_tarjeta1+"', cvv='"+cvv1+"', fecha_vence='"+fech_vence1+"' where no_tarjeta='"+no_tarjeta+"'";  
                                                sql.executeUpdate(actualizar_tarjeta2);
                                                
                                                out.print("<script>alert('Modificacion exitosa')</script>");
                                                response.sendRedirect("admin_consultar_clientes.jsp");
                                            }
                                        }else if(email1.equals(correo) & no_tarjeta1!=""+no_tarjeta+""){
                                            
                                            String validar_tarjeta1="select * from tarjeta where no_tarjeta='"+no_tarjeta1+"'";
                                            ResultSet validar2 = sql.executeQuery(validar_tarjeta1);
                                    
                                            if(validar2.next()){
                                                out.print("<script>alert('ERROR: El numero de tarjeta ya está registrado')</script>");
                                                response.sendRedirect("admin_consultar_clientes.jsp");
                                            }else{
                                            
                                                String actualizar_usuario3="update usuario set nombre='"+nombre1+"', apellido_paterno='"+ap_pat1+"', apellido_materno='"+ap_mat1+"', clave='"+password1+"', no_telefono='"+telefono1+"' where id_usuario='"+id_usuario+"'";
                                                sql.executeUpdate(actualizar_usuario3);
                                            
                                                String actualizar_tarjeta3="update tarjeta set tipo_tarjeta='"+tp_tarjeta1+"', no_tarjeta='"+no_tarjeta1+"', cvv='"+cvv1+"', fecha_vence='"+fech_vence1+"' where no_tarjeta='"+no_tarjeta+"'";  
                                                sql.executeUpdate(actualizar_tarjeta3);
                                                
                                                out.print("<script>alert('Modificacion exitosa')</script>");
                                                response.sendRedirect("admin_consultar_clientes.jsp");
                                            }
                                            
                                        }else if(email1!=""+correo+"" & no_tarjeta1!=""+no_tarjeta+""){
                                            
                                            String validar_email2="select * from usuario where correo_electronico='"+email1+"'";
                                            ResultSet validar3 = sql.executeQuery(validar_email2);
                                    
                                            if(validar3.next()){
                                                out.print("<script>alert('ERROR: El correo electronico ya está en uso')</script>");
                                                response.sendRedirect("admin_consultar_clientes.jsp");
                                            }else{
                                                String validar_tarjeta2="select * from tarjeta where no_tarjeta='"+no_tarjeta1+"'";
                                                ResultSet validar4 = sql.executeQuery(validar_tarjeta2);
                                    
                                                if(validar4.next()){
                                                    out.print("<script>alert('ERROR: El numero de tarjeta ya está registrado')</script>");
                                                    response.sendRedirect("admin_consultar_clientes.jsp");
                                                }else{
                                            
                                                    String actualizar_usuario4="update usuario set nombre='"+nombre1+"', apellido_paterno='"+ap_pat1+"', apellido_materno='"+ap_mat1+"', correo_electronico='"+email1+"', clave='"+password1+"', no_telefono='"+telefono1+"' where id_usuario='"+id_usuario+"'";
                                                    sql.executeUpdate(actualizar_usuario4);
                                            
                                                    String actualizar_tarjeta4="update tarjeta set tipo_tarjeta='"+tp_tarjeta1+"', no_tarjeta='"+no_tarjeta1+"', cvv='"+cvv1+"', fecha_vence='"+fech_vence1+"' where no_tarjeta='"+no_tarjeta+"'";  
                                                    sql.executeUpdate(actualizar_tarjeta4);
                                                    
                                                    out.print("<script>alert('Modificacion exitosa')</script>");
                                                    response.sendRedirect("admin_consultar_clientes.jsp");
                                                }
                                            }
                                        }
                                    }
                                %>
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos personales</h4>
                                        <div class="row">
                                            <div class="col">
                                                <%
                                                    String info="select * from usuario inner join cliente on usuario.id_usuario=cliente.id_usuario inner join tarjeta on cliente.no_tarjeta=tarjeta.no_tarjeta where usuario.id_usuario='"+id_usuario+"'";
                                                    ResultSet info1 = sql.executeQuery(info);
                                                    info1.next();
                                                %>
                                                <label for="nombre">Nombre(s)</label>
                                                <input name="nombre1" type="text" class="form-control" id="nombre" placeholder="Ej.Cristian" value="<% out.print(info1.getString("nombre")); %>"><br>
                                            </div>
                                            <div class="col">
                                                <label for="apellidopat">Apellido Paterno</label>
                                                <input name="apellidopat1" type="text" class="form-control" id="apellidopat" placeholder="Ej:Rodriguez" value="<% out.print(info1.getString("apellido_paterno")); %>">
                                            </div>
                                            <div class="col">
                                                <label for="apellidomat">Apellido Materno</label>
                                                <input name="apellidomat1" type="text" class="form-control" id="apellidomat" placeholder="Ej:Vazquez" value="<% out.print(info1.getString("apellido_materno")); %>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="nombre">Telefono</label>
                                                <input name="telefono1" type="text" class="form-control" id="telefono" placeholder="Ej:55-3463-4867" value="<% out.print(info1.getString("no_telefono")); %>"><br>
                                            </div>
                                        </div>
                                        <h4>Datos de la cuenta</h4>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="nombre">Correo</label>
                                                <input name="email1" type="text" class="form-control" id="email" placeholder="correo@dominio.com" value="<% out.print(info1.getString("correo_electronico")); %>"><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="correo">Contraseña</label>
                                                <input name="password1" type="password" class="form-control" id="password" placeholder="************" value="" required="Ingresa tu contraseña"><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="correo">Confirmar contraseña</label>
                                                <input name="confirm_password1" type="password" class="form-control" id="confirm_password" placeholder="************" value="" required="Ingresa tu contraseña"><br>
                                            </div>
                                        </div>

                                        <h4>Datos bancarios</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Tipo de tarjeta</label>
                                                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="tp_tarjeta1" id="tp_tarjeta">
                                                    <% 
                                                        if(info1.getString("tipo_tarjeta").equals("Credito")){
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("tipo_tarjeta")); %>"><% out.print(info1.getString("tipo_tarjeta")); %></option>
                                                    <option value="Debito">Debito</option>
                                                    <%
                                                        }else{
                                                    %>
                                                    <option selected value="<% out.print(info1.getString("tipo_tarjeta")); %>"><% out.print(info1.getString("tipo_tarjeta")); %></option>
                                                    <option value="Credito">Credito</option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="correo">No. Tarjeta</label>
                                                <input name="no_tarjeta1" type="text" class="form-control" id="no_tarjeta" placeholder="Ej:5909809765452123" value="<% out.print(info1.getString("no_tarjeta")); %>"><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="correo">CVV</label>
                                                <input name="cvv1" type="text" class="form-control" id="cvv" placeholder="Ej:590" value="<% out.print(info1.getString("cvv")); %>"><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref" for="correo">Fech. Vencimiento</label>
                                                <input name="fech_vence1" type="month" class="form-control" id="fecha_venci" step="1" min="2020-07" max="2035-12" value="<% out.print(info1.getString("fecha_vence")); %>"><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Modificar cuenta</button>
                            </form>
                            <a href="../JSP1/index_cliente.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
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
