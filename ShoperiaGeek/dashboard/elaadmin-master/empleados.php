<?php



include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);

if(isset($_REQUEST['idBorrar'])){
    $id=mysqli_real_escape_string($con,$_REQUEST['idBorrar']??'');
    $query="DELETE from empleado where idEmpleado='".$id."';";
    $res=mysqli_query($con,$query);
    if($res){
        ?>
        <div class="alert alert-warning float-right" role="alert">
            <strong>Empleado borrado exitosamente</strong>
        </div>

        <?php
    }else{
        ?>
        <div class="alert alert-danger float-right" role="alert">
            <strong>Error al borrar <?php echo mysqli_error($con);?></strong>
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
                        <strong class="card-title">Empleados</strong>
                    </div>
                    <div class="card-header">
                        Crear empleado
                        <a href="dashboard.php?modulo=crearEmpleado"><i class="fa fa-plus" aria-hidden="true"></i></a>
                    </div>
                    <div class="card-body">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <thead>
                            <tr>

                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Email</th>
                                <th>Teléfono</th>
                                <th>Acceso</th>
                                <th>Sueldo</th>


                                <?php
                                $id1=mysqli_real_escape_string($con, $_REQUEST['id']??'');
                                $query1="SELECT idEmpleado,acceso from empleado where idEmpleado='". $_SESSION['idEmpleado']."'; ";
                                $res1=mysqli_query($con,$query1);
                                $row1=mysqli_fetch_assoc($res1);

                                if($row1['acceso'] =='Administrador'){
                                    ?>
                                    <th>Acciones
                                        <a href="dashboard.php?modulo=crearEmpleado"><i class="fa fa-plus" aria-hidden="true"></i></a>
                                    </th>
                                    <?php
                                }
                                ?>





                            </tr>
                            </thead>
                            <tbody>
                            <?php

                            $query="SELECT idEmpleado,nombreEmpleado,apellidoEmpleado,emailEmpleado,passwordEmpleado,telefonoempleado,acceso,suledo from empleado;  ";
                            $res=mysqli_query($con,$query);


                            while($row=mysqli_fetch_assoc($res)){

                                ?>

                                <tr>
                                    <th> <?php echo $row['nombreEmpleado']  ?> </th>
                                    <th> <?php echo $row['apellidoEmpleado']  ?> </th>
                                    <th> <?php echo $row['emailEmpleado']  ?> </th>
                                    <th> <?php echo $row['telefonoempleado']  ?> </th>
                                    <th> <?php echo $row['acceso']  ?> </th>
                                    <th> <?php echo $row['suledo']  ?> </th>

                                    <?php
                                    $id1=mysqli_real_escape_string($con, $_REQUEST['id']??'');
                                    $query1="SELECT idEmpleado,acceso from empleado where idEmpleado='". $_SESSION['idEmpleado']."'; ";
                                    $res1=mysqli_query($con,$query1);
                                    $row1=mysqli_fetch_assoc($res1);

                                    if($row1['acceso'] =='Administrador'){
                                        ?>
                                        <th>
                                            <a href="dashboard.php?modulo=editarEmpleado&id=<?php echo $row['idEmpleado'] ?>" style="margin-right: 10%"><i class="fa fa-edit"></i></a>
                                            <a href="dashboard.php?modulo=empleados&idBorrar=<?php echo $row['idEmpleado'] ?>" class="text-danger borrar"><i class="fa fa-trash"></i></a>
                                        </th>
                                        <?php
                                    }
                                    ?>


                                </tr>

                                <?php
                            }
                            ?>
                            </tbody>
                        </table>
                        <!-- comienza tabla bitacora-->
                        
                        <div class="card-header">
                        <strong class="card-title">Bitacora de los Empleados</strong>
                    </div>
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                           <thead>
                            <tr>
                                <th>Número de bitacora</th>
                                <th>idEmpleado</th>
                                <th>Fecha</th>
                                <th>Responsable</th>
                                <th>Actividad realizada</th>
                                <th>Cambios realizados</th>
                                
                            </tr>

                            <?php
                                $query="SELECT * from bitacoraempleado";
                                $res=mysqli_query($con,$query);


                                while($row=mysqli_fetch_assoc($res)){
                            ?>

                            <tr>
                                <td><?php echo $row['idBitacoraEmpleado']  ?></td>
                                <td><?php echo $row['idEmpleado']  ?></td>
                                <td><?php echo $row['fecha']  ?></td>
                                <td><?php echo $row['responsable']  ?></td>
                                <td><?php echo $row['actividad_realizada']  ?></td>
                                <td><?php echo $row['informacion_actual']  ?></td>
                                
                            </tr>
                            </thead>
                            <?php
                            }
                            ?>    
                        </table>
                        
                   <!--termina tabla bitacora-->
                    </div>
                </div>
            </div>


        </div>
    </div><!-- .animated -->
</div><!-- .content -->

