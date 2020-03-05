<%-- 
    Document   : BuscarAlumno
    Created on : 11-06-2014, 03:54:26 PM
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
        <h1>Ingrese el rut</h1>
        <form method ="post" action ="buscaralumno.do">
        <table border="1">
            
            <tbody>
                <tr>
                    <td>Rut</td>
                </tr>
                <tr>
                    <td><input type ="text" name="txtrut"></td>
                   
                </tr>
                <tr>
                    <td><input type ="submit" value = "Buscar"></td> 
                </tr>
            </tbody>
        </table>
    </form>
    </body>
</html>
