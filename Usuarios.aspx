<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="ReservaBoletos.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mostrar_datos" runat="server">
     <div class="site-section">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                	<div class="inner">                    
					<asp:GridView runat="server" ID="grd_usuario" AutoGenerateColumns="false" CssClass="table table-dark" Width="1500px" >
                    <Columns>
                        <asp:BoundField DataField="cl_nombre" HeaderText="Nombre Cliente"/>
                        <asp:BoundField DataField="cl_apellido" HeaderText="Apellido Cliente"/>
                        <asp:BoundField DataField="cl_tipo_documento" HeaderText="Tipo de Documento"/>
                        <asp:BoundField DataField="cl_documento" HeaderText="Documento"/>
                        <asp:BoundField DataField="cl_direccion" HeaderText="Direccion"/>
                        <asp:BoundField DataField="cl_correo" HeaderText="Correo"/>
                        <asp:BoundField DataField="cl_telefono" HeaderText="Telefono"/>
                        <asp:BoundField DataField="cl_contrasena" HeaderText="Contrasena"/>
                        <asp:BoundField DataField="cl_tipo_usuario" HeaderText="Tipo Usuario"/>
                       
                    </Columns>                        
					</asp:GridView>
				</div>
            </ContentTemplate>
        </asp:UpdatePanel>
     </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="registro_datos" runat="server">

       <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                       
                        <asp:HiddenField runat="server" ID="hf_usuario_ID"/>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Nombre Cliente</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_nombre"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_1" ForeColor="Red" ControlToValidate="tbx_nombre" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                        
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Apellido Cliente</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_apellido"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="tbx_apellido" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>

                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Tipo Documento</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_tipo_documento"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="tbx_tipo_documento" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Documento</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_documento"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="tbx_documento" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>

                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Direccion</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_direccion"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="tbx_direccion" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Correo</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_correo"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="tbx_correo" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Telefono</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_telefono"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="tbx_telefono" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                        <div class="form-group">
                        <asp:DropDownList runat="server" ID="ddl_tipo_usuario"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="ddl_tipo_usuario" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                         </div>





    
                        
                       </br>
					 </ContentTemplate>
       </asp:UpdatePanel>
</asp:Content>
