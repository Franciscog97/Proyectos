<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultado_Vuelos.aspx.cs" Inherits="ReservaBoletos.Resultado_Vuelos" %>

<!DOCTYPE HTML>
<!--
	Full Motion by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Full Motion</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
        <!--Estilos2-->
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
	<body id="top">
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

			<!-- Banner -->
			<!--
				To use a video as your background, set data-video to the name of your video without
				its extension (eg. images/banner). Your video must be available in both .mp4 and .webm
				formats to work correctly.
			-->
				<section id="banner" data-video="images/banner">
					<div class="inner">
						<header>
							<h1>AEROLINEA</h1>
							<p>Viajar nunca a sido mas facil <br />
							
						</header>
						<a href="#main" class="more">Learn More</a>
					</div>
				</section>
        <!--Gridview Busqueda-->
        <br/><br/>
        <form runat="server" method="post" style="background-color:#2e2c2c" >
                <asp:ScriptManager runat="server" ID="sm_datos"></asp:ScriptManager>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
				<div class="inner">
					<asp:GridView runat="server" ID="grd_vuelo" AutoGenerateColumns="false" CssClass="table table-dark "  >
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
                 
          <!--<img src="images/Pagos.JPG" />-->
      </div>    
			<!-- Main -->
				<div id="main">
					<div class="inner">

					<!-- Boxes -->
						<div class="thumbnails">

							<div class="box" style="background-color:white">
								<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="images/pic1.jpg" alt="" /></a>
								<div class="inner">
									<h3>Vuelos a Madrid</h3>
									<p>Partiendo desde Quito por Air Europa.</p>
                                    <p>USD 724</p>
                                    <p>Paga Hasta 36 meses!</p>
									<a href="#" class="button fit" data-poptrox="youtube,800x400">Comprar</a>
								</div>
							</div>

							<div class="box" style="background-color:white">
								<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="images/pic2.jpg" alt="" /></a>
								<div class="inner">
									<h3>Vuelos a Madrid</h3>
									<p>Partiendo desde Guayaquil por Air Europa.</p>
                                    <p>USD 874</p>
                                    <p>Paga Hasta 36 meses!</p>
									<a href="#" class="button style2 fit" data-poptrox="youtube,800x400">Comprar</a>
								</div>
							</div>

							<div class="box" style="background-color:white">
								<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="images/pic3.jpg" alt="" /></a>
								<div class="inner">
									<h3>Vuelos a Barcelona</h3>
									<p>Partiendo desde Guayaquil por Air Europa.</p>
                                    <p>USD 684</p>
                                    <p>Paga Hasta 36 meses!</p>
									<a href="#" class="button style3 fit" data-poptrox="youtube,800x400">Comprar</a>
								</div>
							</div>

						</div>

					</div>
				</div>
         
        
			<!-- Footer -->
				<footer id="footer">
					<div class="inner">
						<h2>Etiam veroeros lorem</h2>
						<p>Pellentesque eleifend malesuada efficitur. Curabitur volutpat dui mi, ac imperdiet dolor tincidunt nec. Ut erat lectus, dictum sit amet lectus a, aliquet rutrum mauris. Etiam nec lectus hendrerit, consectetur risus viverra, iaculis orci. Phasellus eu nibh ut mi luctus auctor. Donec sit amet dolor in diam feugiat venenatis. </p>

						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>
						<p class="copyright">&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a href="http://coverr.co/">Coverr</a>.</p>
					</div>
				</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
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
	                	<label for="firstname" style="color:black">Nombre</label>
	                  <asp:TextBox runat="server" ID="tbx_nombre" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_nombre" ValidationGroup="Factura"  ErrorMessage="*Requerido" ForeColor="Red"/> 
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="lastname" style="color:black">Apellido</label>
	                   <asp:TextBox runat="server" ID="tbx_apellido" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_apellido" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red" />
	                </div>
                </div>
                      <div class="col-md-6">
	                <div class="form-group">
	                	<label for="lastname" style="color:black">Tipo Documento</label>
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
	                	<label for="towncity" style="color:black">Cedula</label>
	                   <asp:TextBox runat="server" ID="tbx_cedula" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_cedula" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red" />
	                </div>
		            </div>
		                
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="streetaddress" style="color:black">Direccion</label>
                            <asp:TextBox runat="server" ID="tbx_direccion" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_direccion" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red"/>
	                </div>
		            </div>
		            
		        
                      <div class="col-md-6">
		            	<div class="form-group">
		            		<label for="country" style="color:black">Contrasena</label>
		            		<div class="select-wrap">
		                  <div class="icon"><span class=""></span></div>
                                <asp:TextBox runat="server" ID="tbx_contrasena" TextMode="Password" CssClass="form-control"/>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_contrasena" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red"/>
		                 
		                </div>
		            	</div>
		            </div>
		           <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress" style="color:black">Correo</label>
	                   <asp:TextBox runat="server" ID="tbx_correo" CssClass="form-control"></asp:TextBox>                   
                        <asp:RegularExpressionValidator ID="rev_email" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbx_correo" ErrorMessage="*Correo no Valido" ForeColor="Red"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx_correo" ValidationGroup="Factura" ErrorMessage="*Requerido" ForeColor="Red" />
	                </div>
                       
                  </div>
                      <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress" style="color:black">Telefono</label>
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
     
    </div>
  </div>
</div>

	</body>

</html>
