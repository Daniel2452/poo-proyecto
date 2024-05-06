<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 07:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection conexion =null;
    //private Statement s =null;
    ResultSet rs=null;
    PreparedStatement st =null;
    // Se obtiene una conexión con la base de datos.
    Class.forName("com.mysql.jdbc.Driver");
    conexion =
            DriverManager.getConnection(
                    "jdbc:mysql://localhost/personabddg8",
                    "root", "");
    String valor;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
