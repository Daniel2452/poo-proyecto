<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 06:47
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.text.DateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%!
    int numeroAccesos = 0;
    DateFormat formatoHora = new SimpleDateFormat("HH:mm:ss");
    DateFormat formatoFecha = new SimpleDateFormat("dd/MM/yyyy");
    java.util.Date primerAcceso = new java.util.Date();

    private Date ahora(){
        Date now = new Date();
        return now;
    }
%>
<html>
<head>
    <title>Ejemplo de Declaraciones en JSP</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="card">
        <h3 class="card-header">Accesos a la página</h3>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">
                <%="La página ha sido accedida " + (++numeroAccesos)
                   + " veces desde el arranque del servidor"%>
            </li>
            <li class="list-group-item">
                <%="El primer acceso a la página se realizó el día "
                   + formatoFecha.format(primerAcceso) + " a las "
                   + formatoHora.format(primerAcceso)%>
            </li>
            <li class="list-group-item">
                <%="El ultimo acceso fue el " + formatoFecha.format(ahora())
                   + " a las " + formatoHora.format(ahora())%>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
