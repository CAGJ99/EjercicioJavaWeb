<%-- 
    Document   : asignatura
    Created on : 11-06-2014, 06:26:33 AM
    Author     : Ruri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Asignatura</title>
    </head>
    <body>
        <form method="post" action ="ingresarasignatura.do">
        <h1>ingrese asignatura</h1>
        <table border="9">
           
            <tbody>
                <tr>
                    <td>Codigo</td>
                    <td><input type ="text" name ="txtcodigo"></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type ="text" name ="txtnombre"></td>
                </tr>
                <tr>
                    <td>Cantidad de Horas</td>
                    <td><input type ="text" name ="txtcantidadhoras"></td>
                </tr>
                <tr>
                    <td>Carrera</td>
                   <td><input type ="text" name ="txtcarrera"></td>
                </tr>
                <tr>
                    <td><input type ="submit" value ="Enviar"></td>
                    
                </tr>
            </tbody>
        </table>
        </form>
    </body>
</html>
