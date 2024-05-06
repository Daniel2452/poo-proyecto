<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 06:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tablas de Multiplicar</title>
</head>
<body>

<h2>Tablas de Multiplicar</h2>

<table border="1">
    <thead>
    <tr>
        <th>Tabla</th>
        <th>Resultado</th>
    </tr>
    </thead>
    <tbody>
    <% for (int i = 1; i <= 10; i++) { %>
    <tr>
        <td><%= i %></td>
        <td>
            <%
                for (int j = 1; j <= 10; j++) {
                    int resultado = i * j;
            %>
            <%= i %> x <%= j %> = <%= resultado %><br>
            <% } %>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>
