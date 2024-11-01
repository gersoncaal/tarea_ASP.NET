<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="prt_web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        /* Color para los labels */
        .badge {
            color: #333; /* Cambia el color del texto */
            font-weight: bold; /* Opcional: hacer el texto en negrita */
        }
        
        /* Color del texto en los campos de entrada */
        .form-control {
            color: #555; /* Cambia el color del texto */
            background-color: #f8f9fa; /* Color de fondo del campo */
        }

        /* Estilo para el GridView */
        .table-secondary {
            color: #333;
            background-color: #e9ecef;
        }
        
        /* Ajustes para los botones */
        .btn-primary, .btn-success, .btn-info, .btn-danger {
            font-size: 14px;
        }
    </style>

    <h1>Formulario de Empleados</h1>
    <asp:Label ID="Lbl_codigo" runat="server" Text="Codigo" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder="Eje: E001"></asp:TextBox>
    <asp:Label ID="Lbl_nombres" runat="server" Text="Nombres" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control" placeholder="Eje: Nombre1 Nombre2"></asp:TextBox>
    <asp:Label ID="Lbl_apellidos" runat="server" Text="Apellidos" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" placeholder="Eje: Apellido1 Apellido2"></asp:TextBox>
    <asp:Label ID="Lbl_direccion" runat="server" Text="Direccion" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control" placeholder="Eje: #calle avenida lugar"></asp:TextBox>
    <asp:Label ID="Lbl_telefono" runat="server" Text="Telefono" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" placeholder="Eje: 0000-0000" TextMode="Number"></asp:TextBox>
    <asp:Label ID="lbl_fn" runat="server" Text="Fecha Nacimiento" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" placeholder=" yyyy-mm-dd" TextMode="Date"></asp:TextBox>
    <asp:Label ID="Lbl_puesto" runat="server" Text="Puesto" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:DropDownList ID="drop_puesto" runat="server" CssClass="form-control"></asp:DropDownList>
    <asp:Button ID="btn_crear" runat="server" Text="Crear" CssClass="btn btn-primary" OnClick="btn_crear_Click"/>
    <asp:Button ID="btn_actualizar" runat="server" Text="Actualizar" CssClass="btn btn-success"/>
    <asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" CssClass="table-secondary" DataKeyNames="id, id_puesto">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_select" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" CssClass="btn btn-info"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_borrar" runat="server" CausesValidation="False" CommandName="Delete" Text="Borrar" CssClass="btn btn-danger"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="codigo" HeaderText="Codigo" />
            <asp:BoundField DataField="nombres" HeaderText="Nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
            <asp:BoundField DataField="direccion" HeaderText="Direccion" />
            <asp:BoundField DataField="telefono" HeaderText="Telefono" />
            <asp:BoundField DataField="fecha_nacimiento" HeaderText="Nacimiento" />
            <asp:BoundField DataField="puesto" HeaderText="Puesto" />
        </Columns>
    </asp:GridView>
</asp:Content>
