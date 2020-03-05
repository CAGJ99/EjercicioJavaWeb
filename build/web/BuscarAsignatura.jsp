h<%-- 
    Document   : BuscarAsignatura
    Created on : 11-06-2014, 03:54:14 PM
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
        <h1>Ingrese el codigo</h1>
        <form method ="post" action ="buscarasignatura.do">
        <table border="7">
            
            <tbody>
                <tr>
                    <td>Codigo</td>
                </tr>
                <tr>
                    <td><input type ="text" name="txtcodigo"></td>
                   
                </tr>
                <tr>
                    <td><input type ="submit" value = "Buscar"></td> 
                </tr>
            </tbody>
        </table>
        </form>
    </body>
</html>
