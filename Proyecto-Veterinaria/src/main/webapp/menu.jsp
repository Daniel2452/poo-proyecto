<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 07:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession session_actual = request.getSession(false);
    String usuario = (String) session_actual.getAttribute("USER");
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
    <div class="container">
        <h1>Veterinaria Cat-Dog</h1>
        <button><a href="comprar.jsp">Comprar Producto</a></button>
        <button><a href="controller.jsp?operacion=salir">Logout</a></button>
    </div>
</nav>
