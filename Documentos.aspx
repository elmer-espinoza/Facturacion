<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Documentos.aspx.cs" Inherits="Facturacion.Documentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <strong><span style="font-size: large">Consulta de Facturas </span></strong>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="Factura_id" DataSourceID="sdsFacturas" ForeColor="#333333" GridLines="None" PageSize="50" Width="1098px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Factura_id" HeaderText="Factura_id" ReadOnly="True" SortExpression="Factura_id" />
                <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Razon_social" HeaderText="Razon_social" SortExpression="Razon_social" />
                <asp:BoundField DataField="Ruc" HeaderText="Ruc" SortExpression="Ruc" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" Visible="False" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Total_Valor_Venta" HeaderText="Total_Valor_Venta" SortExpression="Total_Valor_Venta" />
                <asp:BoundField DataField="Total_Impuestos" HeaderText="Total_Impuestos" SortExpression="Total_Impuestos" />
                <asp:BoundField DataField="Total_Factura" HeaderText="Total_Factura" SortExpression="Total_Factura" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdsFacturas" runat="server" ConnectionString="<%$ ConnectionStrings:FacturaConnectionString %>" SelectCommand="SELECT Factura.Factura_id, Factura.Fecha, Factura.Razon_social, Factura.Ruc, Cliente.Direccion, Moneda.Descripcion, Factura.Total_Valor_Venta, Factura.Total_Impuestos, Factura.Total_Factura FROM Cliente INNER JOIN Factura ON Cliente.Cliente_id = Factura.Cliente_id INNER JOIN Moneda ON Factura.Moneda_id = Moneda.Moneda_id"></asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
