<%-- 
    Document   : eliminarAlumno
    Created on : 11-06-2014, 03:35:56 PM
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
        <h1>Eliminar Alumno</h1>
        <form action="eliminaralumno.do" method="post">
        <table border="1">
          
            <tbody>
                <tr>
                    <td>Ingrese rut</td>
                    <td><input type = "text" name ="txtrut"></td>
                </tr>
                <tr>
                    <td><input type = "submit" value = "Eliminar"></td>
                </tr>
            </tbody>
        </table>
        </form>
    </body>
</html>
