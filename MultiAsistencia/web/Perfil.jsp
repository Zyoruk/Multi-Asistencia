<%-- 
    Document   : Perfil
    Created on : Dec 6, 2018, 1:57:47 PM
    Author     : Zyoruk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="meta.jsp" %> 
        <title>Perfil - ${nombre}</title>
        <%@ include file="headerIncludes.jsp" %> 
    </head>
    <body>
        <div class="container">
            <div class="row">
            <div class="col col-md-12">
                <h1>Bienvenido ${nombre}</h1>
            </div>
        </div>
        <div class="row">
            <div class="col col-md-12">
                <p>Usted está suscrito a las siguientes pólizas:</p>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Póliza</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${polizasSuscrito}" var="res">
                            <tr>
                                <td>
                                    <c:out value="${res.name}"></c:out>
                                </td>
                                <td>
                                    <form method="post" action="${pageContext.request.contextPath}/Perfil">
                                         <input class="hidden" type="text" value=<c:out value="${res.name}"></c:out>>
                                         <input class="btn btn-danger" type="submit" value="anular" name="button"/>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
  
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col col-md-12">
                <h2>Movimientos</h2>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Tipo de poliza</th>
                            <th>Descripción</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${movimientos}" var="res">
                           <tr>
                               <td>
                                   <c:out value="${res.name}"></c:out>
                               </td>
                               <td>
                                   <form method="post" action="${pageContext.request.contextPath}/Perfil">
                                        <input class="btn btn-danger" type="submit" value="anular" name="button"/>
                                   </form>
                               </td>
                           </tr>
                       </c:forEach>
                    </tbody>

                </table>
            </div>
        </div>
        
        <div class="row">
            <div class="col col-12">
                <h2>Solicite una  póliza</h2>
                <div class="row">
                    <div class="col col-md-4">
                        <div class="card" style="width: 18rem;">
                            <!--<img class="card-img-top" src="..." alt="Card image cap">-->
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">Descripción de la póliza A</p>
                              <p>Detalle</p>
                              <a href="..." class="btn btn-success">Solicitar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-4">
                        <div class="card" style="width: 18rem;">
                            <!--<img class="card-img-top" src="..." alt="Card image cap">-->
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">Descripción de la póliza B</p>
                               <p>Detalle</p>
                               <a href="..." class="btn btn-success">Solicitar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <%@ include file="footer.jsp" %> 
    </body>
</html>
