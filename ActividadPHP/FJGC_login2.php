<?php
session_start();
include "../Practica1/conexion.php";
 ?>
 <!DOCTYPE html>
 <html lang="en" >

 <head>
   <meta charset="UTF-8">
   <title>Login/Logout animation concept</title>
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">

   <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
   <link href="../dist/style2.css" rel="stylesheet"/>
 </head>

 <body>
   <div class="cont">
   <div class="demo">
       <!--Inicio Login-->
     <div class="login">
       <div class="login__check"></div>
       <form method="post" action="../Actividad7/FJGC_acceso2.php" name="formulario_login" id="frm_login" >
         <div class="login__form">
         <div class="login__row">
           <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
          </svg>
         <input type="text" placeholder="Usuario" name="username" class="login__input name">
       </div>
         <div class="login__row">
           <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
          </svg>
         <input type="password" placeholder="Contrasena" name="pass"class="login__input pass">
       </div>
         <input type="submit" value="Log In" name="btnlogin" class="login__submit">
         <a href="#">Recuperar Contrasena?</a><br>
         <a href="#">Registrarse</a>
       </form>

     </div>
   </div>

       <!--\Fin login-->

   </div>
 </div>
   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
     <script  src="./script.js"></script>
 </body>
 </html>
