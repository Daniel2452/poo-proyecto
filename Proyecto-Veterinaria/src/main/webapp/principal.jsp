<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ include file="conexion.jsp" %>
<%
  HttpSession session_actual = request.getSession(false);
  String usuario = (String) session_actual.getAttribute("USER");
  String nombres = (String) session_actual.getAttribute("NAME");
  if (usuario == null) {
    response.sendRedirect("login.html");
  }
%>
<html lang="es">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bienvenido <%=nombres%>
  </title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fontawesome/4.7.0/css/fontawesome.min.css">
  <script src="js/jquery-3.2.1.slim.min.js"></script> <script src="js/bootstrap1.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"/>
<h2 class="text-center">
  Bienvenido: (<%=usuario%>) <%=nombres%>
</h2>
<div class="container">
  <div style="padding: 0;">
    <form role="form" action="controller.jsp" method="POST">
      <div class="col-md-12" id="conten">
        <input type="hidden" name="id" id="idcitas">
        <input type="hidden" value="insertar" name="operacion" id="operacion">
        <div class="form-group">
          <label for="nombre">Ingrese el nombre del duenio/a:</label>
          <div class="input-group">
            <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingrese el nombre del duenio/a" required>
          </div>
        </div>
        <br>
        <div class="form-group">
          <label for="mascota">Ingrese el nombre de la mascota</label>
          <div class="input-group">
            <input type="text" class="form-control" id="mascota" name="mascota" placeholder="Ingresa el nombre de la mascota" required>
          </div>
        </div>
        <br>
        <div class="form-group">
          <label for="fecha">Ingrese la fecha</label>
          <div class="input-group">
            <select name="fecha" id="fecha" class="form-control" required>
              <option value="2024-05-10">2024-05-10</option>
              <option value="2024-05-11">2024-05-11</option>
              <option value="2024-05-12">2024-05-12</option>
              <option value="2024-05-13">2024-05-13</option>
              <option value="2024-05-14">2024-05-14</option>
              <option value="2024-05-15">2024-05-15</option>
            </select>
          </div>
        </div>
          <br>
        <div class="form-group">
          <label for="hora">Ingrese la hora</label>
          <div class="input-group">
            <select name="hora" id="hora" class="form-control" required>
              <option value="10:30:00">09:00:00</option>
              <option value="10:30:00">10:30:00</option>
              <option value="10:30:00">11:30:00</option>
              <option value="10:30:00">12:30:00</option>
              <option value="10:30:00">02:30:00</option>
              <option value="10:30:00">03:30:00</option>
            </select>
          </div>
        </div>
        <div style="margin-left: 30%;">
          <input type="submit" class="btn btn-success col-md-6 " value="Guardar">
        </div>
      </div>
    </form> <%
    if(request.getParameter("exito") != null){
      out.println("<div class='alert alert-success' role='alert'>Operacion realizada con exito</div>");
    }
  %>
  </div>
  <!--notese el uso de jsp:include -->
  <jsp:include page="consulta.jsp"/>
</div>
</body>
</html>
