
<?php
include "../Template/header.php";
@$cod=$_GET['cod'];
if ($cod ==null) {?>
  <h1>Listar Rutas</h1>
  <div class="panel-heading">

  </div>
  <div class="panel-body">
    <form action="../Actividad7/Ruta.php" method="post">
      <div class="row">
        <div class="col-lg-6">
          <div class="form-group">
            <label>Destino</label>
            <input type="text" name="tbx_destino" id="tbx_destino" placeholder="Destino" class="form-control">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label>Fecha Disponibilidad</label>
            <input type="text" name="tbx_fecha" id="tbx_fecha" placeholder="Fecha" class="form-control">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label>Habitaciones Disponibles</label>
            <input type="text" name="tbx_habitaciones" id="tbx_habitaciones" class="form-control">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label>Personas</label>
            <input type="text" name="tbx_personas" id="tbx_personas" class="form-control">
          </div>
        </div>
        <div class="col-lg-6">
          <input type="submit" name="btn_crear" value="Guardar" class="btn btn-dark">
        </div>


      </div>
      <form>
  </div>
<?php } else {
  $select="select * from ruta where id_ruta='$cod'";
  $query=$pdo->prepare($select);
  $query ->execute();
  $resultado=$query->fetchAll();
  foreach ($resultado as $res) {
    $id=$res['id_ruta'];
    $destino=$res['destino'];
    $fecha=$res['fecha_salida'];
    $habitaciones=$res['fecha_arribo'];
    $persona=$res['hora_salida'];
  }
  ?>


<h1>Listar Usuario</h1>
<div class="panel-heading">
Modificar Destino
</div>
<div class="panel-body">
  <form action="../Actividad7/Ruta.php" method="post">
    <div class="row">
          <input type="hidden" name="tbx_id" id="tbx_id" class="form-control" value="<?php echo $id;?>">
      <div class="col-lg-6">
        <div class="form-group">
          <label>Destino</label>
          <input type="text" name="tbx_destino" id="tbx_destino"  class="form-control" value="<?php echo $destino;?>">
        </div>
      </div>
      <div class="col-lg-6">
        <div class="form-group">
          <label>Fecha_disponibilidad</label>
          <input type="text" name="tbx_fecha" id="tbx_fecha"  class="form-control" value="<?php echo $fecha;?>">
        </div>
      </div>
      <div class="col-lg-6">
        <div class="form-group">
          <label>Habitaciones</label>
          <input type="text" name="tbx_habitaciones" id="tbx_habitaciones" class="form-control" value="<?php echo $habitaciones;?>">
        </div>
      </div>
      <div class="col-lg-6">
        <div class="form-group">
          <label>Personas </label>
          <input type="text" name="tbx_personas" id="tbx_personas" class="form-control" value="<?php echo $persona;?>">
        </div>
      </div>

      <div class="col-lg-6">
        <input type="submit" name="btn_modificar" value="Modificar" class="btn btn-dark">
      </div>


    </div>
    <form>
</div>
<?php } ?>

<?php
include "../Template/footer.php"
 ?>
