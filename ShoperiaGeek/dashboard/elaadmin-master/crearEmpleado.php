<?php
$host="localhost";
$user="root";
$pass="";
$db="shoperiageek";
include_once "../../conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);




if(isset($_REQUEST['guardar'])){
    $email=mysqli_real_escape_string($con,$_REQUEST['email']??'');
    $pass=md5(mysqli_real_escape_string($con,$_REQUEST['password']??''));
    $nombre=mysqli_real_escape_string($con,$_REQUEST['nombre']??'');
    $apellido=mysqli_real_escape_string($con,$_REQUEST['apellido']??'');
    $telefono=mysqli_real_escape_string($con,$_REQUEST['telefono']??'');
    $acceso=mysqli_real_escape_string($con,$_REQUEST['acceso']??'');
    $Sueldo=mysqli_real_escape_string($con,$_REQUEST['sueldo']??'');




    $query="INSERT INTO empleado
        (emailEmpleado,passwordEmpleado,nombreEmpleado,apellidoEmpleado,telefonoempleado,acceso,suledo) VALUES
        ('".$email."','".$pass."','".$nombre."','".$apellido."','".$telefono."','".$acceso."','".$Sueldo."')";
    $res=mysqli_query($con,$query);

    if($res){
        echo '<meta http-equiv="refresh" content="0; url=dashboard.php?modulo=empleados&mensaje=Empleado creado"/>';
    }else{
        ?>

        <div class="alert alert-danger role="alert>
            Error al crear empleado <?php echo mysqli_error($con);?>
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
                        <strong class="card-title">Crear Empleado</strong>
                    </div>
                    <div class="card-body">
                        <form action="dashboard.php?modulo=crearEmpleado" method="post" required="required">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" name="nombre" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Apellido</label>
                                <input type="text" name="apellido" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="number" name="telefono" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Accesso</label>
                                <input type="text" name="acceso" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Sueldo</label>
                                <input type="number" name="sueldo" class="form-control" required="required">
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