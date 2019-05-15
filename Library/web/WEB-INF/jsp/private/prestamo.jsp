<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master-page/header.jsp" %>
<%@include file="../master-page/menu.jsp" %>

<main role="main" class="container">
    <div class="jumbotron">

        <h1>Préstamo</h1>
        <br>
        <form>

            <fieldset class="fieldset1" fieldset style = "width: 500px; margin:  0px auto;">

                <label>Libro</label>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-user-tie"></i> </span>
                    </div>
                    <select class="form-control">
                        <option selected="">Seleccione Libro</option>
                        <option>----------------------------------</option>
                        <option>----------------------------------</option>
                    </select>
                </div> <!-- form-group end.// -->

                <label>Solicitante</label>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-id-card"></i> </span>
                    </div>
                    <input name="" class="form-control" placeholder="Run" type="text">
                </div> <!-- form-group// -->

                <br></br>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Prestar</button>
                </div> <!-- form-group// -->

            </fieldset>



            <fieldset class="fieldset2" fieldset style = "width: 500px; margin:  0px auto;">

                <label>Fecha Inicio</label>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-calendar-day"> </i> </span>
                    </div>
                    <input type="date" class="form-control" placeholder="Fecha Inicio" type="date">
                </div> <!-- form-group// -->

                <label>Fecha Termino</label>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-calendar-day"> </i> </span>
                    </div>
                    <input type="date" class="form-control" placeholder="Fecha Termino" type="date">
                </div> <!-- form-group// -->
			
			</fieldset>
        
        </form>
    
    </div> 
    <!--container end.//-->

    <main role="main" class="container">

        <%@include file="../master-page/footer.jsp" %>