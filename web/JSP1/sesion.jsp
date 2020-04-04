<%-- 
    Document   : sesion.jsp
    Created on : 3/04/2020, 04:05:01 PM
    Author     : Juan J. Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="iniciar_sesion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            HttpSession sesion = request.getSession();
            String email=(String)sesion.getAttribute("email");
            String id_usuario=(String)sesion.getAttribute("id_usuario");
            
            String datos="select * from usuario where id_usuario='"+id_usuario+"'";
            ResultSet datos1 = sql.executeQuery(datos);
            datos1.next();
            String tipo_usuario=datos1.getString("tipo_usuario");
                    
            if(tipo_usuario.equals("usuario")){
                response.sendRedirect("index_cliente.jsp");
            }else if(tipo_usuario.equals("Empleado")){
                response.sendRedirect("#");
            }else if(tipo_usuario.equals("Jefe")){
                response.sendRedirect("index_jefes.jsp");
            }else if(tipo_usuario.equals("Administrador")){
                response.sendRedirect("index_admin.jsp");
            }else{
                out.print("<script>alert('Usuario incorrecto')</script>");
            }
            
        %>
    </body>
</html>
