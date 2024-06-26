﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ReservaBoletos.Inicio" %>


<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login/Logout animation concept</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
  <link href="dist/style2.css" rel="stylesheet"/>
  
  

</head>

<body>

  <div class="cont">
  <div class="demo">
      <!--Inicio Login-->
     
    <div class="login">
      <div class="login__check"></div>
      <form id="frm_login" runat="server" name="formulario_login">
      <div class="login__form">
          <asp:ScriptManager runat="server"></asp:ScriptManager>
          <!--Aqui va el PlaceHolder-->
          <asp:UpdatePanel runat="server">
              <ContentTemplate>
        <div class="login__row">
          <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
          </svg>
            <asp:TextBox runat="server" CssClass="login__input name" Text="Usuario" ID="tbx_usuario" Enabled="true">

            </asp:TextBox>  
            <asp:RequiredFieldValidator runat="server" ID="rfv_tbx4" ControlToValidate="tbx_usuario" ErrorMessage="Campo en Blanco" ForeColor="Black" ValidationGroup="form_login">*</asp:RequiredFieldValidator>

        </div>

          <!--Fin Placeholder-->
          <!--Aqui va el PlaceHolder-->
        <div class="login__row">
          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
          </svg>
           <asp:TextBox runat="server" ID="tbx_pass" CssClass="login__input pass" Text="*********" TextMode="Password">

          </asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ID="rfv_tbx3" ControlToValidate="tbx_pass" ErrorMessage="Campo en Blanco" ForeColor="Black" ValidationGroup="form_login"></asp:RequiredFieldValidator>

        </div>
          </ContentTemplate>    
         </asp:UpdatePanel>
          <label id="lbl_mensaje"></label>
          <!--Fin Placeholder-->
         <asp:Button runat="server" Text="Sign in" ID="btn_login" CssClass="login__submit" OnClick="btn_login_Click" ValidationGroup="form_login"/>
        <p class="login__signup">Don't have an account? &nbsp;<a href="Registro.aspx">Sign up</a></p>
      </div>

      </form>
        
    </div>
       
      <!--\Fin login-->
    <div class="app">
      <div class="app__top">
        <div class="app__menu-btn">
          <span></span>
        </div>
        <svg class="app__icon search svg-icon" viewBox="0 0 20 20">
          <!-- yeap, its purely hardcoded numbers straight from the head :D (same for svg above) -->
          <path d="M20,20 15.36,15.36 a9,9 0 0,1 -12.72,-12.72 a 9,9 0 0,1 12.72,12.72" />
        </svg>
        <p class="app__hello">Good Morning!</p>
        <div class="app__user">
            
          <img src="../images/login.jpg" alt="" class="app__user-photo" />
          <span class="app__user-notif">3</span>
        </div>
        <div class="app__month">
          <span class="app__month-btn left"></span>
          <p class="app__month-name">March</p>
          <span class="app__month-btn right"></span>
        </div>
      </div>
      <div class="app__bot">
        <div class="app__days">
          <div class="app__day weekday">Sun</div>
          <div class="app__day weekday">Mon</div>
          <div class="app__day weekday">Tue</div>
          <div class="app__day weekday">Wed</div>
          <div class="app__day weekday">Thu</div>
          <div class="app__day weekday">Fri</div>
          <div class="app__day weekday">Sad</div>
          <div class="app__day date">8</div>
          <div class="app__day date">9</div>
          <div class="app__day date">10</div>
          <div class="app__day date">11</div>
          <div class="app__day date">12</div>
          <div class="app__day date">13</div>
          <div class="app__day date">14</div>
        </div>
        <div class="app__meetings">
          <div class="app__meeting">
            <img src="../images/login.jpg" alt="" class="app__meeting-photo" />
            <p class="app__meeting-name">Feed the cat</p>
            <p class="app__meeting-info">
              <span class="app__meeting-time">8 - 10am</span>
              <span class="app__meeting-place">Real-life</span>
            </p>
          </div>
          <div class="app__meeting">
            <img src="../images/login.jpg" alt="" class="app__meeting-photo" />
            <p class="app__meeting-name">Feed the cat!</p>
            <p class="app__meeting-info">
              <span class="app__meeting-time">1 - 3pm</span>
              <span class="app__meeting-place">Real-life</span>
            </p>
          </div>
          <div class="app__meeting">
            <img src="..images/login.jpg" alt="" class="app__meeting-photo" />
            <p class="app__meeting-name">FEED THIS CAT ALREADY!!!</p>
            <p class="app__meeting-info">
              <span class="app__meeting-time">This button is just for demo ></span>
            </p>
          </div>
        </div>
      </div>
      <div class="app__logout">
        <svg class="app__logout-icon svg-icon" viewBox="0 0 20 20">
          <path d="M6,3 a8,8 0 1,0 8,0 M10,0 10,12"/>
        </svg>
      </div>
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="./script.js"></script>




</body>

</html>




