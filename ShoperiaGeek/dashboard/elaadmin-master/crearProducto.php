<?php

include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);




if(isset($_REQUEST['guardar'])){
    $nombre=mysqli_real_escape_string($con,$_REQUEST['nombre']??'');
    $precioOriginal=mysqli_real_escape_string($con,$_REQUEST['precioOriginal']??'');
    $precioDescuento=mysqli_real_escape_string($con,$_REQUEST['precioDescuento']??'');
    $descripcion=mysqli_real_escape_string($con,$_REQUEST['descripcion']??'');
    $categoria=mysqli_real_escape_string($con,$_REQUEST['nombreCategoria']??'');
    $nombreProveedor=mysqli_real_escape_string($con,$_REQUEST['nombreProveedor']??'');
    $idProveedor=mysqli_real_escape_string($con,$_REQUEST['idProveedor']??'');

    $query2="SELECT nombreProveedor,idProveedor from proveedor where nombreProveedor='".$nombreProveedor."'";

    /*$query2="SELECT nombreProveedor,idProveedor from proveedor where nombreProveedor='".$nombreProveedor."'";
    $query2="SELECT nombreProveedor,idProveedor from proveedor where nombreProveedor=$nombreProveedor";*/
    $re2s=mysqli_query($con,$query2);
    $row3=mysqli_fetch_assoc($re2s);
    $idProveedor=$row3['idProveedor']??'';



    $query="INSERT INTO producto
        (nombreProducto,precioOriginal,precioDescuento,descripcion,idCategoria,idProveedor) VALUES
        ('".$nombre."','".$precioOriginal."','".$precioDescuento."','".$descripcion."','".$categoria."','".$idProveedor."')";
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
$queryNombreProveedores=mysqli_query($con,"SELECT idProveedor,nombreProveedor from proveedor;");
?>



<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
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
                                <label>Precio original</label>
                                <input type="number" name="precioOriginal" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Precio con descuento</label>
                                <input type="number" name="precioDescuento" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Descripción</label>
                                <input type="text" name="descripcion" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Categoria</label>
                                <input type="text" name="nombreCategoria" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Proveedor</label>
                            </div>
                            <div class="form-group">
                                <select name="nombreProveedor">
                                    <?php
                                    while($nombreProveedores=mysqli_fetch_array($queryNombreProveedores)){

                                        ?>
                                        <option value="<?php echo $nombreProveedores['nombreProveedor'] ?>"><?php echo $nombreProveedores['nombreProveedor'] ?></option>
                                        <?php
                                    }
                                    ?>
                                </select>
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