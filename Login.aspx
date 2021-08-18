<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReservaBoletos.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
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
    <section>
    <form method="post" runat="server">
        <asp:UpdatePanel runat="server">
                         <ContentTemplate>
	<div id="booking" class="section">

		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
							<div class="form-group">
								<div class="form-checkbox">
									<label for="roundtrip">
										<input type="radio" id="roundtrip" name="flight-type">
										<span></span>Roundtrip
									</label>
									<label for="one-way">
										<asp:RadioButton runat="server" ID="rb_ida" />
										<span></span>Solo Ida
									</label>
									<label for="multi-city">
                                        <asp:RadioButton runat="server" ID="rb_ida_vuelta" />
										
										<span></span>Ida y Vuelta
									</label>
								</div>
							</div>

                            <!--FORMULARIO PARA BUSCAR VUELOS-->

                            
							<div class="row">
								<div class="col-md-6">
									<div class="form-group" runat="server">
                                        <asp:ScriptManager runat="server"></asp:ScriptManager>
                                        <asp:UpdatePanel runat="server">
                                        <ContentTemplate>
										<span class="form-label">Origen</span>
                                        <asp:TextBox runat="server" CssClass="form-control" Text="Ciudad o Aeropuerto" ID="tbx_origen"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rvf_origen" ErrorMessage="Requerido" ForeColor="Red" ValidationGroup="busqueda" ControlToValidate="tbx_origen" />
                                        </ContentTemplate>
                                         </asp:UpdatePanel>   
								</div>
                                </div>
                                


								<div class="col-md-6">
									<div class="form-group" runat="server">
                                        <asp:UpdatePanel runat="server">
                                        <ContentTemplate>
										<span class="form-label">Destino</span>
                                        <asp:TextBox runat="server" CssClass="form-control" Text="Ciudad o Aeropuerto" ID="tbx_destino"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rvf_destino" ErrorMessage="Requerido" ForeColor="Red" ValidationGroup="busqueda" ControlToValidate="tbx_destino" />
                                        </ContentTemplate>
                                         </asp:UpdatePanel>   
								</div>
								</div>

							    </div>
                               

                            <!---->
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Fecha de Salida</span>
                                        <asp:TextBox runat="server" CssClass="form-control" TextMode="Date" ID="tbx_ida"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" ForeColor="Red" ValidationGroup="busqueda" ControlToValidate="tbx_ida" />
                                        <asp:Label runat="server" ID="mensaje"/>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Fecha de Regreso</span>
										<asp:TextBox runat="server" CssClass="form-control" TextMode="Date" ID="tbx_regreso"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" ForeColor="Red" ValidationGroup="busqueda" ControlToValidate="tbx_regreso" />
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Adultos (18+)</span>
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddl_adultos">
										<asp:ListItem >1</asp:ListItem>
                                        <asp:ListItem >2</asp:ListItem>
                                        <asp:ListItem >3</asp:ListItem>
                                        <asp:ListItem >4</asp:ListItem>
                                        </asp:DropDownList>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Ninos (0-17)</span>
										<select class="form-control">
											<option>0</option>
											<option>1</option>
											<option>2</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Clase</span>
										<select class="form-control">
											<option>Economica</option>
											<option>Business</option>
											<option>Primera Clase</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-btn">
                                        <asp:Button runat="server" Text="Mostrar Vuelos" CssClass="submit-btn" ID="btn_buscar" OnClick="btn_buscar_Click" ValidationGroup="busqueda" />
									</div>
								</div>
                                <section id="two">
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
				<div class="inner">
					<asp:GridView runat="server" ID="grd_vuelo" AutoGenerateColumns="false" >
                    <Columns>
                         <asp:BoundField DataField="rut_fecha_salida" HeaderText="Fecha Salida"/>
                         <asp:BoundField DataField="rut_hora_salida" HeaderText="Hora Salida"/>
                         <asp:BoundField DataField="rut_fecha_arribo" HeaderText="Fecha Arribo"/>
                         <asp:BoundField DataField="rut_hora_arribo" HeaderText="Hora Arribo"/>
                         <asp:BoundField DataField="rut_estado" HeaderText="Estado de Vuelo"/>
                         <asp:BoundField DataField="ori_nombre_origen" HeaderText="Origen Codigo"/>
                         <asp:BoundField DataField="dst_nombre_destino" HeaderText="Destino Codigo"/>                          
                    </Columns>         
                        
					</asp:GridView>
				</div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
			</section>
                      </div>

					</div>
				</div>
			</div>
		</div>
	</div>
        <!--Ventana MOdal-->
     </form>
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
    </div>
  </div>
</div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>