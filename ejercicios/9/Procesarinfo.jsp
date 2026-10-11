<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="WEB-INF/jspf/conexion.jspf" %>
<c:set var="nombres" value="${param.nombres}" />
<c:set var="apellido1" value="${param.apellido1}" />
<c:set var="apellido2" value="${param.apellido2}" />
<c:set var="edad" value="${param.edad}" />
<sql:update var="insertar" dataSource="${empleados}">
    INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES (?, ?, ?, ?)
    <sql:param value="${nombres}" />
    <sql:param value="${apellido1}" />
    <sql:param value="${apellido2}" />
    <sql:param value="${edad}" />
</sql:update>
<sql:query var="result" scope="request" dataSource="${empleados}">
    SELECT * FROM empleados
</sql:query>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 9 - Resultado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="../../css/estilos.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark bg-primary shadow-sm">
        <div class="container">
            <span class="navbar-brand fw-bold">
                <i class="bi bi-9-circle-fill me-1"></i>Ejercicio 9
            </span>
        </div>
    </nav>

    <main class="container my-5 flex-grow-1">
        <h1 class="h4 mb-3">Datos personales</h1>
        <div class="table-responsive">
            <table class="table table-striped table-bordered align-middle mb-0">
                <thead class="table-primary">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellidos</th>
                        <th scope="col">Edad</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="fila" items="${result.rows}">
                        <tr>
                            <td><c:out value="${fila.id}" /></td>
                            <td><c:out value="${fila.nombres}" /></td>
                            <td><c:out value="${fila.apellido1}" /> <c:out value="${fila.apellido2}" /></td>
                            <td><c:out value="${fila.edad}" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="mt-4">
            <a href="../../index.jsp" class="btn btn-outline-secondary">
                <i class="bi bi-arrow-left me-1"></i>Volver al Inicio
            </a>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
