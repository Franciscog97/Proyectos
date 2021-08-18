<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos.Master" AutoEventWireup="true" CodeBehind="Origen.aspx.cs" Inherits="ReservaBoletos.Origen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mostrar_datos" runat="server">
        <div class="site-section">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                	<div class="inner">                    
					<asp:GridView runat="server" ID="grd_origen" AutoGenerateColumns="false" CssClass="table table-dark" Width="1500px" >
                    <Columns>
                         <asp:BoundField DataField="ori_nombre_origen" HeaderText="Origen"/>
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnk_view" runat="server" CommandArgument='<%#Eval("ori_id") %>' OnClick="lnk_view_Click">Seleccione</asp:LinkButton>
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
                       
                        <asp:HiddenField runat="server" ID="hf_origen_ID"/>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Origen</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_origen"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_1" ForeColor="Red" ControlToValidate="tbx_origen" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                         <asp:Button runat="server" ID="btn_guardar_origen" Text="Guardar" OnClick="btn_guardar_origen_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>

                        <asp:Button runat="server" ID="btn_modificar_origen" Text="Modificar" OnClick="btn_modificar_origen_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        <asp:Button runat="server" ID="btn_eliminar_origen" Text="Eliminar"   OnClick="btn_eliminar_origen_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        
                            </br>
					 </ContentTemplate>
                    </asp:UpdatePanel>

</asp:Content>
