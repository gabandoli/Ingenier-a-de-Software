<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>

<main role="main" class="container">
    <div class="jumbotron">


        <h1>Agregar Profesor/Alumno</h1>
        <br>
        <form> 


            <fieldset class="fieldset1" fieldset style = "width: 500px; margin:  0px auto;">

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-id-card"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Run" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Correo Electrónico" type="email">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Nombres" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Apellido Paterno" type="text">
                </div> <!-- form-group// -->

                <br></br>

                <div class="form-group">
                    <button id = button-volver type="button" class="btn btn-primary btn-block">Volver</button>
                </div> <!-- form-group// -->

            </fieldset>

            <fieldset class="fieldset2" fieldset style = "width: 500px; margin:  0px auto;">

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Apellido Materno" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                    </div>
                    <select class="custom-select" style="max-width: 120px;">
                        <option selected="">+56</option>
                        <option value="1">+56</option>
                    </select>
                    <input name="" class="form-control" placeholder="Número Telefónico" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-birthday-cake"> </i> </span>
                    </div>
                    <input type="date" class="form-control" placeholder="Fecha Nacimiento" type="password">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-user-tie"></i> </span>
                    </div>
                    <select class="form-control">
                        <option selected="">Seleccione ocupación</option>
                        <option>Profesor</option>
                        <option>Alumno</option>
                    </select>
                </div> <!-- form-group end.// -->

                <br></br>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Agregar</button>
                </div> <!-- form-group// -->

            </fieldset>

        </form>


    </div> 
    <!--container end.//-->

    <main role="main" class="container">

        <%@include file="../master-page/footer.jsp" %>