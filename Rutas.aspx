<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos.Master" AutoEventWireup="true" CodeBehind="Rutas.aspx.cs" Inherits="ReservaBoletos.Rutas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mostrar_datos" runat="server">
      <div class="site-section">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                	<div class="inner">                    
					<asp:GridView runat="server" ID="grd_ruta" AutoGenerateColumns="false" CssClass="table table-dark" Width="1500px" >
                    <Columns>
                         <asp:BoundField DataField="rut_fecha_salida" HeaderText="Fecha de Salida"/>
                         <asp:BoundField DataField="rut_hora_salida" HeaderText="Hora de Salida"/>
                         <asp:BoundField DataField="rut_fecha_arribo" HeaderText="Fecha de Arribo"/>
                        <asp:BoundField DataField="rut_hora_arribo" HeaderText="Hora de Arribo"/>
                        <asp:BoundField DataField="rut_estado" HeaderText="Estado"/>
                        <asp:BoundField DataField="ori_nombre_origen" HeaderText="Origen"/>
                        <asp:BoundField DataField="dst_nombre_destino" HeaderText="Destino"/>
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnk_view" runat="server" CommandArgument='<%#Eval("rut_id") %>' OnClick="lnk_view_Click">Seleccione</asp:LinkButton>
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
                       
                        <asp:HiddenField runat="server" ID="hf_Ruta_ID"/>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Fecha Salida</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_fecha_salida" TextMode="Date"   CssClass="form-control" Width="400px">
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_1" ForeColor="Red" ControlToValidate="tbx_fecha_salida" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>

                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Hora Salida</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_hora_salida" TextMode="Time"   CssClass="form-control" Width="400px" >
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="tbx_hora_salida" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>
                         <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Fecha Arribo</asp:Label>
                   
                        <asp:TextBox runat="server" ID="tbx_fecha_arribo" TextMode="Date"   CssClass="form-control" Width="400px">
                        
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="tbx_fecha_arribo" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 
                        </div>

                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Hora Arribo</asp:Label >

                        <asp:TextBox runat="server" ID="tbx_hora_arribo" TextMode="Time"   CssClass="form-control" Width="400px">

                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="tbx_hora_arribo" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                        </div>
                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Estado Ruta</asp:Label>
                        <asp:TextBox runat="server" ID="tbx_estado" CssClass="form-control">

                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="tbx_estado" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                         </div>
                          <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Origen</asp:Label>
                        <asp:DropDownList runat="server" ID="ddl_origen" CssClass="form-control" ValidationGroup="empresa">

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="ddl_origen" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                         </div>


                        <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Destino</asp:Label>
                        <asp:DropDownList runat="server" ID="ddl_destino" CssClass="form-control" ValidationGroup="empresa">

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="ddl_destino" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                         </div>

                         <div class="form-group">
                        <asp:Label runat="server" Font-Italic="true" Font-Size="X-Large">Aerolinea</asp:Label>
                        <asp:DropDownList runat="server" ID="ddl_aerolinea" CssClass="form-control" ValidationGroup="empresa">

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="ddl_aerolinea" ErrorMessage="*Requerido" ValidationGroup="empresa" runat="server"></asp:RequiredFieldValidator> 

                         </div>


                         <div class="form-group">
                        <asp:FileUpload runat="server" ID="fup_imagen" Width="200px" CssClass="form-group"/>
                             </div>



                         <asp:Button runat="server" ID="btn_guardar_ruta" Text="Guardar" OnClick="btn_guardar_ruta_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>

                        <asp:Button runat="server" ID="btn_modificar_ruta" Text="Modificar" OnClick="btn_modificar_ruta_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        <asp:Button runat="server" ID="btn_eliminar_ruta" Text="Eliminar" OnClick="btn_eliminar_ruta_Click" CssClass="btn btn-dark" ValidationGroup="empresa" ></asp:Button>
                        
                            <br>
                        
                            </br>
					 </ContentTemplate>
                    </asp:UpdatePanel>
</asp:Content>
