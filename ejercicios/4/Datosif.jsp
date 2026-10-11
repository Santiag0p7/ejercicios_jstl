<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 4</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="../../css/estilos.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark bg-primary shadow-sm">
        <div class="container">
            <span class="navbar-brand fw-bold">
                <i class="bi bi-4-circle-fill me-1"></i>Ejercicio 4
            </span>
        </div>
    </nav>

    <main class="container my-5 flex-grow-1">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <h1 class="h4 mb-3">Datos de una Persona</h1>
                        <c:if test="${not empty param.error}">
                            <div class="alert alert-danger" role="alert">
                                Error! <c:out value="${param.error}" />
                            </div>
                        </c:if>
                        <form action="Procesarif.jsp" method="post" class="row g-3">
                            <div class="col-12">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre">
                            </div>
                            <div class="col-md-6">
                                <label for="apellido1" class="form-label">Primer apellido</label>
                                <input type="text" class="form-control" id="apellido1" name="apellido1">
                            </div>
                            <div class="col-md-6">
                                <label for="apellido2" class="form-label">Segundo apellido</label>
                                <input type="text" class="form-control" id="apellido2" name="apellido2">
                            </div>
                            <div class="col-12 pt-2">
                                <button type="submit" class="btn btn-primary">
                                    <i class="bi bi-send me-1"></i>Enviar datos
                                </button>
                                <a href="../../index.jsp" class="btn btn-outline-secondary">
                                    <i class="bi bi-arrow-left me-1"></i>Volver al Inicio
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
