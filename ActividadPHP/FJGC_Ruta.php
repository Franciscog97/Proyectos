<?php
include "../Actividad7/conexion2.php";
if ($_GET) {
  $data=['id'=>$_GET['cod']
  ];
  $sql="update ruta set estado='I' where id_ruta=:id";
  $query=$pdo->prepare($sql);
  $query->execute($data);
  echo "<script>alert('');location.href='../Actividad7/Mantenimiento.php';</script>";
}


  if (isset($_POST['btn_crear'])!=null) {
    $data=['destino'=>$_POST['tbx_destino'],
           'fecha'=>$_POST['tbx_fecha'],
           'habitaciones'=>$_POST['tbx_habitaciones'],
           'personas'=>$_POST['tbx_personas'],
           'estado'=>"A"
    ];
    $sql="insert into ruta(destino,fecha_salida,fecha_arribo,hora_salida,estado) values(:destino,:fecha,:habitaciones,:personas,:estado)";
    $query=$pdo->prepare($sql);
    $query->execute($data);
    echo "<script>alert('Datos Ingresados');location.href='../Actividad7/Mantenimiento.php';</script>";
  }
  if (isset($_POST['btn_modificar'])!=null) {
    $data=['codigo'=>$_POST['tbx_id'],
            'destino'=>$_POST['tbx_destino'],
            'fecha'=>$_POST['tbx_fecha'],
            'habitaciones'=>$_POST['tbx_habitaciones'],
            'personas'=>$_POST['tbx_personas'],
            'estado'=>"A"
    ];
    $sql="update ruta set destino=:destino,fecha_salida=:fecha,fecha_arribo=:habitaciones,hora_salida=:personas,estado=:estado where id_ruta=:codigo";
    $query=$pdo->prepare($sql);
    $query->execute($data);
    echo "<script>alert('Datos Modificados');location.href='../Actividad7/Mantenimiento.php';</script>";
  }
  //Validacion Submenu
  if ($_GET) {
    $data=['id'=>$_GET['menu']
    ];
    $sql="select descripcion_submenu from submenu where fk_menu=:id";
    $query=$pdo->prepare($sql);
    $query->execute($data);
  }
 ?>
