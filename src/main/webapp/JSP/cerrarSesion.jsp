<%-- 
    Document   : cerrarSesion
    Created on : 10-may-2020, 20:11:29
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cerrando Sesi&oacute;n ... </h1>
    </body>
</html>
<%  //Se elimina la sesión y se redirige a login
    HttpSession sesion=request.getSession();
    sesion.invalidate();
    response.sendRedirect("../index.jsp");
%>
