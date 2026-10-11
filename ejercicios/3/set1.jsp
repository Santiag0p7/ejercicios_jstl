<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="variableDePagina" scope="page" value="Esta informacion se guarda en la pagina" />
<c:set var="variableDeSesion" scope="session" value="Esta informacion se guarda en la sesion" />
<c:set var="variableDeAplicacion" scope="application" value="Esta informacion se guarda en la aplicacion" />
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 3</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="../../css/estilos.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark bg-primary shadow-sm">
        <div class="container">
            <span class="navbar-brand fw-bold">
                <i class="bi bi-3-circle-fill me-1"></i>Ejercicio 3
            </span>
        </div>
    </nav>

    <main class="container my-5 flex-grow-1">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <p class="mb-2">${variableDePagina}</p>
                        <p class="mb-2">${variableDeSesion}</p>
                        <p class="mb-0">${variableDeAplicacion}</p>
                    </div>
                    <div class="card-footer bg-white py-3">
                        <a href="../../index.jsp" class="btn btn-outline-secondary">
                            <i class="bi bi-arrow-left me-1"></i>Volver al Inicio
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
