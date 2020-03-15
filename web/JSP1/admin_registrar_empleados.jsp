<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Empleado</title>
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
            String email = request.getParameter("correo");
            String password = request.getParameter("pass");
            String telefono = request.getParameter("telefono");
            String tipo_usu = request.getParameter("puesto");
            

            if (nombre != null) {
                String qry = "INSERT INTO usuario(nombre, apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values ('" + nombre + "','" + ap_pat + "','" + ap_mat + "','" + email + "','" + password + "','" + telefono + "','" + tipo_usu + "')";
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
                                <a class="nav-item nav-link active" href="../index.html">Inicio</a>
                                <a class="nav-item nav-link" href="../JSP1/index_servicios.jsp">Servicios</a>
                                <a class="nav-item nav-link" href="../JSP1/index_admin.jsp">Mi cuenta</a>
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
                        <div class="card-header"><h3>Registrar un Empleado</h3></div>
                        <div class="card-body">
                            <form id="form1" action="#" method="post" class="needs-validation" onsubmit="return validar();">
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
                                            <div class="col-8">
                                                <label for="nombre">Correo electrónico</label>
                                                <input name="correo" type="email" class="form-control" id="email" placeholder="correo@dominio.com" value=""><br>
                                            </div>
                                            
                                            <div class="col-4">
                                                <label for="nombre">Telefono</label>
                                                <input name="telefono" type="text" class="form-control" id="telefono" placeholder="Ej:55-3463-4867" value=""><br>
                                            </div>
                                        </div>
                                        
                                        
                                         
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Ingresar Contraseña</label>
                                                <input name="pass" type="password" class="form-control" id="password" placeholder="********" value="">
                                            </div>
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Ingresar de Nuevo</label>
                                                <input name="pass2" type="password" class="form-control" id="confirm_password" placeholder="********" value="">
                                            </div>
                                        </div><br>
                                        
                                        
                                        <h4>Dirección</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="nombre">Estado</label>
                                                <input name="estado" type="text" class="form-control" id="estado" placeholder="Ej:Mexico" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="apellidopat">Municipio</label>
                                                <input name="municipio" type="text" class="form-control" id="municipio" placeholder="Ej:Tecamac" value="">
                                            </div>
                                            <div class="col-4">
                                                <label for="apellidomat">Código Postal</label>
                                                <input name="cp" type="text" class="form-control" id="cp" placeholder="Ej:5587" value="">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="correo">Colonia</label>
                                                <input name="colonia" type="text" class="form-control" id="colonia" placeholder="Ej:San Martin" value=""><br>
                                            </div>
                                            <div class="col-4">
                                                <label for="correo">Calle</label>
                                                <input name="calle" type="text" class="form-control" id="calle" placeholder="Ej:Roble" value=""><br>
                                            </div>
                                        </div>

                                        <h4>Datos Empresariales</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Puesto</label>
                                                <select class="custom-select my-1 mr-sm-2" id="tipo" name="puesto">
                                                    <option selected value="">Elige una opción</option>
                                                    <option value="Jefe">Jefe</option>
                                                    <option value="Empleado">Empleado</option>
                                                </select>
                                            </div>
                                            <div class="col-4">
                                                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Área</label>
                                                <select class="custom-select my-1 mr-sm-2" id="dep" name="area">
                                                    <option selected value="">>Elige una opción</option>
                                                    <option value="ventas">Ventas</option>
                                                    <option value="almacen">Almacen</option>
                                                    <option value="mecanico">Mecanico</option>
                                                </select>
                                            </div>
                                        </div><br>
                                        
                                        <div class="col-4">
                                            <label for="correo">Sueldo</label>
                                            <input name="sueldo" type="text" class="form-control" id="sueldo" placeholder="Ej:5900" value=""><br>
                                        </div>
                                        
                                    </div>
                                </div>
                                <button class="btn btn-danger" type="submit" >Registar empleado</button>
                            </form>
                             
                            <a href="index_admin.jsp"><button type="button" class="btn btn-dark"  style="width: 20%; margin-left: 30%; margin-top: -6.5%">Regresar</button></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
         <script language="JavaScript">

		function validar()
		{
                  var nombre, apellidopat, apellidomat, colonia,calle,tipo, dep, email,sueldo,telefono,password,confirm_password,estado,municipio,cp;
              
               expresion = /\w+@\w+\.+[a-z]/;
                   
                   nombre = document.getElementById("nombre").value;
                   apellidopat = document.getElementById("apellidopat").value;
                    apellidomat = document.getElementById("apellidomat").value;
                    colonia = document.getElementById("colonia").value;
                    calle = document.getElementById("calle").value;
                    tipo = document.getElementById("tipo").value;
                    dep = document.getElementById("dep").value;
                    email = document.getElementById("email").value;
                    sueldo = document.getElementById("sueldo").value;
                    telefono = document.getElementById("telefono").value;
                    password = document.getElementById("password").value;
                    confirm_password = document.getElementById("confirm_password").value;
                    estado = document.getElementById("estado").value;
                    municipio = document.getElementById("municipio").value;
                    cp = document.getElementById("cp").value;
                    
                    
                    
                   
               if( nombre===""||nombre.length>35){
		alert("El nombre esta vacio o esta superando los 35 caracteres");
		return false;
                }
                 else if( apellidopat===""||apellidopat.length>20){
		alert("El apellido paterno esta vacio o supera los 20 caracteres");
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
                else if( apellidomat===""||apellidomat.length>20){
                        alert("El apellido materno esta vacio o supera los 20 caracteres");
                        return false;
                }
                else if( colonia===""||colonia.length>20){
                        alert("La colonia esta vacia o supera los 10 caracteres");
                        return false;
                }else if( calle===""||calle.length>30){
                        alert("La calle esta vacia o supera los 30 caracteres");
                        return false;
                }else if( tipo===""){
                        alert("No se selecciono un Puesto");
                        return false;
                }else if( dep===""){
                        alert("No seleciono un área");
                        return false;
                }else if( sueldo===""){
                        alert("Sueldo vacio");
                        return false;
                }else if (isNaN(sueldo)) {
                        alert("El sueldo no es un numero");
                        return false;
                }else if( estado===""){
                        alert("El estado esta vacio");
                        return false;
                }else if( municipio===""){
                        alert("El municipio esta vacio");
                        return false;
                }else if( cp===""){
                        alert("Codigo postal esta vacio");
                        return false;
                }else if (isNaN(cp)) {
                        alert("El codigo postal no es un numero");
                        return false;
                }
                
                else if(!expresion.test(email)){
                        alert("Correo invalido");
                        return false;
                }else if( email===""||email.length>30){
                        alert("El email esta vacio o supera los 30 caracteres");
                        return false;
                } else if( telefono===""||telefono.length>10){
                        alert("El telefono esta vacio o supera los 10 caracteres");
                        return false;
                } else if (isNaN(telefono)) {
                        alert("El telefono no es un numero");
                        return false;
                }    
                
                    
                }
                
         </script>
        
    </body>
</html>
