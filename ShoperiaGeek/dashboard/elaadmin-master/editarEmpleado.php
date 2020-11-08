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
    $acceso=mysqli_real_escape_string($con,$_REQUEST['acceso']??'');
    $sueldo=mysqli_real_escape_string($con,$_REQUEST['sueldo']??'');
    $id=mysqli_real_escape_string($con,$_REQUEST['id']??'');




    $query="UPDATE empleado SET
        emailEmpleado='".$email."',passwordEmpleado='".$pass."',nombreEmpleado='".$nombre."',apellidoEmpleado='".$apellido."',telefonoempleado='".$telefono."',
        acceso='".$acceso."', Suledo='".$sueldo."'
        where idEmpleado='".$id."';
        ";
    $res=mysqli_query($con,$query);

    if($res){
        echo '<meta http-equiv="refresh" content="0; url=dashboard.php?modulo=empleados&mensaje=Empleado '.$nombre.' editado exitosamente"/>';
    }else{
        ?>

        <div class="alert alert-danger role="alert>
            Error al editar empleado <?php echo mysqli_error($con);?>
        </div>

        <?php
    }
}
$id=mysqli_real_escape_string($con, $_REQUEST['id']??'');
$query="SELECT idEmpleado,emailEmpleado,passwordEmpleado,nombreEmpleado,apellidoEmpleado,telefonoempleado, acceso,suledo from empleado where idEmpleado='".$id."'; ";
$res=mysqli_query($con,$query);
$row=mysqli_fetch_assoc($res);

?>



<div class="content">
    <div class="animated fadeIn">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Editar Empleado </strong>
                    </div>
                    <div class="card-body">
                        <form action="dashboard.php?modulo=editarEmpleado" method="post">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" value="<?php echo $row['emailEmpleado']; ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" name="nombre" class="form-control" value="<?php echo $row['nombreEmpleado'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Apellido</label>
                                <input type="text" name="apellido" class="form-control" value="<?php echo $row['apellidoEmpleado'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="number" name="telefono" class="form-control" value="<?php echo $row['telefonoempleado'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Accesso</label>
                                <input type="text" name="acceso" class="form-control" value="<?php echo $row['acceso'] ?>" required="required">
                            </div>
                            <div class="form-group">
                                <label>Sueldo</label>
                                <input type="number" name="sueldo" class="form-control" value="<?php echo $row['suledo'] ?>" required="required">
                            </div>
                            <input type="hidden" name="id" value="<?php echo $row['idEmpleado'] ?>" required="required">

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
