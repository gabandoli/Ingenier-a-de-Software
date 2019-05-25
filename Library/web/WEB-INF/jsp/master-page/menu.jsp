<%@include file="../master-page/urls.jsp" %>

<!------ Include the above in your HEAD tag ---------->

<!-- Ace Responsive Menu -->
<nav>
    <!-- Menu Toggle btn-->
    <div class="menu-toggle">
        <h3>Menu</h3>
        <button type="button" id="menu-btn">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <!-- Responsive Menu Structure-->
    <!--Note: declare the Menu style in the data-menu-style="horizontal" (options: horizontal, vertical, accordion) -->
    <ul id="respMenu" class="ace-responsive-menu" data-menu-style="horizontal">
        <li>
            <a href="${urlIndex}">
                <i class="fa fa-home" aria-hidden="true"></i>
                <span class="title">Sistema de Bibliotecas</span>
            </a>
        </li>



        <c:if test="${autenticado}">

            <li>
                <a href="">
                    <i class="fas fa-users" aria-hidden="true"></i>
                    <span class="title">Gestión Empleados</span>
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
                </ul>
            </li>

            <li>
                <a href="">
                    <i class="fas fa-book" aria-hidden="true"></i>
                    <span class="title">Gestión Libros</span>
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
                        <a href="${urlListarLibros}">
                            <i class="fas fa-list" aria-hidden="true"></i>
                            Lista de Libros
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="">
                    <i class="fas fa-school" aria-hidden="true"></i>
                    <span class="title">Gestión Profesor/Alumno</span>
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
                        <a href="${urlListarProfesoresAlumnos}">
                            <i class="fas fa-list" aria-hidden="true"></i>
                            Listado de Profesores/Alumnos
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="${urlPrestamo}">
                    <i class="fab fa-leanpub" aria-hidden="true"></i>
                    <span class="title">Préstamo</span>
                </a>
            </li>

        </c:if>

        <c:choose>
            <c:when test="${autenticado}">
                <li class="last ">
                    <a href="${urlLogout}">
                        <i class="fas fa-sign-out-alt" aria-hidden="true"></i>
                        <span class="title">Cerrar Sesión</span>
                    </a>

                </li>        
            </c:when>
            <c:otherwise>
                <li class="last ">
                    <a href="${urlLogin}">
                        <i class="fas fa-sign-in-alt" aria-hidden="true"></i>
                        <span class="title">Iniciar Sesión</span>
                    </a>
                </li>
            </c:otherwise>
        </c:choose>

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