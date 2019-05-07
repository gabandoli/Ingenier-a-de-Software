<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>


<div class="wrap-inicio">
    <form action="/gestion-empleados/agregar-empleados" method="POST">
        <input class="btn-inicio" type="submit" value="Agregar Empleado" name="btnAgregarEmp"/>
    </form>
    <form action="/gestion-empleados/editar-empleados" method="POST">
        <input class="btn-inicio" type="submit" value="Editar Empleado" name="btnEditarEmp"/>
    </form>
    <form action="/gestion-empleados/eliminar-empleados" method="POST">
        <input class="btn-inicio" type="submit" value="Eliminar Empleado" name="btnEliminarEmp"/>
    </form>
    <form action="/gestion-empleados/listar-empleados" method="POST">
        <input class="btn-inicio" type="submit" value="Lista de Empleados" name="btnListarEmp"/>
    </form>
</div>

<%@include file="../master-page/footer.jsp" %>