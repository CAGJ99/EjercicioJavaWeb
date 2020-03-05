<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : vistaAsignatura
    Created on : 11-06-2014, 10:59:39 AM
    Author     : Ruri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table border="1">
            <tr>
                <td>codigo</td>
                <td>nombre</td>
                <td>cantidad de Horas</td>
                <td>Carrera</td>
            </tr>
        <h1>Mostrar</h1>
    <c:forEach var= "listaAsignatura" items= "${sessionScope.listaAsignatura}">
        <tr>
                <td>${listaAsignatura.codigo}</td>
                <td>${listaAsignatura.nombreAsignatura}</td>
                <td>${listaAsignatura.cantidadHoras}</td>
                <td>${listaAsignatura.carrera}</td>
        </tr>
        <a href ="index.jsp">Volver</a>
</c:forEach>
                 
    </body>
</html>
