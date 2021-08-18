<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos.Master" AutoEventWireup="true" CodeBehind="Destino.aspx.cs" Inherits="ReservaBoletos.Destino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mostrar_datos" runat="server">
      <div class="site-section">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                	<div class="inner">                    
					<asp:GridView runat="server" ID="grd_destino" AutoGenerateColumns="false" CssClass="table table-dark" Width="1500px" >
                    <Columns>
                         <asp:BoundField DataField="dst_nombre_destino" HeaderText="Destino"/>
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnk_view" runat="server" CommandArgument='<%#Eval("dst_id") %>' OnClick="lnk_view_Click">Seleccione</asp:LinkButton>
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
                       
                        <asp:HiddenField runat="server" ID="hf_destino_ID"/>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Destino</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_destino"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_1" ForeColor="Red" ControlToValidate="tbx_destino" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                         <asp:Button runat="server" ID="btn_guardar_destino" Text="Guardar" OnClick="btn_guardar_destino_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>

                        <asp:Button runat="server" ID="btn_modificar_destino" Text="Modificar" OnClick="btn_modificar_destino_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        <asp:Button runat="server" ID="btn_eliminar_destino" Text="Eliminar"   OnClick="btn_eliminar_destino_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        
                            </br>
					 </ContentTemplate>
                    </asp:UpdatePanel>
</asp:Content>
