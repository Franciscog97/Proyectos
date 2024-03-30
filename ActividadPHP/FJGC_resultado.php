
 <?php
 include "../Actividad7/cabecera.php";
  ?>
  <?php
  @$des = $_POST['destino'];
  $sql="select * from ruta where destino='$des'";
  $sqlQuery = $pdo -> prepare($sql); // preparamos consulta sql
  $sqlQuery -> execute(); //ejecutamos consulta
  $resultado = $sqlQuery ->fetchAll(); // almacenamos los datos consultados
   ?>
   <h1 align="center">Resultado de Busqueda</h1>
   <table class="table table-dark">
     <tr>
       <td>Destino</td>
       <td>Fecha Disponibilidad</td>
       <td>Habitaciones Disponibles</td>
       <td>Personas x Habitacion</td>
     </tr>
     <?php
     foreach($resultado as $res){?>
       <tr>
         <td style="height:230px"><?php echo $res['destino'];?></td>
         <td><?php echo $res['fecha_salida'];?></td>
         <td><?php echo $res['fecha_arribo'];?></td>
         <td><?php echo $res['hora_salida'];?></td>
         <td><a href="#">Seleccionar</a></td>

       </tr>
     <?php }

      ?>
   </table>
    <!--seccion mostrar Datos-->
<br/>
  <?php
  include "../Template/footer.php";
   ?>
