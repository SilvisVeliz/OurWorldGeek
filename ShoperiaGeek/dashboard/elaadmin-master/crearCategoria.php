<?php

include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);




if(isset($_REQUEST['guardar'])){
    $nombre=mysqli_real_escape_string($con,$_REQUEST['nombre']??'');



    $query2="INSERT INTO categoria(nombreCategoria) VALUES ('".$nombre."')";
    $res2=mysqli_query($con,$query2);


    if($res2){
        echo '<meta http-equiv="refresh" content="0; url=dashboard.php?modulo=categorias&mensaje=Categoria creado"/>';
    }else{
        ?>

        <div class="alert alert-danger role="alert>
            Error al crear categoría <?php echo mysqli_error($con);?>
        </div>

        <?php
    }


}

?>



<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Crear Categoria</strong>
                    </div>
                    <div class="card-body">
                        <form action="dashboard.php?modulo=crearCategoria" method="post" required="required">
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" name="nombre" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary" name="guardar">Guardar</button>
                            </div>


                        </form>
                    </div>
                </div>
            </div>


        </div>
    </div><!-- .animated -->
</div><!-- .content -->


