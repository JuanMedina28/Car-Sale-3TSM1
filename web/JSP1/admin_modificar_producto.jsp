<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar Producto</title>
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
                        <div class="card-header"><h3>Modificar producto</h3></div>
                        <div class="card-body">
                            <%
                                String id_producto=request.getParameter("id_producto");
                                
                                String nombre=request.getParameter("nombre");
                                String contenido=request.getParameter("contenido");
                                String cantidad=request.getParameter("cantidad");
                                String precio=request.getParameter("precio");
                                String detalles=request.getParameter("detalles");
                                
                                if(nombre!=null & contenido!=null & cantidad!=null){
                                    String actualizar_producto="update producto set nombre='"+nombre+"', contenido='"+contenido+"', cantidad='"+cantidad+"', precio='"+precio+"', detalles='"+detalles+"' where id_producto='"+id_producto+"' ";
                                    sql.executeUpdate(actualizar_producto);
                                    out.print("<script>alert('Modificacion exitosa');</script>");
                                    response.sendRedirect("admin_consultar_productos.jsp");
                                }
                                
                                String datos="select * from producto where id_producto='"+id_producto+"'";
                                ResultSet datos1=sql.executeQuery(datos);
                                datos1.next();
                            %>
                            <form name="form1" id="form1" action="admin_modificar_producto.jsp?id_producto=<% out.print(datos1.getString("id_producto")); %>" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Informacion del producto</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label for="id_producto">Nombre</label>
                                                <input name="nombre" type="text" class="form-control" id="seriea" placeholder="Ej:Facia delantera" value="<% out.print(datos1.getString("nombre")); %>"><br>
                                            </div>
                                            <div class="col">
                                                <label for="id_producto">Contenido</label>
                                                <input name="contenido" type="text" class="form-control" id="seriea" placeholder="Ej:1" value="<% out.print(datos1.getString("contenido")); %>"><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <label for="id_producto">Cantidad</label>
                                                <input name="cantidad" type="text" class="form-control" id="seriea" placeholder="Ej:24" value="<% out.print(datos1.getString("cantidad")); %>"><br>
                                            </div>
                                            <div class="col-6">
                                                <label for="subtotal">Precio</label>
                                                <input name="precio" type="text" class="form-control" id="asubt" placeholder="Ej:5000" value="<% out.print(datos1.getString("precio")); %>"><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <label for="id_producto">Detalles</label>
                                                <input name="detalles" type="text" class="form-control" id="seriea" placeholder="Ej:Facia declantera - Camaro." value="<% out.print(datos1.getString("detalles")); %>"><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Modificar producto</button>
                            </form>
                            <a href="admin_consultar_productos.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -8%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>