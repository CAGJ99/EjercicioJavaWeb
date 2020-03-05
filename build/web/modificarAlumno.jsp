<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : modificarAlumno
    Created on : 11-06-2014, 12:00:53 PM
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
        <h1>Modificar Alumno</h1>
          
   
        
           <c:forEach var="listaAlumnos" items="${sessionScope.listaAlumnos}">
            <form action="modificaralumno.do" method="post">
           <table border="7"> 
               
                <tbody>
                    <tr>
                        <td>rut</td>
                        <td><input type="text" name="txtrut" value="${listaAlumnos.rut}" readonly /><br></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="txtnombre" value="${listaAlumnos.nombre}" /><br></td>
                    </tr>
                    <tr>
                        <td>Apellido</td>
                        <td><input type="text" name="txtapellido" value="${listaAlumnos.apellido}" /><br></td>
                    </tr>
                    <tr>
                        <td>Edad</td>
                        <td><input type="text" name="txtedad" value="${listaAlumnos.edad}" /><br></td>
                    </tr>
                    <tr>
                        <td>Direccion</td>
                        <td><input type="text" name="txtdireccion" value="${listaAlumnos.direccion}" /><br></td>
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
