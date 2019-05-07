<%@include file="../master-page/urls.jsp" %>

<nav class="navbar navbar-default">
    
    <a href="${urlIndex}" class="navbar-brand">Biblioteca Pablo Neruda</a>

    <ul class="nav navbar-nav">
        <li><a href="${urlLogin}">Iniciar Sesión</a></li>
        <li><a href="${urlGestionEmpleados}">Gestión de empleados</a></li>
        <li><a href="${urlGestionLibros}">Gestión de libros</a></li>
        <li><a href="${urlGestionProfesoresAlumnos}">Gestión de profesores y alumnos</a></li>
        <li><a href="${urlPrestamo}">Préstamo</a></li>
    </ul>

</nav>