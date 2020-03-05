<%-- 
    Document   : vistaUno1
    Created on : 11-06-2014, 04:01:51 PM
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
        <h1>Buscar</h1>
        <jsp:useBean id="alumno" scope="session" class="dto.AlumnoDTO" />
         <h1>Datos del Alumno <jsp:getProperty name="alumno" property="rut" /></h1>
         Rut:<jsp:getProperty name="alumno" property="rut" /><br>
         Nombre:<jsp:getProperty name="alumno" property="nombre" /><br>
        Apelldo:<jsp:getProperty name="alumno" property="apellido" /><br>
        Edad:<jsp:getProperty name="alumno" property="edad" /><br> 
        Direccion:<jsp:getProperty name="alumno" property="direccion" /><br>
        
    </body>
</html>
