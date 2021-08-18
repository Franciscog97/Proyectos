﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modal.aspx.cs" Inherits="ReservaBoletos.Modal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700" rel="stylesheet"/>

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min2.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    
    <link rel="stylesheet" href="css/owl.carousel.min2.css"/>
    <link rel="stylesheet" href="css/owl.theme.default.min2.css"/>  
    <link rel="stylesheet" href="css/magnific-popup2.css"/>
     <link rel="stylesheet" href="css/aos.css"/>

    <link rel="stylesheet" href="css/ionicons.min2.css"/> 

    <link rel="stylesheet" href="css/bootstrap-datepicker2.css"/>
    <link rel="stylesheet" href="css/jquery.timepicker2.css"/>

    
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
	          <li class="nav-item"><a href="Login.aspx" class="nav-link">Inicio</a></li>
	          <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="shop.html">Shop</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
                <a class="dropdown-item" href="cart.html">Cart</a>
                <a class="dropdown-item" href="checkout.html">Checkout</a>
              </div>
            </li>
	         <li class="nav-item"><a href="about.html" class="nav-link ">Seguros</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link" data-toggle="modal" data-target="#exampleModalCenter">Iniciar Sesion</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Ayuda</a></li>
	          <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <div class="hero-wrap hero-bread" style="background-image: url('images/travel-banner.jpg');"  >
      <div class="container">

        <div class="row no-gutters slider-text align-items-center justify-content-center">
        </div>
      </div>
    </div>
    <form id="form1" runat="server">
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Launch demo modal
</button>
            <!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
                             <asp:UpdatePanel runat="server">
                                <ContentTemplate>
							<h3 class="mb-4 billing-heading">Registro</h3>
	          	<div class="row align-items-end">
	          		<div class="col-md-6">
	                <div class="form-group">
	                	<label for="firstname">Nombre</label>
	                  <asp:TextBox runat="server" ID="tbx_nombre" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_nombre" ValidationGroup="Factura"  ErrorMessage="*Requerido" ForeColor="Red"/> 
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="lastname">Apellido</label>
	                   <asp:TextBox runat="server" ID="tbx_apellido" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_apellido" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red" />
	                </div>
                </div>
                      <div class="col-md-6">
	                <div class="form-group">
	                	<label for="lastname">Tipo Documento</label>
	                   <asp:DropDownList runat="server" ID="ddl_tipo_documento" CssClass="form-control">
                           <asp:ListItem>Seleccione..</asp:ListItem>
                           <asp:ListItem>Cedula</asp:ListItem>
                           <asp:ListItem>RUC</asp:ListItem>
                           <asp:ListItem>Pasaporte</asp:ListItem>
	                   </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddl_tipo_documento" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red" />
	                </div>
                </div>
                <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="towncity">Cedula</label>
	                   <asp:TextBox runat="server" ID="tbx_cedula" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_cedula" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red" />
	                </div>
		            </div>
		                
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="streetaddress">Direccion</label>
                            <asp:TextBox runat="server" ID="tbx_direccion" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_direccion" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red"/>
	                </div>
		            </div>
		            
		        
                      <div class="col-md-6">
		            	<div class="form-group">
		            		<label for="country">Contrasena</label>
		            		<div class="select-wrap">
		                  <div class="icon"><span class=""></span></div>
                                <asp:TextBox runat="server" ID="tbx_contrasena" TextMode="Password" CssClass="form-control"/>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_contrasena" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red"/>
		                 
		                </div>
		            	</div>
		            </div>
		           <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress">Correo</label>
	                   <asp:TextBox runat="server" ID="tbx_correo" CssClass="form-control"></asp:TextBox>                   
                        <asp:RegularExpressionValidator ID="rev_email" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbx_correo" ErrorMessage="*Correo no Valido" ForeColor="Red"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_correo" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red" />
	                </div>
                       
                  </div>
                      <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress">Telefono</label>
	                   <asp:TextBox runat="server" ID="tbx_telefono" CssClass="form-control"></asp:TextBox>                      
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_telefono" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red"/>
	                </div>
                       
                  </div>
                <div class="w-100"></div>
              
	            </div>
                                    


                <div class="col-md-6">
	          	<div class="form-group">
									
                                        <p class="text-left"><a href="Inicio.aspx" class="btn btn-primary py-3 px-4" >Iniciar Sesion</a></p>
                                        
									
	          	</div>
                    </div>

                                    <div class="w-100"></div>
                    <div class="col-md-6">
                                     
                                    <div class="form-group">
                                        <asp:Button runat="server" ID="btn_registrar" Text="Registrarte" CssClass="btn btn-dark" Width="200px" OnClick="btn_registrar_Click"/>
                                        </div>
                        </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
            </ContentTemplate>
              </asp:UpdatePanel>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
    </div>
  </div>
</div>
    </form>
    <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
