<%-- 
    Document   : index
    Created on : Dec 6, 2018, 2:55:09 PM
    Author     : Zyoruk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
	<head lang="es">
		<meta charset="utf-8">
		<title>Seguro Multiasistencia</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	</head>
	<body>
		<div class="container" style="margin-top: 50px; margin-bottom: 70px;">
			<h1>Seguro Multiasistencia</h1>
			<hr>
			<div class="row">
				<div class="col-md-6">					
					<div class="card">
						<div class="card-header">
							Iniciar sesión
						</div>
						<div class="card-container container">
							<form method="get" action="<%=request.getContextPath() %>/Login"> 
								<div class="form-group">
									<label for="nombre-usuario">Usuario:</label>
									<input type="text" class="form-control" name="nombre-usuario" id="nombre_usuario" placeholder="Escriba el nombre de usuario"/>
								</div>
								<div class="form-group">
									<label for="contrasena-usuario">Contraseña:</label>
									<input type="text" class="form-control" name="contrasena-usuario" id="contrasena_usuario" placeholder="Escriba la contraseña de su usuario"/>
								</div>
								<div class="form-group">
                                                                        <input type="submit" value="Entrar" class="btn btn-primary">
									<a href="registrar_usuario.jsp" class="btn btn-light">Crear cuenta</a>
								</div>
                                                                
                                                                <div>
                                                                    
                                                                </div>
							</form>
						</div>
					</div>
				</div>
				
			</div>
		</div>		
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>

