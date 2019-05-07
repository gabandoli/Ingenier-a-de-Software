<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>

<div class="modal-dialog modal-login">
    <div class="modal-content">
        <div class="modal-header">				
            <h4 class="modal-title">Login</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        </div>
        <div class="modal-body">
            <form action="/examples/actions/confirmation.php" method="post">
                <div class="form-group">
                    <i class="fa fa-user"></i>
                    <input type="text" class="form-control" placeholder="Usuario" required="required">
                </div>
                <div class="form-group">
                    <i class="fa fa-lock"></i>
                    <input type="password" class="form-control" placeholder="Contraseña" required="required">					
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary btn-block btn-lg" value="Ingresar">
                </div>
            </form>				

        </div>
    </div>
</div>

<%@include file="../master-page/footer.jsp" %>