<%-- 
    Document   : VistaUno2
    Created on : 11-06-2014, 04:31:38 PM
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
         <jsp:useBean id="asignatura" scope="session" class="dto.AsignaturaDTO" />
         <h1>Datos de la asignatura <jsp:getProperty name="asignatura" property="codigo" /></h1>
         
    
         <table border="5">
            
            
             <tbody>
                 <tr>
                     <td>codigo </td>
                     <td><jsp:getProperty name="asignatura" property="codigo" /><br></td>
                     
                 </tr>
                 <tr>
                     <td>Nombre de la asignatura</td>
                     <td><jsp:getProperty name="asignatura" property="nombreAsignatura" /></td>
                 <tr>
                     <td>Cantidad de Horas</td>
                     <td><jsp:getProperty name="asignatura" property="cantidadHoras" /></td>
                 </tr>
                 <tr>
                     <td>Carrera</td>
                     <td><jsp:getProperty name="asignatura" property="carrera" /></td>
                 </tr>
             </tbody>
         </table>

    </body>
</html>
