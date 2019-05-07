<%@include file="../master-page/urls.jsp" %>

<nav class="navbar navbar-default">
    
    <a href="${urlIndex}" class="navbar-brand">Biblioteca Pablo Neruda</a>

    <ul class="nav navbar-nav">
        <li><a href="${urlLogin}">Iniciar Sesi�n</a></li>
        <li><a href="${urlGestionEmpleados}">Gesti�n de empleados</a></li>
        <li><a href="${urlGestionLibros}">Gesti�n de libros</a></li>
        <li><a href="${urlGestionProfesoresAlumnos}">Gesti�n de profesores y alumnos</a></li>
        <li><a href="${urlPrestamo}">Pr�stamo</a></li>
    </ul>

</nav>