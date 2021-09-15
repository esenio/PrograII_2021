<%-- 
    Document   : agregar
    Created on : 11/09/2021, 01:01:53 PM
    Author     : erramirc
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>Crud</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Agregar Nuevo Registro/h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Id</label>
                        <input type="text" name="id" class="form-control">
                        <label>Nombres</label>
                        <input type="text" name="nom" class="form-control">
                        <label>Correo</label>
                        <input type="text" name="correo" class="form-control">
                         <label>Estatus</label>
                        <select name="Estatus" id="estatus">
                            <c:forEach var="estatus" items="${estatus_lista}">
                                  <option value=${estatus.Estatus}>${estatus.Estatus}</option>
                            </c:forEach>
                                 
                        </select>
                        <input type="submit" name="Agregar" class="form-succes" value="agregar">
                        <a href="index.htm">Regresar</a>
                    </form>
                    
                </div>
            
        </div>
    </body>
</html>
