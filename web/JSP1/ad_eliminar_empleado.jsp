<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id_empleado=request.getParameter("id_emple");
            String eliminar_empleado="delete from usuario where id_usuario='"+id_empleado+"'";
            sql.executeUpdate(eliminar_empleado);                        
            out.print("<script>alert('Eliminación exitosa')</script>");
            response.sendRedirect("admin_consultar_empleados.jsp");
        %>
    </body>
</html>
