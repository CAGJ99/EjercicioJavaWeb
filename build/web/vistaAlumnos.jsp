<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : vistaAlumnos
    Created on : 11-06-2014, 07:25:16 AM
    Author     : Ruri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <h1>Lista de alumnos</h1>
   <table border="9">
            <tr>
                <td>rut</td>
                <td>nombre</td>
                <td>apellido</td>
                 <td>Edad</td>
                <td>Direccion</td>
            </tr>
    <c:forEach var="listaAlumnos" items="${sessionScope.listaAlumnos}">
        <tr>
                <td>${listaAlumnos.rut}</td>
                <td>${listaAlumnos.nombre}</td>
                <td>${listaAlumnos.apellido}</td>
                <td>${listaAlumnos.edad}</td>
                <td>${listaAlumnos.direccion}</td>
        </tr>
                
    </c:forEach>
        <a href ="index.jsp">Volver</a>
    </body>
</html>
