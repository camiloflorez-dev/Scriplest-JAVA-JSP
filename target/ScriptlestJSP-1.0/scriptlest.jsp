<%-- 
    Document   : scriptlest
    Created on : 5/09/2022, 7:51:15 p. m.
    Author     : Camilo
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con scriplets</title>
    </head>
    <body>
        <h1>JSP con scriplets</h1>
        <br>
        <%-- Scriptlet para enviar informacion al navegador--%>
        <%
            out.println("Saludos desde un scriptlet");
        %>
        <%-- Scriptlet para manipular los objetos implicitos--%>
        <% 
            String nombreAplicacion = request.getContextPath();
            out.println("Nombre del app: " + nombreAplicacion);
        %>
        <br>
        <%-- Scriptlet con codigo condicionado--%>
        <% 
            if (session != null && session.isNew()) {
        %>
        la sesion SI es nueva
        <%
            } else if (session != null){
        %>
        la sesion NO es nueva
        <%
            }
        %>
        <a href="index.html">Inicio</a>
    </body>
</html>
