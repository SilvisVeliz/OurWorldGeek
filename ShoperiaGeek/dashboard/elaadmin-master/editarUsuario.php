<?php

include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);




if(isset($_REQUEST['guardar'])){
    $email=mysqli_real_escape_string($con,$_REQUEST['email']??'');
    $pass=md5(mysqli_real_escape_string($con,$_REQUEST['passwordCliente']??''));
    $nombre=mysqli_real_escape_string($con,$_REQUEST['nombre']??'');
    $apellido=mysqli_real_escape_string($con,$_REQUEST['apellido']??'');
    $telefono=mysqli_real_escape_string($con,$_REQUEST['telefono']??'');
    $id=mysqli_real_escape_string($con,$_REQUEST['id']??'');
    $idImagen=mysqli_real_escape_string($con,$_REQUEST['idImagen']??'');
    $calle=mysqli_real_escape_string($con,$_REQUEST['calle']??'');
    $idDireccion=mysqli_real_escape_string($con,$_REQUEST['idDireccion']??'');
    $colonia=mysqli_real_escape_string($con,$_REQUEST['colonia']??'');
    $codigoPostal=mysqli_real_escape_string($con,$_REQUEST['codigoPostal']??'');
    $estado=mysqli_real_escape_string($con,$_REQUEST['Estado']??'');
    $numeroInterior=mysqli_real_escape_string($con,$_REQUEST['numeroInterior']??'');
    $numeroExterior=mysqli_real_escape_string($con,$_REQUEST['numeroExterior']??'');





    $query="UPDATE cliente SET 
        nombreCliente='".$nombre."',apellidoCliente='".$apellido."',emailCliente='".$email."',telefonoCliente='".$telefono."',idImagen='".$idImagen."',idDireccion='".$idDireccion."',passwordCliente='".$pass."'
        where idCliente='".$id."';
        ";
    $res=mysqli_query($con,$query);
    $query2="UPDATE direccion SET
        calle='".$calle."',colonia='".$colonia."',codigoPostal='".$codigoPostal."',Estado='".$estado."',numeroExterior='".$numeroExterior."',numeroInterio='".$numeroInterior."' 
        where idDireccion='".$idDireccion."';
        ";
    $re2s=mysqli_query($con,$query2);
    if($res){
        if($re2s){
            echo '<meta http-equiv="refresh" content="0; url=dashboard.php?modulo=usuarios&mensaje=Usuario '.$nombre.'Editado exitosamente"/>';
        }else{
            ?>

            <div class="alert alert-danger role="alert>
                Error al editar en dirección <?php echo mysqli_error($con);?>
            </div>

            <?php
        }

    }else{
        ?>

        <div class="alert alert-danger role="alert>
            Error al editar en cliente<?php echo mysqli_error($con);?>
        </div>

        <?php
    }
}
    $id=mysqli_real_escape_string($con, $_REQUEST['id']??'');
    $query="SELECT idCliente,emailCliente,passwordCliente,nombreCliente,apellidoCliente,telefonoCliente,idDireccion from cliente where idCliente='".$id."'; ";
    $res=mysqli_query($con,$query);
    $row=mysqli_fetch_assoc($res);
    $query2="SELECT direccion.idDireccion,direccion.calle,direccion.colonia,direccion.codigoPostal,direccion.Estado,direccion.numeroInterio,direccion.numeroExterior from direccion inner join cliente on direccion.idDireccion=cliente.idDireccion where idCliente='".$id."'";
    $res2=mysqli_query($con,$query2);
    $row2=mysqli_fetch_assoc($res2);
    $query3="SELECT imagen.idImagen,imagen.nombreImagen,imagen.tamaÃ±oImagen,imagen.direccionImagen from imagen inner join cliente on imagen.idImagen=cliente.idImagen where idCliente='".$id."'";
    $res3=mysqli_query($con,$query3);
    $row9=mysqli_fetch_assoc($res3);
?>



<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Editar usuario </strong>
                    </div>
                    <div class="card-body">
                        <form action="dashboard.php?modulo=editarUsuario" method="post">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" value="<?php echo $row['emailCliente']; ?>" required="required">
                            </div>
                            <div class="form-group" >
                                <label>Password</label>
                                <input type="hidden" name="password" class="form-control" value="<?php echo $row['passwordCliente']; ?>">
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" name="nombre" class="form-control" value="<?php echo $row['nombreCliente'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Apellido</label>
                                <input type="text" name="apellido" class="form-control" value="<?php echo $row['apellidoCliente'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="text" name="telefono" class="form-control" value="<?php echo $row['telefonoCliente'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Calle</label>
                                <input type="text" name="calle" class="form-control" value="<?php echo $row2['calle'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Colonia</label>
                                <input type="text" name="colonia" class="form-control" value="<?php echo $row2['colonia'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Codigo Postal</label>
                                <input type="text" name="codigoPostal" class="form-control" value="<?php echo $row2['codigoPostal'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Estado</label>
                                <input type="text" name="Estado" class="form-control" value="<?php echo $row2['Estado'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Número Exterior</label>
                                <input type="text" name="numeroExterior" class="form-control" value="<?php echo $row2['numeroExterior'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Número Interior</label>
                                <input type="text" name="numeroInterior" class="form-control" value="<?php echo $row2['numeroInterio'] ?>" >
                            </div>

                            <input type="hidden" name="id" value="<?php echo $row['idCliente'] ?>" required="required">
                            <input type="hidden" name="idImagen" value="<?php echo $row9['idImagen'] ?>" required="required">
                            <input type="hidden" name="idDireccion" value="<?php echo $row2['idDireccion'] ?>" required="required">

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