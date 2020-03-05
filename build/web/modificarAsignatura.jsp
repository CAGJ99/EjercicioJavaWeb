<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : modificarAsignatura
    Created on : 11-06-2014, 02:45:24 PM
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
        <h1>Modificar Asignaturas</h1>
        
           
            <c:forEach var="listaAsignatura" items="${sessionScope.listaAsignatura}">
            <form action="modificarasignatura.do" method="post">
        <table border="7"> 
                <tbody>
                    <tr>
                        <td>codigo</td>
                        <td><input type="text" name="txtcodigo" value="${listaAsignatura.codigo}" readonly /><br></td>
                    </tr>
                    <tr>
                        <td>Nombre asignatura</td>
                        <td><input type="text" name="txtnombreAsignatura" value="${listaAsignatura.nombreAsignatura}"/><br></td>
                    </tr>
                    <tr>
                        <td>cantidad de horas</td>
                        <td><input type="text" name="txtcantidadHoras" value="${listaAsignatura.cantidadHoras}" /><br></td>
                    </tr>
                    <tr>
                        <td>carrera</td>
                        <td><input type="text" name="txtcarrera" value="${listaAsignatura.carrera}"/><br></td>
                    </tr>
                   
                    <tr>
                        <td colspan = "2" align ="center "> <input type="submit" value="Modificar Registro" name="enviar"></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
          </form>
        </c:forEach>
         
    </body>
</html>
