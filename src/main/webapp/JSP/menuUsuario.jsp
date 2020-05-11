<%-- 
    Document   : menuUsuario
    Created on : 08-may-2020, 22:04:06
    Author     : Francisco_Antonio
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page session="true" %>
<%
    
    HttpSession sesion = request.getSession();
    String usuario = (String) sesion.getAttribute("usuario");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
                <!-- Archivo de estilos de la página. -->
        <link rel="stylesheet" href="../CSS/menu.css">
        <title>Men&uacute; Usuario: <%=sesion.getAttribute("usuario")%></title>
    </head>
    <body>
<%
            //Obtenemos la fecha y hora actual del sistema.
            Date fecha = new Date();
            /*Se asigna formato de fecha, (Día de la semana (en letras), 
              día 'de' mes 'de' año 'a las' hora del sistema (hora,minutos y segundos).)*/  
            String strDateFormat = "EEEEE, d 'de' MMMM 'de' YYYY 'a las' HH:MM:s";
            // La cadena de formato de fecha se pasa como un argumento.
            SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat);
%>
            <%
                if(sesion.getAttribute("usuario")==null){
                    //Si no se creó la sesión redirigir a index.jsp con su error.
                    response.sendRedirect("login.jsp?error=2"); 
                }else{  
                    //Todo es correcto se muestra el contenido.
                    %>
        <h2>Men&uacute; de Administraci&oacute;n de  <%=sesion.getAttribute("usuario")%></h2><br>
        <h3>&Uacute;ltimo acceso: <%=objSDF.format(fecha)%></h3>
        <p>Opciones Disponibles:</p>
        
        <!--redirigimos a cerrarSesion.jsp, para cerrar sesión-->
        <button class="btn btn-lg btn-primary" type="submit" name="botonCookie" value="Cerrar sesion" onclick="window.location.href='cerrarSesion.jsp'">Cerrar Sesi&oacute;n</button>
                   <%
                }
            %>
    </body>
</html>
