<?php

include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);

$queryVentas7Dias="SELECT COUNT(idPedido) as num from pedido where fechaPedido BETWEEN DATE(DATE_SUB(NOW(),INTERVAL 7 DAY) )AND NOW(); ";
$resVentas7Dias=mysqli_query($con,$queryVentas7Dias);
$rowVentas7Dias=mysqli_fetch_assoc($resVentas7Dias);

$queryVentas7DiasI="SELECT SUM(costoTotal) as total from pedido where fechaPedido BETWEEN DATE(DATE_SUB(NOW(),INTERVAL 7 DAY) )AND NOW(); ";
$resVentas7DiasI=mysqli_query($con,$queryVentas7DiasI);
$rowVentas7DiasI=mysqli_fetch_assoc($resVentas7DiasI);

$queryVentasxDia="SELECT COUNT(idPedido) as num from pedido where fechaPedido = DATE(NOW()) ; ";
$resVentasxDia=mysqli_query($con,$queryVentasxDia);
$rowVentasxDia=mysqli_fetch_assoc($resVentasxDia);

$queryVentasxDiaI="SELECT sum(costoTotal) as total from pedido where fechaPedido = DATE(NOW()) ; ";
$resVentasxDiaI=mysqli_query($con,$queryVentasxDiaI);
$rowVentasxDiaI=mysqli_fetch_assoc($resVentasxDiaI);

$queryVentasMes="SELECT COUNT(idPedido) as num from pedido where fechaPedido BETWEEN DATE(DATE_SUB(NOW(),INTERVAL 30 DAY) )AND NOW(); ";
$resVentasMes=mysqli_query($con,$queryVentasMes);
$rowVentasMes=mysqli_fetch_assoc($resVentasMes);

$queryVentasMesI="SELECT SUM(costoTotal) as total from pedido where fechaPedido BETWEEN DATE(DATE_SUB(NOW(),INTERVAL 30 DAY) )AND NOW(); ";
$resVentasMesI=mysqli_query($con,$queryVentasMesI);
$rowVentasMesI=mysqli_fetch_assoc($resVentasMesI);

$queryTotalClientes="SELECT COUNT(idCliente) as num from cliente";
$resToralClientes=mysqli_query($con,$queryTotalClientes);
$rowTotalClientes=mysqli_fetch_assoc($resToralClientes);

$queryTotalProductos="SELECT COUNT(idProducto) as num from producto";
$resToralProducto=mysqli_query($con,$queryTotalProductos);
$rowTotalProductos=mysqli_fetch_assoc($resToralProducto);

$queryVentasPorDia="
SELECT sum(detallePedido.cantidadCompra) as total,pedido.fechaPedido from pedido INNER JOIN detallePedido on detallePedido.idPedido = pedido.idPedido
GROUP BY DAY(pedido.fechaPedido);";
$resVentasPorDia=mysqli_query($con,$queryVentasPorDia);
$labelPedidos="";
$datosPedidos="";
while($rowVentasPorDia=mysqli_fetch_assoc($resVentasPorDia)){
    $labelPedidos=$labelPedidos."'".date_format(date_create($rowVentasPorDia['fechaPedido']),"Y-m-d")."',";
    $datosPedidos=$datosPedidos.$rowVentasPorDia['total'].",";
}
$labelPedidos=rtrim($labelPedidos,",");
$datosPedidos=rtrim($datosPedidos,",");

?>

<script>
    var labelPedidos=[<?php echo $labelPedidos; ?>]
    var datosPedidos=[<?php echo $datosPedidos; ?>]
</script>


<!-- Content -->
<div class="content">
    <!-- Animated -->
    <div class="animated fadeIn">
        <!-- Widgets  -->
        <div class="row">
            <!-- <div class="col-lg-3 col-md-6">
                 <div class="card">
                     <div class="card-body">
                         <div class="stat-widget-five">
                             <div class="stat-icon dib flat-color-1">
                                 <i class="pe-7s-cash"></i>
                             </div>
                             <div class="stat-content">
                                 <div class="text-left dib">
                                     <div class="stat-text">$<span class="count">23569</span></div>
                                     <div class="stat-heading">Ingresos</div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>-->

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-2">
                                <i class="pe-7s-cart"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text">Pedidos <span class="count"><?php echo $rowVentas7Dias['num']?></span></div>
                                    <div class="stat-text">$ <span class="count"><?php echo $rowVentas7DiasI['total']?></span></div>
                                    <div class="stat-heading">Pedidos de 7 días - Ingresos</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-2">
                                <i class="pe-7s-cart"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text">Pedidos <span class="count"><?php echo $rowVentasxDia['num']?></span></div>
                                    <div class="stat-text">$ <span class="count"><?php echo $rowVentasxDiaI['total']?></span></div>
                                    <div class="stat-heading">Pedidos del día - Ingresos</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-2">
                                <i class="pe-7s-cart"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text">Pedidos <span class="count"><?php echo $rowVentasMes['num']?></span></div>
                                    <div class="stat-text">$ <span class="count"><?php echo $rowVentasMesI['total']?></span></div>
                                    <div class="stat-heading">Pedidos del mes - Ingresos</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--<div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-3">
                                <i class="pe-7s-browser"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text"><span class="count">349</span></div>
                                    <div class="stat-heading">Plantillas</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-4">
                                <i class="pe-7s-users"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text"><span class="count"><?php echo $rowTotalClientes['num'] ?></span></div>
                                    <div class="stat-text">-<span class="text"></span></div>
                                    <div class="stat-heading">Total de clientes</div>
                                </div>
                                <div class="text-left dib">
                                    <div class="stat-text"><span class="count"><?php echo $rowTotalProductos['num'] ?></span></div>
                                    <div class="stat-text">-<span class="text"></span></div>
                                    <div class="stat-heading">Total de productos</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Widgets -->
        <!--  Traffic  -->

        <!--  /Traffic -->
        <div class="clearfix"></div>
        <!-- Orders -->
        <div class="orders">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="box-title">Órdenes </h4>
                        </div>
                        <div class="card-body--">
                            <div class="table-stats order-table ov-h">
                                <!--Hombres trabajando-->
                                 <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <thead>
                            <tr>

                                <th>Número de orden</th>
                                <th>Cliente</th>
                                <th>Dirección</th>
                                <th>Fecha</th>
                                <th>Producto</th>
                                <th>Total a pagar</th>
                                <th>Estado de compra</th>

                            </tr>
                            </thead>
                            <tbody>
                            
                            <?php

                            $query="SELECT pedido.idPedido, cliente.nombreCliente, CONCAT(direccion.calle, direccion.colonia, direccion.codigoPostal, direccion.Estado, direccion.numeroInterio, direccion.numeroExterior) AS direccion, pedido.fechaPedido, producto.nombreProducto, pedido.costoTotal, detallepedido.status FROM (((cliente JOIN pedido ON cliente.idCliente=pedido.idCliente) JOIN detallepedido ON detallepedido.idPedido=pedido.idPedido) JOIN producto ON producto.idProducto=detallepedido.idProducto) JOIN direccion ON direccion.idDireccion=cliente.idDireccion";
                            $res=mysqli_query($con,$query);


                            while($row=mysqli_fetch_assoc($res)){

                                ?>

                                <tr>
                                    <td> <?php echo $row['idPedido']  ?> </td>
                                    <td> <?php echo $row['nombreCliente']  ?> </td>
                                    <td> <?php echo $row['direccion']  ?> </td>
                                    <td> <?php echo $row['fechaPedido']  ?> </td>
                                    <td> <?php echo $row['nombreProducto']  ?> </td>
                                    <td> <?php echo $row['costoTotal']  ?> </td>
                                    <td> <?php echo $row['status']  ?> </td>

                                </tr>

                                <?php
                            }
                            ?>
                            </tbody>
                        </table>
                            </div> <!-- /.table-stats -->
                        </div>
                    </div> <!-- /.card -->
                </div>  <!-- /.col-lg-8 -->

                
            </div>
        </div>


    </div>
    <!-- .animated -->
</div>
<!-- /.content -->