<?php
$host="localhost";
$user="root";
$pass="";
$db="shoperiageek";
include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);




if(isset($_REQUEST['guardar'])){
    $nombre=mysqli_real_escape_string($con,$_REQUEST['nombre']??'');
    $precio=mysqli_real_escape_string($con,$_REQUEST['precio']??'');
    $descripcion=mysqli_real_escape_string($con,$_REQUEST['descripcion']??'');
    $franquicia=mysqli_real_escape_string($con,$_REQUEST['franquicia']??'');
    $categoria=mysqli_real_escape_string($con,$_REQUEST['categoria']??'');




    $query="INSERT INTO producto
        (nombreProducto,precio,descripcion,franquicia,categoria) VALUES
        ('".$nombre."','".$precio."','".$descripcion."','".$franquicia."','".$categoria."')";
    $res=mysqli_query($con,$query);

    if($res){
        echo '<meta http-equiv="refresh" content="0; url=dashboard.php?modulo=productos&mensaje=Producto agregado"/>';
    }else{
        ?>

        <div class="alert alert-danger role="alert>
            Error al agregar producto <?php echo mysqli_error($con);?>
        </div>

        <?php
    }


}

?>



<div class="content">
    <div class="animated fadeIn">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Agregar producto</strong>
                    </div>
                    <div class="card-body">
                        <form action="dashboard.php?modulo=crearProducto" method="post" required="required">
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" name="nombre" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Precio</label>
                                <input type="number" name="precio" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Descripcion</label>
                                <input type="text" name="descripcion" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Franquicia</label>
                                <input type="text" name="franquicia" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Categoria</label>
                                <input type="text" name="categoria" class="form-control" required="required">
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