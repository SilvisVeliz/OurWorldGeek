<html class="no-js" lang="">
<?php
session_start();

include_once "conexion.php";
$con=mysqli_connect($host,$user,$pass,$db);
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ShoperiaGeek</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="./dashboard/elaadmin-master/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="./dashboard/elaadmin-master/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    
</head>
<body class="bg-dark">

    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.php?modulo=principal">
                        <img class="align-content" src="./dashboard/elaadmin-master/images/logo.png" alt="">
                    </a>
                </div>
                <div class="login-form">
                
                <!--
                <?php
                    use PHPMailer\PHPMailer\PHPMailer;
                    use PHPMailer\PHPMailer\Exception;
                    require 'composer/vendor/phpmailer/phpmailer/src/Exception.php';
                    require 'composer/vendor/phpmailer/phpmailer/src/PHPmailer.php'; 
                    require 'composer/vendor/phpmailer/phpmailer/src/SMTP.php';
          

                    //correoCodigo();
                    if(isset($_POST['email'])){
                        //function correoCodigo(){
                      
                        $codigo;
                        $max=999999;   
                        $min=100000;
                        $codigo=random_int($min, $max);
                        $correo=$_POST['email'];
                        
                        //codigo para hacer que el codigo se guarde
                            $query="UPDATE empleado SET codigoAcceso='".$codigo."' where emailEmpleado='".$correo."';";
                            $res=mysqli_query($con,$query);
                            $row=mysqli_fetch_assoc($res);
                        if($row){
                        }else{
                            $query="UPDATE cliente SET codigoAcceso='".$codigo."' where emailCliente='".$correo."';";
                            $res=mysqli_query($con,$query);
                            $row=mysqli_fetch_assoc($res);
                        }
                        //termina codigo para codigo
                        
                        //PHPMailer Object
                        $mail = new PHPMailer(true); 
                        try{
                            $mail->SMTPDebug=2;
                            $mail->isSMTP();
                            $mail->Host='smtp.office365.com';
                            $mail->SMTPAuth=true;
                            $mail->Username='shoperiaGeek@outlook.com';
                            $mail->Password='ErMaMiRa04+07';
                            $mail->SMTPSecure='tls';
                            $mail->Port=587;
            
                            $mail->setFrom('shoperiaGeek@outlook.com', 'ShoperiaGeek.com');
                            $mail->addAddress($correo, 'Mailer');
            
            
            
                            $mail->isHTML(true);
                            $mail->Subject='No. de acceso';
                            $mail->Body="Su no. de acceso es: ".$codigo. ". Saludos";
            
                            $mail->send();
        
                        }catch(Exception $e){
                            echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
                        }
                    }
                ?>    
                -->

               
                <?php     
                    //aqui empieza el login
                    
                    if(isset($_REQUEST['Login'])){
                        $email=$_REQUEST['email']??'';
                        $password=$_REQUEST['password']??'';
                        $password=md5($password);
                        $codigoA=$_REQUEST['codigo']??'';
                        
                        $query="SELECT codigoAcceso from empleado where emailEmpleado='".$email."'";
                        $res=mysqli_query($con,$query);
                        $row=mysqli_fetch_assoc($res);
                        
                        
                        $query="SELECT idEmpleado,emailEmpleado,nombreEmpleado from empleado where emailEmpleado='".$email."' and passwordEmpleado='".$password."' and codigoAcceso='".$codigoA."'";
                        $res=mysqli_query($con,$query);
                        $row=mysqli_fetch_assoc($res);
                        if($row){
                            $_SESSION['idEmpleado']=$row['idEmpleado'];
                            $_SESSION['emailEmpleado']=$row['emailEmpleado'];
                            $_SESSION['nombreEmpleado']=$row['nombreEmpleado'];
                            header("location: index.php");
                        }else{
                            $query="SELECT idCliente,emailCliente,nombreCliente from cliente where emailCliente='".$email."' and passwordCliente='".$password."' and codigoAcceso='".$codigoA."'";
                            $res=mysqli_query($con,$query);
                            $row=mysqli_fetch_assoc($res);
                            if($row){
                                $_SESSION['idCliente']=$row['idCliente'];
                                $_SESSION['emailCliente']=$row['emailCliente'];
                                $_SESSION['nombreCliente']=$row['nombreCliente'];
                                header("location: index.php");
                            }else{
                                ?>
                                <div class="alert alert-danger" role="alert">
                                    Error de login
                                </div>
                                <?php
                            }
                        }
                        
                    }
                    //termina el login
                    ?>
                    
                    
                    <form>
                       
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email" class="form-control" placeholder="Email" name="email">
                        </div>
                        
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Password" name="password">
                        </div>
                        
                        <div class="form-group">
                            <label>codigo de verificación</label>
                            <input class="form-control" placeholder="Código" name="codigo">
                        </div>
                        
                        <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30" name="Login">Sign in</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="./dashboard/elaadmin-masterassets/assets/js/main.js"></script>

</body>
</html>

