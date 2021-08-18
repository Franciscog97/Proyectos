<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vuelos.aspx.cs" Inherits="ReservaBoletos.Vuelos" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Modist - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min2.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min2.css">
    <link rel="stylesheet" href="css/owl.theme.default.min2.css">
    <link rel="stylesheet" href="css/magnific-popup2.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min2.css"> 

    <link rel="stylesheet" href="css/bootstrap-datepicker2.css">
    <link rel="stylesheet" href="css/jquery.timepicker2.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon2.css">
    <link rel="stylesheet" href="css/style2.css">
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
	         <li class="nav-item"><a href="about.html" class="nav-link">Seguros</a></li>
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
                <div class="col-lg-12 ftco-animate text-center">
              <br/><br/>
            <h1 class="mb-0 bread">Resultado de Vuelos</h1>
          </div>
		 <form runat="server" method="post" class="ftco-section bg-light">
        <div>
		<section id="two">
                <asp:ScriptManager runat="server" ID="sm_datos"></asp:ScriptManager>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
				<div class="inner">
					<asp:GridView runat="server" ID="grd_vuelo" AutoGenerateColumns="false" CssClass="table table-dark"  >
                    <Columns>
                         <asp:BoundField DataField="rut_fecha_salida" HeaderText="Fecha Ida" />
                         <asp:BoundField DataField="rut_hora_salida" HeaderText="Hora Salida"/>
                        <asp:BoundField DataField="ori_nombre_origen" HeaderText="Origen"/>
                         <asp:BoundField DataField="rut_fecha_arribo" HeaderText="Fecha Vuelta"/>
                         <asp:BoundField DataField="rut_hora_arribo" HeaderText="Hora Arribo"/>
                         <asp:BoundField DataField="dst_nombre_destino" HeaderText="Destino"/> 
                        <asp:BoundField DataField="avi_compania" HeaderText="Aerolinea"/> 
                        <asp:BoundField DataField="dvi_costo_boleto" HeaderText="Precio"/> 
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:LinkButton ID="lnk_view" runat="server" CommandArgument='<%#Eval("dvi_costo_boleto") %>'  OnClick="lnk_view_Click">Seleccionar</asp:LinkButton>

                             </ItemTemplate>
                         </asp:TemplateField>
                      
                    </Columns>         

					    <RowStyle Width="2000px" />

					</asp:GridView>
				</div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
            <br/>  <br/>  <br/>
              <div class="hero-bread ">
                 
          <img src="images/Pagos.JPG" />
      </div>
			</section>
             </div>
   <br/><bt/>
      <div class="row justify-content-end">
    			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
                         <asp:UpdatePanel runat="server">
                                <ContentTemplate>
    					<h3>Total Compra</h3>
    					<p class="d-flex">
    						<span>Subtotal</span>
    						<asp:label runat="server" ID="lbl_subtotal"/> 
    					</p>
    					<p class="d-flex">
    						<span>Aranceles</span>
    						<span>$0.00</span>
    					</p>
                                    <span>Adultos</span>
                                    <asp:DropDownList runat="server" ID="ddl_cantidad" CssClass="form-control" Width="100px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                    </asp:DropDownList>
    					<hr>
    					<p class="d-flex total-price">
    						<span>Total Precio</span>
                            <asp:label runat="server" ID="lbl_precio"/> 
                            </p>
                              </ContentTemplate>
                                </asp:UpdatePanel>
    					
    				</div>
    				<p class="text-center"><a href="Prueba.aspx" class="btn btn-primary py-3 px-4">Hacer Checkout</a></p>
    			</div>
          </div>
   

		<section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-center">
        <div class="container">
          <div class="row d-flex justify-content-center py-5">
            <div class="col-md-7 text-center heading-section ftco-animate">
            	<h1 class="big">Subscribe</h1>
              <h2>Suscribete Para Recibir Ofertas de Viaje</h2>
              <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-8">
                  <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                      <input type="text" class="form-control" placeholder="Enter email address">
                      <input type="submit" value="Subscribe" class="submit px-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

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
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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

  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
    
      <!--Ventana Modal-->
      
      <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">

        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>


      </div>
      <div class="modal-body">
          <section>
        
                            
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
	          </form><!-- END -->
    </section> <!-- .section -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


  </body>
</html>
