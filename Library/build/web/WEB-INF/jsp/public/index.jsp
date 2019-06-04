<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>

<main role="main" class="container">
    <div class="jumbotron">



        <c:choose>
            <c:when test="${autenticado}">
                    
                <h1>¡Bienvenido!</h1>
                <br>
                <p class="lead">Ha validado su credencial de acceso exitosamente. Por favor, para comenzar
                    a utilizar nuestra aplicación, dirijase al menú ubicado en la parte superior de la pantalla.</p>
                
            </c:when>
            <c:otherwise>
            
                <h1>Préstamo y Gestión de Libros - Sistema de Bibliotecas</h1>
                <br>
                <p class="lead">Bienvenido a nuestro sistema de administración bibliotecario para préstamo y gestión de libros.
                    Por favor, para comenzar inicie sesión como usuario administrador o empleado.</p>
                <a class="btn btn-lg btn-primary" href="${urlLogin}" role="button">Ingresar Ahora &raquo;</a>
                <br></br>
                <div class="col-4 mx-auto text-center ">
                    <img src="https://www.gifmania.com/Gif-Animados-Objetos/Imagenes-Material-Educativo/Globos-terraqueos/Globo-terraqueo-antiguo-49135.gif" class="rounded" alt="Gif">
                </div>

            </c:otherwise>
        </c:choose>


    </div>

    <main role="main" class="container">

        <%@include file="../master-page/footer.jsp" %>