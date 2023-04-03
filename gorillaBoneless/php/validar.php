<?php
include('db.php');
$correo=$_POST['correo'];
$password=$_POST['password'];
session_start();
$_SESSION['correo']=$correo;


$conexion=mysqli_connect("localhost","root","","gorillaz");

$consulta="SELECT*FROM registro where correo='$correo' and password='$password'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
  
    header("location:carrito.html");

}else{
    header("location:login.html?error=1");

}
mysqli_free_result($resultado);
mysqli_close($conexion);