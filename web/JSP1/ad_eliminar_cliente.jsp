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
            String id_cliente=request.getParameter("id_cliente");
            String consultar_tarjeta="select * from cliente where id_usuario='"+id_cliente+"'";
            ResultSet consultar_tarjeta1=sql.executeQuery(consultar_tarjeta);
            consultar_tarjeta1.next();
            String no_tarjeta=consultar_tarjeta1.getString("no_tarjeta");
            
            String eliminar_cliente="delete from usuario where id_usuario='"+id_cliente+"'";
            sql.executeUpdate(eliminar_cliente);
            String eliminar_tarjeta="delete from tarjeta where no_tarjeta='"+no_tarjeta+"'";
            sql.executeUpdate(eliminar_tarjeta);
            out.print("<script>alert('Eliminación exitosa')</script>");
            response.sendRedirect("admin_consultar_clientes.jsp");
        %>
    </body>
</html>
