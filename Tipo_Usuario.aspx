<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos.Master" AutoEventWireup="true" CodeBehind="Tipo_Usuario.aspx.cs" Inherits="ReservaBoletos.Tipo_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mostrar_datos" runat="server">
      <div class="site-section">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                	<div class="inner">                    
					<asp:GridView runat="server" ID="grd_tipo" AutoGenerateColumns="false" CssClass="table table-dark" Width="1500px" >
                    <Columns>
                         <asp:BoundField DataField="tpu_tipo" HeaderText="Tipo"/>
                        <asp:BoundField DataField="tpu_descripcion" HeaderText="Descripcion"/>
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnk_view" runat="server" CommandArgument='<%#Eval("tpu_id") %>' OnClick="lnk_view_Click">Seleccione</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                       
                        <asp:HiddenField runat="server" ID="hf_tipo_ID"/>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Tipo de Usuario</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_tipo"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="tbx_tipo" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>

                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Descripcion</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_descripcion"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_1" ForeColor="Red" ControlToValidate="tbx_descripcion" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                        <asp:Button runat="server" ID="btn_guardar_tipo" Text="Guardar" OnClick="btn_guardar_tipo_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        <asp:Button runat="server" ID="btn_modificar_tipo" Text="Modificar" OnClick="btn_modificar_tipo_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        <asp:Button runat="server" ID="btn_eliminar_tipo" Text="Eliminar"   OnClick="btn_eliminar_tipo_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        
                            </br>
					 </ContentTemplate>
                    </asp:UpdatePanel>
</asp:Content>
