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

                    </div><!-- /.row -->
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