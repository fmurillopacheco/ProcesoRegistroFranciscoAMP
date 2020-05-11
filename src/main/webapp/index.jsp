<%-- 
    Document   : index
    Created on : 08-may-2020, 21:36:01
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CDN Bootstrap. -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        
        <!-- Archivo de estilos de la página. -->
        <link rel="stylesheet" href="CSS/login.css">
        <title>Introduzca su Login</title>

    </head>
    <body>
            <!-- Se Comprueba si existe la cookie que guarda el nombre y 
            se es así se usa. -->
 
    <div class = "container">
        <div class="wrapper">
            <form id="formulario" action="JSP/comprobacionLogin.jsp" method="post" name="Login_Form" class="form-signin">
                
                <h3 class="form-signin-heading">Introduzca su Login</h3>
                <hr class="colorgraph"><br>
                   <!-- Se Comprueba si existe hay algún error y se muestra. -->
            <%
                String error=String.valueOf(request.getParameter("error"));
                if(error.equals("1")){
            %>
            <p class="error">Datos incorrectos</p>
            
            <%
                }else if(error.equals("2")){
            %>
            <p class="error">Por favor, es necesario identificarse. Gracias. </p>
            
            <%
                }
            %>
            
            <%
                Cookie[] cookies=request.getCookies();
                Cookie cookie=null;
                for(Cookie c:cookies){
                    if(c.getName().equals("nombre")){
                        cookie=c;
                    }
                }
                if(cookie!=null){
            %>
                <input id="usuario" type="text" class="form-control" name="usuario" placeholder="Usuario: " value="<%=cookie.getValue()%>" required="" autofocus="" />
            <%
                }else{
            %>
            
                <input id="usuario" type="text" class="form-control" name="usuario" placeholder="Usuario: " required="" autofocus=""/>
                    
            <%
                }
            %>
                <input id="password" type="password" class="form-control" name="password" placeholder="Password: " required=""/>     		  
            <p align="center">Recordar usuario <input type="checkbox" id="recordar" name="recordar" value=""></p>
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="botonCookie" value="Login">Login</button>
            <br>
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="botonCookie" value="Menú inicial" onclick="window.location.href='index.jsp'">Menú Inicial</button>
            </form>			
        </div>
        
    </div>
                  

    </body>
</html>
