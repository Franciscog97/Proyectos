<?php
session_start();
include "../Practica1/conexion.php";
/*if (isset($_POST['btnlogin'])!=null) {
  $usu = $_POST['username'];
  $pass = $_POST['pass'];
  echo "<h1>Usuario".$usu."Clave:".$pass."<h1>";
}else{
  echo "Datos no Valido";
}*/
$_SESSION["contador"] = 0;
if (isset($_POST["btnlogin"])) {
if (trim($_POST['username']) !="" && ($_POST['pass'])!="") {
  $fjgc_usu = $_POST['username'];
  $fjgc_pass = $_POST['pass'];
  $fjgc_passMd5 = md5($fjgc_pass);

  $_SESSION['usuario']=$fjgc_usu;

  $sql="select * from usuario where usuario='$fjgc_usu' and password='$fjgc_pass'";
  $sqlQuery = $pdo -> prepare($sql); // preparamos consulta sql
  $sqlQuery -> execute(); //ejecutamos consulta
  $resultado = $sqlQuery ->fetchAll(); // almacenamos los datos consultados

  foreach($resultado as $res){
    $rol = $res['idrol'];
    }

    if (@$rol) {
      switch ($rol) {
        case("1"):
          echo("Administrador");
          header('Location: ../Actividad7/FJGC_Mantenimiento.php');
          break;
        case("2"):
          echo("Invitado");
          header('Location: ../Actividad7/FJGC_index.php');
          break;
      }
    }else {
      echo("usuario/Password incorrectos");
    }

}else{
echo("Ingrese Datos");
}
}
 ?>
