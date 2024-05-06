<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 06:03
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.*"%>
<%!
  String titulo = "Mi primer ejemplo con JSP";
  String cadena = "Primer ejemplo";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title><%=titulo%></title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <h5 class="card-title"><%=titulo%></h5>
      <h6 class="card-subtitle mb-2 text-muted"><%=cadena%></h6>
      <p class="card-text"><%out.println(new Date( ));%></p>
    </div>
  </div>
</div>
</body>
</html>

