<?php
$host="localhost";
$user="root";
$pass="";
$db="shoperiageek";
include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);




if(isset($_REQUEST['guardar'])){
    $email=mysqli_real_escape_string($con,$_REQUEST['email']??'');
    $pass=md5(mysqli_real_escape_string($con,$_REQUEST['password']??''));
    $nombre=mysqli_real_escape_string($con,$_REQUEST['nombre']??'');
    $apellido=mysqli_real_escape_string($con,$_REQUEST['apellido']??'');
    $telefono=mysqli_real_escape_string($con,$_REQUEST['telefono']??'');
    $id=mysqli_real_escape_string($con,$_REQUEST['id']??'');




    $query="UPDATE cliente SET
        emailCliente='".$email."',passwordCliente='".$pass."',nombreCliente='".$nombre."',apellidoCliente='".$apellido."',telefonoCliente='".$telefono."' 
        where idCliente='".$id."';
        ";
    $res=mysqli_query($con,$query);

    if($res){
        echo '<meta http-equiv="refresh" content="0; url=index.php?modulo=usuarios&mensaje=Usuario '.$nombre.' editado exitosamente"/>';
    }else{
        ?>

        <div class="alert alert-danger role="alert>
            Error al editar usuario <?php echo mysqli_error($con);?>
        </div>

        <?php
    }
}
$id=mysqli_real_escape_string($con, $_REQUEST['id']??'');
$query="SELECT idCliente,emailCliente,passwordCliente,nombreCliente,apellidoCliente,telefonoCliente from cliente where idCliente='".$id."'; ";
$res=mysqli_query($con,$query);
$row=mysqli_fetch_assoc($res);

?>


<div class="content" style="margin-top: 10px">
    <div class="animated fadeIn">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Editar Perfil </strong>
                    </div>
                    <div class="card-body">
                        <form action="index.php?modulo=editarPerfil" method="post">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" value="<?php echo $row['emailCliente']; ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" required="required">
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
                                <input type="number" name="telefono" class="form-control" value="<?php echo $row['telefonoCliente'] ?>" required="required">
                            </div>
                            <input type="hidden" name="id" value="<?php echo $row['idCliente'] ?>" required="required">

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
