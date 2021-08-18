<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos.Master" AutoEventWireup="true" CodeBehind="Aviones.aspx.cs" Inherits="ReservaBoletos.Aviones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mostrar_datos" runat="server">
     <div class="site-section">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                	<div class="inner">                    
					<asp:GridView runat="server" ID="grd_aviones" AutoGenerateColumns="false" CssClass="table table-dark" Width="1500px" >
                    <Columns>
                         <asp:BoundField DataField="avi_compania" HeaderText="Compania"/>
                         <asp:BoundField DataField="avi_unidad_numero" HeaderText="Numero de Unidad"/>
                         <asp:BoundField DataField="avi_codigo" HeaderText="Codigo"/>
                        <asp:BoundField DataField="avi_capacidad" HeaderText="Capacidad"/>
                        <asp:BoundField DataField="avi_descripcion" HeaderText="Descripcion"/>
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnk_view" runat="server" CommandArgument='<%#Eval("avi_id") %>' OnClick="lnk_view_Click">Seleccione</asp:LinkButton>
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
                       
                        <asp:HiddenField runat="server" ID="hf_Avion_ID"/>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Compania</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_compania"   CssClass="form-control" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_1" ForeColor="Red" ControlToValidate="tbx_compania" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Numero de Unidad</asp:Label >

                        <asp:TextBox runat="server" ID="tbx_unidad" CssClass="form-control">

                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="tbx_unidad" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                        </div>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Codigo</asp:Label>
                        <asp:TextBox runat="server" ID="tbx_codigo" CssClass="form-control">

                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="tbx_codigo" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                            </div>

                         <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Capacidad</asp:Label>
                        <asp:TextBox runat="server" ID="tbx_capacidad" CssClass="form-control">

                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="tbx_capacidad" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                            </div>
                         <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Descripcion</asp:Label>
                        <asp:TextBox runat="server" ID="tbx_descripcion" CssClass="form-control">

                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="tbx_descripcion" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                            </div>
                         <asp:Button runat="server" ID="btn_guardar_avion" Text="Guardar" OnClick="btn_guardar_avion_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>

                        <asp:Button runat="server" ID="btn_modificar_avion" Text="Modificar" OnClick="btn_modificar_avion_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        <asp:Button runat="server" ID="btn_eliminar_avion" Text="Eliminar" OnClick="btn_eliminar_avion_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        
                            </br>
					 </ContentTemplate>
                    </asp:UpdatePanel>
</asp:Content>
