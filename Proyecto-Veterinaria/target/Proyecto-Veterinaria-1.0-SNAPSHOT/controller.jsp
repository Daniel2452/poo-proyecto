<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ include file="conexion.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Generando sesion</h1>
<%
        HttpSession session_actual = request.getSession(true);
        String operacion = request.getParameter("operacion");
        out.println(operacion);
        if (operacion.equals("salir")) {
            session_actual.setAttribute("USER", null);
            session_actual.setAttribute("NAME", null);
            response.sendRedirect("login.html");
        } else if (operacion.equals("logueo")) {
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            try {
                st = conexion.prepareStatement(
                        "select count(usuario),nombre_persona from usuarios where usuario= ? and contrasenia=SHA2(?,?) ");
                st.setString(1, usuario);
                st.setString(2, usuario);
                st.setString(3, password);
                rs = st.executeQuery( );
                rs.next( );
                if (rs.getInt(1) == 1) { //solo una coincidencia es permitida
                    session_actual.setAttribute("USER", usuario);
                    session_actual.setAttribute("NAME", rs.getString(2));
                    response.sendRedirect("principal.jsp");
                } else {
                    response.sendRedirect("login.html");
                }
                rs.close( );
                conexion.close( );
            } catch (SQLException throwables) {
                throwables.printStackTrace( );
            }
        } else if (operacion.equals("insertar")) {
            String nombre=request.getParameter("nombre");
            String mascota =request.getParameter("mascota");
            Date fecha= Date.valueOf(request.getParameter("fecha"));
            Time hora= Time.valueOf(request.getParameter("hora"));
            String estado=request.getParameter("estado");
            st = conexion.prepareStatement("INSERT INTO citas(nombre_persona, mascota, fecha, hora, estado) VALUES (?, ? , ?, ? ,?)" );
            st.setString(1,nombre);
            st.setString(2, mascota);
            st.setDate(3, fecha);
            st.setTime(4,hora);
            st.setString(5, estado);
            st.executeUpdate( );
            response.sendRedirect("principal.jsp?exito=si");
        }else if (operacion.equals("modificar")) {
            String nombre =request.getParameter("nombre");
            String mascota =request.getParameter("mascota");
            String fecha=request.getParameter("fecha");
            String hora=request.getParameter("hora");
            String estado=request.getParameter("estado");
            st = conexion.prepareStatement("UPDATE citas SET nombre_persona=?,mascota=?,fecha=?,hora=?,estado=? WHERE id_citas=?");
            st.setString(1,nombre);
            st.setString(2, mascota);
            st.setString(3, fecha);
            st.setString(4,hora);
            st.setString(5, estado);
            st.executeUpdate( );
            response.sendRedirect("principal.jsp?exito=si");
        }else if (operacion.equals("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            st = conexion.prepareStatement("DELETE FROM citas WHERE id_citas=?");
            st.setInt(1, id);
            st.executeUpdate( );
            response.sendRedirect("principal.jsp?exito=si");
        }%>
</body>
</html>
