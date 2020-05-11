<%-- 
    Document   : comprobacionLogin
    Created on : 08-may-2020, 21:58:25
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<%
    String usuario="paquito";
    String pass="1234";
    String u=request.getParameter("usuario");
    String p=request.getParameter("password");
    HttpSession sesion=request.getSession();
    
    //Se comprueba si el usuario y la contraseña son correctos.
    if(usuario.equals(u) && pass.equals(p)){    
        //Si son correctos se crea la sesión.
        sesion.setAttribute("usuario", u);
        sesion.setAttribute("password", p);
        if(request.getParameter("recordar")!=null){
            //Si se ha marcado recordar nombre, se crea la cookie.
            Cookie cookie=new Cookie("nombre",u);
            cookie.setMaxAge(60*60*24);
            response.addCookie(cookie);
        }
        //Si todo está correcto se redirige al menú.
        response.sendRedirect("menuUsuario.jsp");  
    }else{
         /*Si los datos no son los correctos se redirige al index.jsp
         con su error correspondiente.*/
        response.sendRedirect("index.jsp?error=1");
    }
    
%>
