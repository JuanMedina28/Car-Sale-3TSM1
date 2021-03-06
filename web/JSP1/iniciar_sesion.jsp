<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html lang="Spanish">
    <head>
        <title>Iniciar sesion</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../CSS/sign-styles.css" type="text/css"> 
        <script  src = " https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js " > </script>
        <link  rel = " stylesheet " href = " https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script  src = " https://use.fontawesome.com/releases/v5.0.7/js/all.js " > </script>
        <link  rel = " stylesheet " href = " https://use.fontawesome.com/releases/v5.0.8/css/solid.css " >
    <script  src = " https://use.fontawesome.com/releases/v5.0.7/js/all.js " > </script>
    </head>
    <body>
        <%            
            String varuser = request.getParameter("txtemail");
            String varpass = request.getParameter("txtpass");
            if(varuser!=null && varpass!=null){
                String qry="select * from usuario where correo_electronico='"+varuser+"'"+" AND clave='"+varpass+"'";
                ResultSet data = sql.executeQuery(qry);
                if(data.next()){
                    HttpSession sesion_act = request.getSession();
                    sesion_act.setAttribute("email",varuser);
                    sesion_act.setAttribute("id_usuario",data.getString("id_usuario"));
                    response.sendRedirect("sesion.jsp");
                }else{
                    out.print("<script>alert('Correo y/o contraseña incorrectos')</script>");
                }
            }

        %>

        <div class="modal-dialog text-center">
            <div class="col-sm-8 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="../Images/186313.png" width="200" height="200">
                    </div>
                    <form class="col-12" method="post" action="iniciar_sesion.jsp">
                        <div class="form-group" id="user-group">
                            <input type="email" name="txtemail" class="form-control" placeholder="Correo de usuario">                        
                        </div>
                        <div class="form-group" id="contra-group">
                            <input type="password" name="txtpass" class="form-control" placeholder="Contrasena">                        
                        </div>
                        <button type="submit" class="btn btn-danger"><i class="fas fa-sign-in-alt"></i>  Ingresar</button>
                    </form>
                    <div class="col-12 forgot">
                        <a href="#">Recordar contrasena</a>
                    </div>
                    <div class="col-12 regis">
                        <a href="registrar_cliente.jsp">Aun no tengo cuenta</a>
                    </div>
                    <div class="comeback" id="regresar">
                        <a href="../index.html"><i class="fas fa-chevron-circle-left"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
