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
            String id_auto=request.getParameter("id_auto");
            String eliminar_auto="delete from automovil where id_auto='"+id_auto+"'";
            sql.executeUpdate(eliminar_auto);                        
            out.print("<script>alert('Eliminación exitosa')</script>");
            response.sendRedirect("admin_consultar_automovil.jsp");
        %>
    </body>
</html>
