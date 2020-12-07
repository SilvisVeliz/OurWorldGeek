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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Widgets -->
        <!--  Traffic  -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="box-title">Ventas por día </h4>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-body">
                                <!-- <canvas id="TrafficChart"></canvas>   -->
                                <div id="traffic-chart" class="traffic-chart"></div>
                            </div>
                        </div>

                        <!-- Acá necesario-->

                    </div> <!-- /.row -->
                    <div class="card-body"></div>
                </div>
            </div><!-- /# column -->
        </div>

        <!--  /Traffic -->
        <div class="clearfix"></div>
        <!-- Orders -->
        <div class="orders">
            <div class="row">
                <div class="col-xl-8">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="box-title">Órdenes </h4>
                        </div>
                        <div class="card-body--">
                            <div class="table-stats order-table ov-h">
                                <table class="table ">
                                    <thead>
                                    <tr>
                                        <th class="serial">#</th>
                                        <th class="avatar">Avatar</th>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Producto</th>
                                        <th>Total</th>
                                        <th>Estado</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="serial">1.</td>
                                        <td class="avatar">
                                            <div class="round-img">
                                                <a href="#"><img class="rounded-circle" src="images/avatar/1.jpg" alt=""></a>
                                            </div>
                                        </td>
                                        <td> #19 </td>
                                        <td>  <span class="name">Lourdes Millan</span> </td>
                                        <td> <span class="product">Playera de Justice League</span> </td>
                                        <td><span class="count">700</span></td>
                                        <td>
                                            <span class="badge badge-complete">Completado</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="serial">2.</td>
                                        <td class="avatar">
                                            <div class="round-img">
                                                <a href="#"><img class="rounded-circle" src="images/avatar/2.jpg" alt=""></a>
                                            </div>
                                        </td>
                                        <td> #06 </td>
                                        <td>  <span class="name">Gregory Dixon</span> </td>
                                        <td> <span class="product">Reloj de bolsillo de Edward Elric: FullMetal Alchemist</span> </td>
                                        <td><span class="count">450</span></td>
                                        <td>
                                            <span class="badge badge-complete">Completado</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="serial">3.</td>
                                        <td class="avatar">
                                            <div class="round-img">
                                                <a href="#"><img class="rounded-circle" src="images/avatar/3.jpg" alt=""></a>
                                            </div>
                                        </td>
                                        <td> #67 </td>
                                        <td>  <span class="name">Emmanuel Trellez</span> </td>
                                        <td> <span class="product">Juego de mesa: Werewolf Ultimate</span> </td>
                                        <td><span class="count">1000</span></td>
                                        <td>
                                            <span class="badge badge-complete">Completado</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="serial">4.</td>
                                        <td class="avatar">
                                            <div class="round-img">
                                                <a href="#"><img class="rounded-circle" src="images/avatar/4.jpg" alt=""></a>
                                            </div>
                                        </td>
                                        <td> #54 </td>
                                        <td>  <span class="name">Diego Durón</span> </td>
                                        <td> <span class="product">Figura de Akizuki: Kancolle</span> </td>
                                        <td><span class="count">900</span></td>
                                        <td>
                                            <span class="badge badge-pending">Pendiente</span>
                                        </td>
                                    </tr>
                                    <tr class=" pb-0">
                                        <td class="serial">5.</td>
                                        <td class="avatar pb-0">
                                            <div class="round-img">
                                                <a href="#"><img class="rounded-circle" src="images/avatar/6.jpg" alt=""></a>
                                            </div>
                                        </td>
                                        <td> #89 </td>
                                        <td>  <span class="name">Jonatan Hdz.</span> </td>
                                        <td> <span class="product">Llaves de Resident Evil como Llaveros.</span> </td>
                                        <td><span class="count">500</span></td>
                                        <td>
                                            <span class="badge badge-complete">Completado</span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div> <!-- /.table-stats -->
                        </div>
                    </div> <!-- /.card -->
                </div>  <!-- /.col-lg-8 -->

                <div class="col-xl-4">
                    <div class="row">
                        <div class="col-lg-6 col-xl-12">
                            <div class="card br-0">
                                <div class="card-body">
                                    <h4 class="card-title m-0">Plataformas</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-container ov-h">
                                        <div id="flotPie1" class="float-chart"></div>
                                    </div>
                                </div>
                            </div><!-- /.card -->
                        </div>

                        <div class="col-lg-6 col-xl-12">
                            <div class="card bg-flat-color-3  ">
                                <div class="card-body">
                                    <h4 class="card-title m-0  white-color ">Septiembre 2020</h4>
                                </div>
                                <div class="card-body">
                                    <div id="flotLine5" class="flot-line"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div> <!-- /.col-md-4 -->
            </div>
        </div>

        <div class="row">

            <div class="col-lg-12">
                <div class="card ov-h">
                    <div class="card-body bg-flat-color-2">
                        <div id="flotBarChart" class="float-chart ml-4 mr-4"></div>
                    </div>
                    <div id="cellPaiChart" class="float-chart"></div>
                </div><!-- /.card -->
            </div>

        </div>

    </div>
    <!-- .animated -->
</div>
<!-- /.content -->