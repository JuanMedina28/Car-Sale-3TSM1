<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Cliente</title>
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
            String nombre = request.getParameter("nombre");
            String ap_pat = request.getParameter("apellidopat");
            String ap_mat = request.getParameter("apellidomat");
            String email = request.getParameter("email");
            String password = request.getParameter("confirm_password");
            String telefono = request.getParameter("telefono");
            String tp_tarjeta = request.getParameter("tp_tarjeta");
            String no_tarjeta = request.getParameter("no_tarjeta");
            String cvv = request.getParameter("cvv");
            String fech_vence = request.getParameter("fech_vence");
            
            if(email!=null && password!=null){
                
                String validar_email="select * from usuario where correo_electronico='"+email+"'";
                ResultSet validar1 = sql.executeQuery(validar_email);
                
                if(validar1.next()){
                out.print("<script>alert('ERROR: El correo electronico ya está en uso')</script>");
                
                }else{
                    String validar_tarjeta="select * from tarjeta where no_tarjeta='"+no_tarjeta+"'";
                    ResultSet validar2 = sql.executeQuery(validar_tarjeta);
                
                    if(validar2.next()){
                    out.print("<script>alert('ERROR: El numero de tarjeta ya está en uso')</script>");
                    
                    }else{
                        String qry = "INSERT INTO usuario(nombre, apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono) values ('" + nombre + "','" + ap_pat + "','" + ap_mat + "','" + email + "','" + password + "','" + telefono + "')";
                        sql.executeUpdate(qry);
                        
                        String qry1="select * from usuario where correo_electronico='"+email+"'"+" AND clave='"+password+"'";
                        ResultSet data = sql.executeQuery(qry1);
                    
                        if(data.next()){
                            String qry2 = "INSERT INTO tarjeta values ('"+tp_tarjeta+"','"+no_tarjeta+"','"+cvv+"','"+fech_vence+"')";
                            sql.executeUpdate(qry2);
                    
                            String qry3="select * from tarjeta where no_tarjeta='"+no_tarjeta+"'";
                            ResultSet data2 = sql.executeQuery(qry3);
                    
                            if(data2.next()){
                                String id="select * from usuario where correo_electronico='"+email+"' and clave='"+password+"'";
                                ResultSet id1 = sql.executeQuery(id);
                                id1.next();
                                String id_cliente=id1.getString("id_usuario");
                        
                                String qry4 = "INSERT INTO cliente values ('"+id_cliente+"','"+no_tarjeta+"')";
                                sql.executeUpdate(qry4);
                        
                                out.print("<script>alert('Registro exitoso')</script>");
                                response.sendRedirect("index_admin.jsp");
                        
                            }else{
                                out.print("<script>alert('Error al registrar')</script>");
                            }
                        }else{
                            out.print("<script>alert('Error al registrar')</script>");
                        }
                    }
                }
            }else{
                
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
                        <div class="card-header"><h3>Registrar cliente</h3></div>
                        <div class="card-body">
                            <form name="form1" id="form1" action="#" method="post" class="needs-validation" onsubmit="return validar();">
                                <div class="form-row">
                                    <div class="col-md4 mb-3">
                                        <h4>Datos personales</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label for="nombre">Nombre(s)</label>
                                                <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Ej.Cristian" value=""><br>
                                            </div>
                                            <div class="col">
                                                <label for="apellidopat">Apellido Paterno</label>
                                                <input name="apellidopat" type="text" class="form-control" id="apellidopat" placeholder="Ej:Rodriguez" value="">
                                            </div>
                                            <div class="col">
                                                <label for="apellidomat">Apellido Materno</label>
                                                <input name="apellidomat" type="text" class="form-control" id="apellidomat" placeholder="Ej:Vazquez" value="">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="nombre">Telefono</label>
                                                <input name="telefono" type="text" class="form-control" id="telefono" placeholder="Ej:55-3463-4867" value=""><br>
                                            </div>
                                        </div>
                                        <h4>Datos bancarios</h4>
                                        <div class="row">
                                            <div class="col">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Tipo de tarjeta</label>
                                                <select class="custom-select my-1 mr-sm-2" id="tipo" name="tp_tarjeta">
                                                    <option selected value="">Elige una opción</option>
                                                    <option value="Credito">Crédito</option>
                                                    <option value="Debito">Débito</option>
                                                </select><br>
                                            </div>
                                            <div class="col">
                                                <label for="apellidopat">Número de tarjeta</label>
                                                <input name="no_tarjeta" type="text" class="form-control" id="apellidopat" placeholder="16 digitos" value="">
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col">
                                                <label for="apellidomat">CVV(Reverso de la tarjeta)</label>
                                                <input name="cvv" type="text" class="form-control" id="apellidomat" placeholder="111" value="">
                                            </div>
                                            <div class="col">
                                                <label for="apellidomat">Fecha de vencimiento</label>
                                                <input name="fech_vence" type="month" class="form-control" id="apellidomat" step="1" min="2020-07" max="2035-12">
                                            </div>
                                        </div><br>
                                        <h4>Datos de la cuenta</h4>
                                        <div class="row">
                                            <div class="col-8">
                                                <label for="nombre">Correo</label>
                                                <input name="email" type="text" class="form-control" id="email" placeholder="correo@dominio.com" value=""><br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="correo">Contraseña</label>
                                                <input name="password" type="password" class="form-control" id="password" placeholder="************" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="correo">Confirmar contraseña</label>
                                                <input name="confirm_password" type="password" class="form-control" id="confirm_password" placeholder="************" value=""><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit">Registar cliente</button>
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
                  var nombre, apellidopat, apellidomat, telefono, email, password, confirm_password;
                    
                    expresion = /\w+@\w+\.+[a-z]/;
                   
                   nombre = document.getElementById("nombre").value;
                   apellidopat = document.getElementById("apellidopat").value;
                    apellidomat = document.getElementById("apellidomat").value;
                    telefono = document.getElementById("telefono").value;
                    email = document.getElementById("email").value;
                    password = document.getElementById("password").value;
                    confirm_password = document.getElementById("confirm_password").value;
                   
               if( nombre===""||nombre.length>35){
		alert("El nombre esta vacio o esta superando los 35 caracteres");
		return false;
                }   
                else if( apellidopat===""||apellidopat.length>20){
		alert("El apellido paterno esta vacio o supera los 20 caracteres");
		return false;
                }
                else if( apellidomat===""||apellidomat.length>20){
                        alert("El apellido materno esta vacio o supera los 20 caracteres");
                        return false;
                }
                else if( telefono===""||telefono.length>10){
                        alert("El telefono esta vacio o supera los 10 caracteres");
                        return false;
                }else if( email===""||email.length>30){
                        alert("El email esta vacio o supera los 30 caracteres");
                        return false;
                }
                else if( password===""||password.length>16){
                        alert("La contraseña esta vacia o supera los 16 caracteres");
                        return false;
                }
                else if( confirm_password!==password){
                        alert("Las contraseñas no coinciden");
                        return false;
                }
                 else if (isNaN(telefono)) {
                        alert("El telefono no es un numero");
                        return false;
                }
                else if(!expresion.test(email)){
                        alert("Correo invalido");
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
