<%-- 
    Document   : ConsultarPersonas
    Created on : 06-dic-2018, 10:22:46
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--se crea una tabla para mostrar la consulta-->
<%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Personas</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
        <!--lo asocia con la clase Servlet-->
        <div class="container">
                                                                     <!--se agrega el nombre del Servlet-->
            <form method="get" action="<%=request.getContextPath() %>/ConsultaPersonaServlet"> 
                <h1>Personas disponibles</h1>
                <div class="form-group">
                    <label for="IDPersona">
                           Identificacion de la Persona
                   </label>
                    <input id="IdPersona" name="IdPersona" class="form-control" type="text" placeholder="Escriba el id de la persona a consultar">
                </div>
                <div>
                    <input type="submit" value="Consultar" class="btn btn-primary">
                </div>
                <!--para mostrar los datos de la consulta-->
                <br>
                <table border="2">
                    <c:forEach items="${resultado}" var="res">
                        <tr>
                            <td>
                                <c:out value="${res.idcliente}"></c:out>
                            </td>
       
                            <td>
                                <c:out value="${res.telCasa}"></c:out>
                            </td>
                            <td>
                                <c:out value="${res.telCelular}"></c:out>
                            </td>
                        </tr>
                   </c:forEach>
                </table>           
            </form>
        </div>
    </body>
</html>
