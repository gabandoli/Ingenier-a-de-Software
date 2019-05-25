<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>

<main role="main" class="container">
    <div class="jumbotron">
        <div class="container">

            <form class="form-login" action="${urlLogin}" method="POST">
                
                <h1>Iniciar Sesión</h1>
                <br>
                <input type="text" class="form-control" name="inputUser" placeholder="Usuario" required="" autofocus="">
                <input type="password" class="form-control" name="inputPass" placeholder="Contraseña" required="">

                <button class="btn btn-lg btn-primary btn-block" name="submit" type="submit">Ingresar</button>

            </form>

        </div>

    </div>
</div>

<%@include file="../master-page/footer.jsp" %>