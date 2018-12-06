<%-- 
    Document   : registrar_usuario
    Created on : 06/12/2018, 01:34:43 PM
    Author     : jif_c
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
        <h3>Registro de Usuario</h3>
        <div class="col-md-6">
            <form method= "post" action="<%=request.getContextPath() %>/Registrar">
                <div class="form-group">
                    <input  class="form-control" id="tbName" name="tbName" type="text" placeholder="Nombre">
                <div>
                <input  class="form-control" id="tbMiddleName" name="tbMiddleName" type="text" placeholder="Primer Apellido">
                <input  class="form-control" id="tbLastName" name="tbLastName" type="text" placeholder="Segundo Apellido">
                <input  class="form-control" id="tbUser" name="tbUser" type="text" placeholder="Usuario">
                <input  class="form-control" id="tbPass" name="tbPass" type="password" placeholder="Contraseña">
                <input  class="form-control" id="tbPass2" name="tbPass2" type="password" placeholder=" Repetir Contraseña">
                <input  class="btn btn-success" id="btSubmit" name="btSumit" type="submit" value ="Crear">
                <input  class="btn btn-warning" id="btExit" name="btExist" type="submit" value ="Regresar">
            </form>
            <!--<c:out value="${response}"></c:out>-->
        </div>
    </body>
</html>
