<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:catch var="error01">
    <c:set var="valor" value="${Integer.parseInt(param.parametro)}" />
</c:catch>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 6</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="../../css/estilos.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark bg-primary shadow-sm">
        <div class="container">
            <span class="navbar-brand fw-bold">
                <i class="bi bi-6-circle-fill me-1"></i>Ejercicio 6
            </span>
        </div>
    </nav>

    <main class="container my-5 flex-grow-1">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <h1 class="h4 mb-3">Uso de etiqueta catch</h1>
                        <c:if test="${not empty error01}">
                            <div class="alert alert-danger" role="alert">
                                Se produjo un error: <c:out value="${error01}" />
                            </div>
                        </c:if>
                        <c:if test="${valor != 0 and empty error01}">
                            <div class="alert alert-info" role="alert">
                                Valor recibido: <c:out value="${valor}" />
                            </div>
                        </c:if>
                        <div class="d-flex flex-wrap gap-2 mt-3">
                            <form action="catch.jsp" method="post">
                                <button type="submit" name="parametro" value="prueba" class="btn btn-primary">
                                    Enviar 'prueba'
                                </button>
                            </form>
                            <form action="catch.jsp" method="post">
                                <button type="submit" name="parametro" value="1234" class="btn btn-primary">
                                    Enviar '1234'
                                </button>
                            </form>
                            <form action="catch.jsp" method="post">
                                <button type="submit" class="btn btn-secondary">
                                    No enviar el par&aacute;metro
                                </button>
                            </form>
                        </div>
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
