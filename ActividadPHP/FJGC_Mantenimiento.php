
<?php
include "../Template/header.php";
 ?>
        <!--seccion mostrar Datos-->
          <?php
          include "../Actividad7/FJGC_conexion2.php";
          $sql="select * from ruta";
          $sqlQuery = $pdo -> prepare($sql); // preparamos consulta sql
          $sqlQuery -> execute(); //ejecutamos consulta
          $resultado = $sqlQuery ->fetchAll(); // almacenamos los datos consultados
           ?>
           <table class="table table-dark">
             <tr>
               <td>Codigo</td>
               <td>Destino</td>
               <td>Desde</td>
               <td>Hasta</td>
               <td>Personas</td>
             </tr>
             <?php
             foreach($resultado as $res){?>
               <tr>
                 <td><?php echo $res['id_ruta'];?></td>
                 <td><?php echo $res['destino'];?></td>
                 <td><?php echo $res['fecha_salida'];?></td>
                 <td><?php echo $res['fecha_arribo'];?></td>
                 <td><?php echo $res['hora_salida'];?></td>
                 <td><?php echo $res['estado'] == 'A' ? '<span class="badge badge-pill badge-primary">Activo</span>':'<span class="badge badge-pill badge-primary">Inactivo</span>';?></td>
                 <td><a href="../Actividad7/FJGC_CrearRuta.php?cod=<?php echo $res['id_ruta']; ?>">Modificar</a></td>
                 <td><a href="../Actividad7/FJGC_Ruta.php?cod=<?php echo $res['id_ruta']; ?>">Eliminar</a></td>
               </tr>
             <?php }

              ?>
           </table>
            <!--seccion mostrar Datos-->
            <form action="../Actividad7/FJGC_CrearRuta.php" method="post">
            <input type="submit" name="btn_insertar" value="Agregar Destino" class="btn btn-dark"/>
          </form>
        <br/>
<?php
include "../Template/footer.php"
 ?>
