<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="ReservaBoletos.Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/avion.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/flaticon.css"/>
    <link rel="stylesheet" href="css/icomoon2.css"/>
    <link rel="stylesheet" href="css/style2.css"/>
</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light ftco-navbar-light-2" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">ITSCO S.A</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="Login.aspx" class="nav-link">Volver</a></li>
	          <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="Vuelos.aspx">Vuelos</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
                <a class="dropdown-item" href="Compra.html">Cart</a>
                <a class="dropdown-item" href="Compra.aspx">Checkout</a>
              </div>
            </li>
	          <li class="nav-item"><a href="about.html" class="nav-link">Seguros</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Iniciar Sesion</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Ayuda</a></li>
	          <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <form runat="server" method="post" class="ftco-section bg-light">
            <h1 class="mb-0 bread">Seleccion de Asientos</h1>
        
        <div id="cabeza">
            <img src="images/713974.png" id="parabrisas"/>
            <img src="images/713974.png" id="parabrisas2"/>
            </div>
        <div id="general">
           
             
            
			<div id="two">
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_1" OnClick="asi_1_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_2" OnClick="asi_2_Click"/>
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_3" OnClick="asi_3_Click"/>
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_4" OnClick="asi_4_Click" />
			</div>
            <div id="tres">
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_5" OnClick="asi_5_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_6" OnClick="asi_6_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_7" OnClick="asi_7_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_8" OnClick="asi_8_Click" />
            </div>
            <div id="cuatro">
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_9" OnClick="asi_9_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_10" OnClick="asi_10_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_11" OnClick="asi_11_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_12" OnClick="asi_12_Click" />
            </div>
            <div id="cinco">
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_13" OnClick="asi_13_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_14" OnClick="asi_14_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_15" OnClick="asi_15_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_16" OnClick="asi_16_Click" />
            </div>
               <div id="seis">
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_17" OnClick="asi_17_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_18" OnClick="asi_18_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_19" OnClick="asi_19_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_20" OnClick="asi_20_Click" />
            </div>
            <div id="siete">
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_21" OnClick="asi_21_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_22" OnClick="asi_22_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_23" OnClick="asi_23_Click" />
                <br/>
                <asp:ImageButton runat="server" ImageUrl="~/images/gris_006-asientos.png" Width="30px" Height="30px" ID="asi_24" OnClick="asi_24_Click" />
            </div>
             
        </div>
        <div id="cola">

            </div>
        			
        <p class="text-center"><a href="Compra.aspx" class="btn btn-primary py-3 px-4" >Hacer Checkout</a></p>
        
    </form>
        <footer class="ftco-footer bg-light ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Modist</h2>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Journal</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
	                <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
	                <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
	                <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
	              </ul>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">FAQs</a></li>
	                <li><a href="#" class="py-2 d-block">Contact</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
          </div>
        </div>
      </div>
    </footer>
</body>
</html>
