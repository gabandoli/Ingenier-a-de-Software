<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>

<main role="main" class="container">
    <div class="jumbotron">


        <h1>Agregar Libro</h1>
        <br>
        <form> 


            <fieldset class="fieldset1" fieldset style = "width: 500px; margin:  0px auto;">

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-barcode"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="ISBN" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-book"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Título" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-pen-nib"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Autor" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-newspaper"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Editorial" type="text">
                </div> <!-- form-group// -->
                <br></br>





                <div class="form-group">
                    <button id = button-volver type="button" class="btn btn-primary btn-block">Volver</button>
                </div> <!-- form-group// -->

            </fieldset>

            <fieldset class="fieldset2" fieldset style = "width: 500px; margin:  0px auto;">

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-pencil-ruler"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Materia" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-pencil-alt"></i> </span>
                    </div>
                    <input class="form-control" placeholder="N Edición" type="text">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-calendar-day"></i> </span>
                    </div>
                    <input type="date" class="form-control" placeholder="Publicación" type="date">
                </div> <!-- form-group// -->

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-language"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Idioma" type="text">
                </div> <!-- form-group// -->
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