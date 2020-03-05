<%-- 
    Document   : eliminarAsignatura
    Created on : 11-06-2014, 03:45:29 PM
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
        <h1>Eliminar Asignatura</h1>
        <form method ="post" action = "eliminarasignatura.do">
            <table border="9">
                <tr>
                    <td>Ingrese codigo</td>
                    <td><input type ="text" name ="txtcodigo"></td>
                </tr>
                <tr>
                    <td colspan ="2" align="center"><input type ="submit" value ="Eliminar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
