<%@include file="conexion.jsp" %>
<html>
    <head>
        <title>Eliminar Empleado</title>
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
                        <%
                            HttpSession sesion = request.getSession();
                            String email=(String)sesion.getAttribute("email");
                            String id_usuario=(String)sesion.getAttribute("id_usuario");
               
                            String id_cliente=request.getParameter("id_cliente");
                            String password=request.getParameter("password");
                            
                            if(password!=null){
                                String validar_password="select * from usuario inner join empleado on usuario.id_usuario=empleado.id_usuario where usuario.id_usuario='"+id_usuario+"'";
                                ResultSet validar_password1 = sql.executeQuery(validar_password);
                                validar_password1.next();
                                String clave=validar_password1.getString("clave");
                                
                                if(password!=""+clave+""){
                                    response.sendRedirect("ad_eliminar_cliente.jsp?id_cliente="+id_cliente+"");
                                    
                                }else{
                                    out.print("<script>alert('Contrase�a incorrecta, intenta otra vez')</script>");
                                }
                                
                            }
                            String info="select * from usuario inner join cliente on usuario.id_usuario=cliente.id_usuario where usuario.id_usuario='"+id_cliente+"'";
                            ResultSet info1 = sql.executeQuery(info);
                            info1.next();
                            
                        %>
                        <div class="card-header"><h3 style="text-align: center">Eliminar <% out.print(info1.getString("tipo_usuario")); %></h3></div><br>
                        <div class="card-body">
                            <form id="form1" action="admin_eliminar_cliente.jsp?id_cliente=<% out.print(info1.getString("id_usuario")); %>" method="post" class="needs-validation">
                                <div style="text-align: center">
                                    <h3>Se eliminar� a <% out.print(info1.getString("nombre")+" "+info1.getString("apellido_paterno")); %></h3>
                                </div><br>
                                <div style="text-align: center">
                                    <div class="col-4">
                                        <label for="correo">Ingresa tu contrase�a para continuar</label>
                                        <input name="password" type="password" class="form-control" id="password" placeholder="************" value=""><br>
                                    </div>
                                </div><br><br>
                                <div style="margin-left: 25%;">
                                    <button type="submit" class="btn btn-danger"  style="width: 25%">Eliminar</button>
                                    <a href="../JSP1/admin_consultar_clientes.jsp"><button type="button" class="btn btn-success"  style="width: 25%;margin-left: 15%;">Cancelar</button></a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>

