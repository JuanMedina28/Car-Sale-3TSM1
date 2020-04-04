<%-- 
    Document   : cerrar_sesion
    Created on : 4/04/2020, 11:01:29 AM
    Author     : Juan J. Medina
--%>

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
          HttpSession sesion=request.getSession();
          sesion.invalidate();
          HttpSession sesion_act=request.getSession();
          sesion_act.invalidate();
          conex.close();
          response.sendRedirect("../index.html");
        %>
    </body>
</html>