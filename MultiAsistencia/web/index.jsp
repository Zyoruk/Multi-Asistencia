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
		<%@ include file="meta.jsp" %>  
		<title>Seguro Multiasistencia</title>
		<%@ include file="headerIncludes.jsp" %>  
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
                                                                    
                                                                  <h1> Bienvenido <%= request.getAttribute("aviso")%></h1>
                                                                </div>
							</form>
						</div>
					</div>
				</div>
				
			</div>
		</div>		
		
		<%@ include file="footer.jsp" %> 
	</body>
</html>

