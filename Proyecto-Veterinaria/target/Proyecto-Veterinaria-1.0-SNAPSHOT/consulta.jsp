<%--
  Created by IntelliJ IDEA.
  User: Molina
  Date: 14/4/2024
  Time: 09:51
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="conexion.jsp" %>
<div class="">
    <table class="table table-striped table-bordered table-hover"> <thead>
    <tr>
        <th>Numero de cita</th>
        <th>Duenio/a</th>
        <th>Mascota</th>
        <th>Fecha</th>
        <th>Hora</th>
        <th>Estado</th>
        <th>Eliminar</th>
        <th>Modificar</th>
    </tr>
    </thead>
        <tbody>
            <%
 st = conexion.prepareStatement("SELECT * FROM citas");
 rs = st.executeQuery( );
 while (rs.next( )) {
 %>
        <tr>
            <td><%=rs.getString("id_citas")%>
            </td>
            <td><%=rs.getString("nombre_persona")%>
            </td>
            <td><%=rs.getString("mascota")%>
            </td>
            <td><%=rs.getString("fecha")%>
            </td>
            <td><%=rs.getString("hora")%>
            </td>
            <td><%=rs.getString("estado")%>
            </td>
            <td><button class="btn btn-danger"
                        onclick="alerta('<%=rs.getString("id_citas")%>')">
                Eliminar</button></td>
            <td><button class="btn btn-info"
                        onclick="modificar('<%=rs.getString("id_citas")%>',
                                '<%=rs.getString("nombre_persona")%>',
                                '<%=rs.getString("mascota")%>',
                                '<%=rs.getString("fecha")%>',
                                '<%= rs.getString("hora")%>',
                                '<%=rs.getString("estado")%>')"> Modificar
            </button>
            </td>
        </tr>
            <%
                }
                conexion.close( );
            %>
        </tbody>
    </table>
</div>
<script>
    function alerta(id) {
        var mensaje;
        var opcion = confirm("Esta seguro de eliminar este registro");
        if (opcion == true) {
            location.href ="controller.jsp?operacion=eliminar&id="+id;
        }
    }
    function modificar(id, nombre,mascota,fecha,hora,estado) {
        document.getElementById("idcitas").value=id;
        document.getElementById("nombre").value=nombre;
        document.getElementById("mascota").value=mascota;
        document.getElementById("fecha").value=fecha;
        document.getElementById("hora").value=hora;
        document.getElementById("estado").value=estado;
        document.getElementById("operacion").value="modificar";
        hijo = document.getElementById("passhidden");
        padre = hijo.parentNode;
        padre.removeChild(hijo);
    }
</script>
