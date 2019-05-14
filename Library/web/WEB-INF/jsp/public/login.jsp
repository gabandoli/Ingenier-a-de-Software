<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>

<main role="main" class="container">
    <div class="jumbotron">
        <div class="container">

            <form class="form-login">
                <h1>Iniciar Sesión</h1>
                <br>
                <input type="text" class="form-control" placeholder="Usuario" required="" autofocus="">
                <input type="password" class="form-control" placeholder="Contraseña" required="">

                <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            </form>

        </div>

    </div>
</div>

<%@include file="../master-page/footer.jsp" %>