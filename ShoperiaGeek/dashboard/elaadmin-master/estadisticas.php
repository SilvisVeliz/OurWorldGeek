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
<div>
    <div class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="box-title">Ventas por día </h4>
                    </div>
                    <!-- estas lineas son necesarias --> 
                    <div class="card-body">
                        <div id="traffic-chart" class="traffic-chart" id="flotPie1" id="flotLine5" id="cellPaiChart"></div>
                    </div>
                    <!-- estas lineas son necesarias --> 
                </div>
            </div><!-- /# column -->
        </div>
    </div>    
</div>
