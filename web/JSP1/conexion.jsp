
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.Connection"
        import="java.sql.DriverManager"
        import="java.sql.ResultSet"
        import="java.sql.Statement"
        import="java.sql.SQLException"
        %>

    <%
    Connection conex=null;
    Statement sql=null;
    
try{
    Class.forName("org.postgresql.Driver");
    conex=(Connection)DriverManager.getConnection("jdbc:postgresql://localhost:5432/carsale","postgres","bd");//aqui va la contraseña de su postgres instalado en su maquina 
    sql=conex.createStatement();
    out.print("Conexion a la base de datos exitosa :3");
}catch(Exception e){
    out.print("Conexion a la base de datos fallo" + e);
    
}
    
%>
