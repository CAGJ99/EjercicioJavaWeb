<%-- 
    Document   : index
    Created on : 10-06-2014, 11:36:55 PM
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
     
                <form method ="post" action ="insertaralumno.do">
    <table border="9">
        
        
            <tr>
                <td>Rut</td>
                <td><input type = text name="txtrut"></td>
              
            </tr>
            <tr>
                
                <td>Nombre :</td>
                <td><input type="text" name="txtnombre"></td>
                
            </tr>
            <tr>
                <td>Apellido</td>
                <td><input type = text name="txtapellido"></td>
              
            </tr>
            <tr>
                <td>Edad</td>
                <td><input type = text name="txtedad"></td>
               
            </tr>
            <tr>
                <td>Direccion</td>
                <td><input type = text name="txtdireccion"></td>
                
            </tr>
            <tr>
                <td><input type = submit value ="Enviar"></td>
                
            </tr>
            
    </table>
                </form>
    </body>
</html>
