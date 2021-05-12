<?php

include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);




if(isset($_REQUEST['guardar'])){
    $nombre=mysqli_real_escape_string($con,$_REQUEST['nombre']??'');


    $query2="SELECT nombreCategoria from categoria where nombreCategoria='".$nombre."';
    ";
    $re2s=mysqli_query($con,$query2);
    $row3=mysqli_fetch_assoc($re2s);
    $idCategoriaS=$row3['idCategoria']??'';

        if($re2s){
            echo '<meta http-equiv="refresh" content="0; url=dashboard.php?modulo=productos&mensaje=Producto '.$nombre.' editado exitosamente"/>';
        }else{
            ?>

            <div class="alert alert-danger role="alert>
                Error al editar producto <?php echo mysqli_error($con);?>
            </div>

            <?php
        }

}
$queryNombreCategorias=mysqli_query($con,"SELECT idCategoria,nombreCategoria from categoria;");
$res4=mysqli_query($con,$queryNombreCategorias);
$row4=mysqli_fetch_assoc($res4);


?>



<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-4"></div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Editar Categoria </strong>
                    </div>
                    <div class="card-body">
                        <form action="dashboard.php?modulo=editarCategoria" method="post">
                            <div class="form-group">
                                <label>Nombre Categoria</label>
                                <input type="text" name="nombre" class="form-control" value="<?php echo $row4['nombre']; ?>" required="required">
                            </div>

                            <input type="hidden" name="id" value="<?php echo $row4['idCategoria'] ?>" required="required">

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
