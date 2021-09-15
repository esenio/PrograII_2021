
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>Crud</title>
    </head>

    <body>
        <div class="contairner" mt-4>
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a  href="agregar.htm" >Nuevo Registro</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRE</th>
                                <th>CORREO</th>
                                <th>ESTATUS</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.Id}</td>
                                <td>${dato.Nombre}</td>
                                <td>${dato.Correo}</td>
                                <td>${dato.Estatus}</td>
                                <td>
                                    <a class="btn btn-warning">Editar</a>
                                    <a class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>
