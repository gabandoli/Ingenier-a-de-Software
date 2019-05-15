<%@include file="../master-page/urls.jsp" %>

<!------ Include the above in your HEAD tag ---------->

<!-- Ace Responsive Menu -->
<nav style="z-index: 2;">
    <!-- Menu Toggle btn-->
    <div class="menu-toggle" style="z-index: 1;">
        <h3>Menu</h3>
        <button type="button" id="menu-btn">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <!-- Responsive Menu Structure-->
    <!--Note: declare the Menu style in the data-menu-style="horizontal" (options: horizontal, vertical, accordion) -->
    <ul id="respMenu" class="ace-responsive-menu" data-menu-style="horizontal" style="z-index: 67;">
        <li>
            <a href="${urlIndex}">
                <i class="fa fa-home" aria-hidden="true"></i>
                <span class="title">Sistema de Bibliotecas</span>
            </a>
        </li>

        <li>
            <a href="javascript:;">
                <i class="fas fa-users" aria-hidden="true"></i>
                <span class="title">Gestion Empleados</span>
            </a>
            <ul>
                <li>
                    <a href="${urlAgregarEmpleado}">
                        <i class="fas fa-user-plus" aria-hidden="true"></i>
                        Agregar Empleado						
                    </a>
                </li>
                <li>
                    <a href="${urlEditarEmpleado}">
                        <i class="fas fa-user-edit" aria-hidden="true"></i>
                        Editar Empleado							
                    </a>
                </li>
                <li>
                    <a href="${urlEliminarEmpleado}">
                        <i class="fas fa-user-times" aria-hidden="true"></i>
                        Eliminar Empleado							
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-list" aria-hidden="true"></i>
                        Lista de Empleados
                    </a>
                </li>
            </ul>
        </li>

        <li>
            <a href="javascript:;">
                <i class="fas fa-book" aria-hidden="true"></i>
                <span class="title">Gestion Libros</span>
            </a>
            <ul>
                <li>
                    <a href="${urlAgregarLibro}">
                        <i class="fas fa-book-medical" aria-hidden="true"></i>
                        Agregar Libro						
                    </a>
                </li>
                <li>
                    <a href="${urlEditarLibro}">
                        <i class="fas fa-book-open" aria-hidden="true"></i>
                        Editar Libro							
                    </a>
                </li>
                <li>
                    <a href="${urlEliminarLibro}">
                        <i class="fas fa-book-dead" aria-hidden="true"></i>
                        Eliminar Libro							
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-list" aria-hidden="true"></i>
                        Lista de Libros
                    </a>
                </li>
            </ul>
        </li>

        <li>
            <a href="javascript:;">
                <i class="fas fa-school" aria-hidden="true"></i>
                <span class="title">Gestion Profesor/Alumno</span>
            </a>
            <ul>
                <li>
                    <a href="${urlAgregarProfesorAlumno}">
                        <i class="fas fa-user-plus" aria-hidden="true"></i>
                        Agregar Profesor/Alumno						
                    </a>
                </li>
                <li>
                    <a href="${urlEditarProfesorAlumno}">
                        <i class="fas fa-user-edit" aria-hidden="true"></i>
                        Editar Profesor/Alumno							
                    </a>
                </li>
                <li>
                    <a href="${urlEliminarProfesorAlumno}">
                        <i class="fas fa-user-times" aria-hidden="true"></i>
                        Eliminar Profesor/Alumno							
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-list" aria-hidden="true"></i>
                        Lista de Profesores/Alumnos
                    </a>
                </li>
            </ul>
        </li>

        <li>
            <a href="${urlPrestamo}">
                <i class="fab fa-leanpub" aria-hidden="true"></i>
                <span class="title">Prestamo</span>
            </a>
        </li>

        <li class="last ">
            <a href="${urlLogin}">
                <i class="fas fa-sign-in-alt" aria-hidden="true"></i>
                <span class="title">Iniciar Sesion</span>
            </a>
        </li>
    </ul>
</nav>
<!--Plugin Initialization-->
<script type="text/javascript">
    $(document).ready(function () {
        $("#respMenu").aceResponsiveMenu({
            resizeWidth: '768', // Set the same in Media query       
            animationSpeed: 'fast', //slow, medium, fast
            accoridonExpAll: false //Expands all the accordion menu on click
        });
    });
</script>

</nav>
-->