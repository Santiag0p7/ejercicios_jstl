<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gu&iacute;a JSTL 2</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="css/estilos.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary d-flex flex-column min-vh-100">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold" href="index.jsp">
                <i class="bi bi-braces-asterisk me-1"></i>Gu&iacute;a JSTL 2
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menuNav" aria-controls="menuNav" aria-expanded="false" aria-label="Men&uacute;">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="menuNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" href="index.jsp">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="#ejercicios">Ejercicios</a></li>
                    <li class="nav-item"><a class="nav-link" href="#derechos">Derechos Reservados</a></li>
                </ul>
                <button class="btn btn-light fw-semibold" type="button">
                    <i class="bi bi-person-circle me-1"></i>Santiago Garcia
                </button>
            </div>
        </div>
    </nav>

    <main class="container my-5 flex-grow-1">
        <section id="ejercicios">
            <h1 class="h3 mb-4">Ejercicios</h1>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 g-4">
                <div class="col">
                    <a href="ejercicios/1/Eje1.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-1-circle-fill text-primary fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 1</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/2/Datos.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-2-circle-fill text-success fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 2 (Datos)</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/3/set1.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-3-circle-fill text-warning fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 3 (Uso del set)</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/4/Datosif.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-4-circle-fill text-info fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 4 (Datosif)</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/5/Lenguaje.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-5-circle-fill text-danger fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 5 (Lenguaje)</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/6/catch.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-6-circle-fill text-secondary fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 6 (Catch)</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/7/foreach.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-7-circle-fill text-success fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 7 (Foreach)</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/8/ForTokens.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-8-circle-fill text-primary fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 8 (ForTokens)</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="ejercicios/9/Informacion.jsp" class="text-decoration-none">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body">
                                <i class="bi bi-9-circle-fill text-dark fs-2"></i>
                                <h2 class="h5 mt-3 mb-0">Ejercicio 9 (Base de datos)</h2>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>
    </main>

    <footer id="derechos" class="bg-dark text-white-50 py-3 mt-auto">
        <div class="container text-center small">
            Santiago Garcia &copy; Derechos Reservados
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
